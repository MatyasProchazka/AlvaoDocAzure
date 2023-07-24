using AlvaoDocAzure.Models;
using Microsoft.Extensions.Configuration;
using MongoDB.Bson;
using MongoDB.Driver;
using Microsoft.CognitiveServices.Speech;
using Microsoft.CognitiveServices.Speech.Audio;


namespace AlvaoDocAzure
{
    internal class DatabaseMongoDB
    {
        private string? connectionString;
        private const string databaseName = "AlvaoDocumentation";
        private string collectionName;
        private readonly MongoClient client;
        private readonly IMongoDatabase database;
        private readonly Chatbot chatBot;
        private readonly IConfigurationRoot? configuration;
        private readonly ArticleParser parser;
        private string language;
        private string? projectDirectory;

        public DatabaseMongoDB(string collectionName) 
        {
            configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();
            connectionString = configuration.GetConnectionString("MongoDBConnectionString");
            client = new MongoClient(connectionString);
            database = client.GetDatabase(databaseName);
            chatBot = new Chatbot();
            parser = new ArticleParser();
            this.collectionName = collectionName;
            string? workingDirectory = Environment.CurrentDirectory;
#pragma warning disable CS8602 // Dereference of a possibly null reference.
            projectDirectory = Directory.GetParent(workingDirectory).Parent.Parent.Parent.FullName;
#pragma warning restore CS8602 // Dereference of a possibly null reference.

            if (collectionName.Contains("En"))
            {
                this.language = "en";
            }
            else if (collectionName.Contains("Cs"))
            {
                this.language = "cs";
            }
            else
            {
                throw new Exception("Incorrect folder name. Provide a file as an example shows: Doc<language><version>");
            }
        }

        public async Task CreateVectorIndexAsync()
        {
            try
            {
                BsonDocumentCommand<BsonDocument> command = new BsonDocumentCommand<BsonDocument>(
                        BsonDocument.Parse($@"
                            {{ 
                              createIndexes: '{collectionName}', 
                              indexes: [
                                {{ 
                                    name: 'vectorSearchIndex', 
                                    key: {{ 
                                        Vectors: 'cosmosSearch' 
                                    }}, 
                                    cosmosSearchOptions: {{
                                        kind: 'vector-ivf', 
                                        numLists: 2, 
                                        similarity: 'COS', 
                                        dimensions:  1536
                                    }} 
                                   }}
                                ] 
                            }}"
                ));
                BsonDocument result = await database.RunCommandAsync(command);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        public async Task InsertArticlesAsync()
        {
            try
            {
                List<string> files = FileManager.GetAllAspxFiles($@"{projectDirectory}/Documentations/{collectionName}");
                List<Article> articles = new List<Article>();

                parser.Files = files;

                ////parse the articles and store them
                articles = parser.Parse();
                Console.WriteLine("Total articles to process:" + articles.Count);
                Console.WriteLine("Estimated time:" + GetEstimatedTimeInsertion(articles) + " minutes");
                Console.WriteLine("Creating");
                List<Task<VectorizedArticle>> vectorsTasks = new List<Task<VectorizedArticle>>();
                int i = 0;
                int j = 1;
                foreach (var article in articles)
                {
                    if (i < 50)
                    {
                        vectorsTasks.Add(chatBot.CreateEmbeddingsAsync(article, collectionName));
                        i++;
                    }
                    else
                    {
                        await Task.Delay(10000);
                        Console.WriteLine($"Iteration number: {j}");
                        i = 0;
                        j++;
                    }
                }

                var vectors = await Task.WhenAll(vectorsTasks);
                Console.WriteLine("Vectors created");
                await database.GetCollection<VectorizedArticle>(collectionName).InsertManyAsync(vectors);
                Console.WriteLine("Vectors inserted");
                await CreateVectorIndexAsync();
            }
            catch (Exception ex) 
            {
                Console.WriteLine(ex);            
            }
        }

        public async Task ReadFromDatabaseAsync()
        {
           await GetNumberOfDocumentsAsync();

            var results = await database.GetCollection<VectorizedArticle>(collectionName).FindAsync(_ => true);

            foreach (var result in results.ToList())
            {
                Console.WriteLine($"Header: {result.Header}\nContent: {result.Content}\nLink: {result.Link}");
            }
        }

        public async Task<List<BsonDocument>> MakeVectorSearchAsync(string question)
        {
            try
            {
                string vectorizedQuestion = await chatBot.CreateVectorEmbeddingsAsync(question);

                BsonDocument[] pipeline = new BsonDocument[]
                    {
                    BsonDocument.Parse($"{{$search: {{cosmosSearch: {{ vector: {vectorizedQuestion}, path: 'Vectors', k: 3}}, returnStoredSource:true}}}}"),
                    };


                // Return results, combine into a single string
                List<BsonDocument> bsonDocuments = await database.GetCollection<BsonDocument>(collectionName).Aggregate<BsonDocument>(pipeline).ToListAsync();
                return bsonDocuments;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return new List<BsonDocument>();
            }
            
        }

        public async Task DropCollectionAsync ()
        {
            BsonDocumentCommand<BsonDocument> commandDrop = new BsonDocumentCommand<BsonDocument>(
                        BsonDocument.Parse($"{{drop: '{collectionName}'}}"));
            var result = await client.GetDatabase(databaseName).RunCommandAsync(commandDrop);
            await Console.Out.WriteLineAsync(result.AsString);
        }

        public async Task GetNumberOfDocumentsAsync()
        {
            var filter = Builders<VectorizedArticle>.Filter.Empty;
            var number = await database.GetCollection<VectorizedArticle>(collectionName).CountDocumentsAsync(filter);
            Console.WriteLine($"Number of documents in collection: {number}");
        }

        private int GetEstimatedTimeInsertion(List<Article> articles)
        {
            int articlesCount = articles.Count();
            var estimatedTime = articlesCount / 240;
            return estimatedTime;
        }

        public async Task AnswerQuestionAsync()
        {
            string previousAnswer = "";
            string answer = "";
            bool askQuestion = true;
            string? question = "";
            bool useOpenAI = false;
            bool useVoice = false;

            string speechKey = "92eb8fd7302f4e1d83c568eabc5d1d83";
            string speechRegion = "westeurope";

            var speechConfig = SpeechConfig.FromSubscription(speechKey, speechRegion);
            speechConfig.SpeechRecognitionLanguage = "en-US";

            using var audioConfig = AudioConfig.FromDefaultMicrophoneInput();
            using var speechRecognizer = new SpeechRecognizer(speechConfig, audioConfig);

            if (language == "en")
            {
                Console.WriteLine("Do you want to use OpenAi completions? (y/n)");
                string? useCompletionsQuestion = Console.ReadLine();
                if (useCompletionsQuestion != null && useCompletionsQuestion == "y")
                {
                    useOpenAI = true;
                }
                Console.WriteLine("Do you want to insert the question using your voice? (y/n)");
                string? useVoiceQuestion = Console.ReadLine();
                if (useVoiceQuestion != null && useVoiceQuestion == "y")
                {
                    useVoice = true;
                }
                await Console.Out.WriteLineAsync("To exit the chat, write 'exit'. Press any key to continue to the chat.");
                Console.ReadKey();
            }
            else if (language == "cs")
            {
                Console.WriteLine("Chcete použít OpenAI Completions? (a/n)");
                string? useCompletionsQuestion = Console.ReadLine();
                if (useCompletionsQuestion != null && useCompletionsQuestion == "a")
                {
                    useOpenAI = true;
                }
                Console.WriteLine("Chcete vložit otázku použitím vašeho hlasu? (a/n)");
                string? useVoiceQuestion = Console.ReadLine();
                if (useVoiceQuestion != null && useVoiceQuestion == "a")
                {
                    useVoice = true;
                }
                await Console.Out.WriteLineAsync("Pro odejití z chatu napište 'exit'. Press any key to continue to the chat.");
                Console.ReadKey();
            }
            Console.Clear();
            while (askQuestion)
            {   
                if (useVoice)
                {
                    if (language == "en") { Console.WriteLine("Speak into your microphone."); }
                    if (language == "cs") { Console.WriteLine("Mluvte do mikrofonu."); }
                    var speechRecognitionResult = await speechRecognizer.RecognizeOnceAsync();
                    question = OutputSpeechRecognitionResult(speechRecognitionResult);
                    Console.WriteLine(question);
                }
                else
                {
                    if (language == "en") { Console.WriteLine("Question:"); }
                    if (language == "cs") { Console.WriteLine("Otázka:"); }
                    question = Console.ReadLine();
                }
                
                if (question != null && question != "exit")
                {

                    try
                    {
                        var answers = await MakeVectorSearchAsync(question);

                        if (useOpenAI)
                        {
                            if (language == "en")
                            {
                                answer = await chatBot.CreateAnswerBasedOnContextEnAsync(answers, question, previousAnswer);
                            }
                            else if (language == "cs")
                            {
                                answer = await chatBot.CreateAnswerBasedOnContextCsAsync(answers, question, previousAnswer);
                            }
                            Console.WriteLine("------------------");
                            Console.WriteLine(answer);
                            previousAnswer = answer;
                        }
                        else
                        {
                            Console.WriteLine("------------------");
                            Console.WriteLine(question);
                            Console.WriteLine("------------------");
                            foreach (var singleAnswer in answers)
                            {
                                Console.WriteLine(singleAnswer["Header"]);
                                Console.WriteLine(singleAnswer["Content"]);
                                Console.WriteLine(singleAnswer["Link"]);
                                Console.WriteLine("------------------");
                            }
                        }
                        if (useVoice) { Console.ReadKey(); }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                }
                else
                {
                    askQuestion = false;
                }
            }
        }
        private string OutputSpeechRecognitionResult(SpeechRecognitionResult speechRecognitionResult)
        {
            switch (speechRecognitionResult.Reason)
            {
                case ResultReason.RecognizedSpeech:
                    return speechRecognitionResult.Text;
                case ResultReason.NoMatch:
                    return "Speech could not be recognized.";
                case ResultReason.Canceled:
                    var cancellation = CancellationDetails.FromResult(speechRecognitionResult);
                    return "CANCELED: Reason={cancellation.Reason";
            }
            return string.Empty;
        }
    }
}
