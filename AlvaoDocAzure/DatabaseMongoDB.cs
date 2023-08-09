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
                    if (i < 100)
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

        public async Task DropCollectionAsync ()
        {
            BsonDocumentCommand<BsonDocument> commandDrop = new BsonDocumentCommand<BsonDocument>(
                        BsonDocument.Parse($"{{drop: '{collectionName}'}}"));
            var result = await client.GetDatabase(databaseName).RunCommandAsync(commandDrop);
            if (result["ok"] == "1")
            {
                Console.WriteLine("Collection dropped");
            }
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
            var estimatedTime = articlesCount / 600;
            return estimatedTime;
        }
    }
}
