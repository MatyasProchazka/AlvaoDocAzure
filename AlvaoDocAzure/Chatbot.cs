using AlvaoDocAzure.Models;
using Azure;
using Azure.AI.OpenAI;
using Azure.Core;
using MongoDB.Bson;
using System.Text.Json;

namespace AlvaoDocAzure
{
    internal class Chatbot
    {
        
        private readonly OpenAIClient client;
        private const string deploymentNameCompletions = "text-davinci-003";
        private const string deploymentNameEmbeddings = "text-embedding-ada-002";

        public Chatbot()
        {
            OpenAIClientOptions options = new OpenAIClientOptions()
            {
                Retry =
            {
                Delay = TimeSpan.FromSeconds(2),
                MaxRetries = 10,
                Mode = RetryMode.Exponential
            }
            };
            client = new OpenAIClient(new Uri("https://pka-openai-us.openai.azure.com/"), new AzureKeyCredential("5c6672ab95db4f1fa9bc1cee5fab3acf"), options);

           
        }

        
        public async Task<VectorizedArticle> CreateEmbeddingsAsync(Article article, string collectionName)
        {
            try
            {
                var options = new EmbeddingsOptions(string.Concat(article.Header, article.ArticleText));

                var result_calling = await client.GetEmbeddingsAsync(deploymentNameEmbeddings, options);
                var result = result_calling.Value.Data[0].Embedding;
                var vector_list = JsonSerializer.Serialize(result);

                string link = "";

                if (collectionName.Contains("En")) { link = article.FileOrigin.Replace($@"C:\Users\matya\Programming\AlvaoDocAzure\Documentations\{collectionName}", @"https://doc.alvao.com/en/11.1/"); }
                else if (collectionName.Contains("Cs")) { link = article.FileOrigin.Replace($@"C:\Users\matya\Programming\AlvaoDocAzure\Documentations{collectionName}", @"https://doc.alvao.com/cs/11.1/"); }
                else { throw new Exception("Wrong language type");}
                link = link.Replace(@"\", "/");
                link = link.Replace(".aspx", "");

                List<double>? vectors = JsonSerializer.Deserialize<List<double>>(vector_list, new JsonSerializerOptions
                {
                    Converters = { new System.Text.Json.Serialization.JsonStringEnumConverter() },
                });
                string header = article.FirstHeader;
                if (article.Header != article.FirstHeader)
                {
                    header += $" - {article.Header}";
                }
                if (vectors != null)
                {
                    return new VectorizedArticle(header, article.ArticleText, link, vectors);
                }
                return new VectorizedArticle();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return new VectorizedArticle();
            }
        }

        public async Task<string> CreateAnswerBasedOnContextEnAsync(List<BsonDocument> vectors, string question, string previousAnswer)
        {
            try
            {
                string context = "";
                foreach (var vector in vectors)
                {
                    context += String.Concat("*", vector["Header"].AsString, "\n");
                    context += vector["Content"].AsString + "\n";
                }
                //Console.WriteLine(context);
                string prompt = @$"
Summarize an answer that answers the question below based on the 3 texts of information. The informations concern an online Web Application. You are a proffesional AI assistent customer support of this product. Use the context of previous answer from you given below to crate seamless conversation. Answer as thruthfully as possible and if it is better, answer in bullet points, and if the answer is not contained below, say ""I don't know how to answer that""
                
                Question: {question}
                Context:{context}
                Previous Answer: {previousAnswer}
            ";

                var options = new CompletionsOptions()
                {
                    Prompts = { prompt },
                    MaxTokens = 1750,
                    Temperature = 0.7f
                };

                Response<Completions> completionsResponseExtraction = await client.GetCompletionsAsync(deploymentNameCompletions, options);

                //the answer
                string extractedInformation = completionsResponseExtraction.Value.Choices[0].Text;
                if (extractedInformation != "\r\nI don't know how to answer that.")
                {
                    foreach (var link in vectors)
                    {
                        extractedInformation += $"\nLink:{link["Link"].AsString}";
                    }
                    
                }

                return extractedInformation.Trim();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return String.Empty;
            }
            
        }

        public async Task<string> CreateAnswerBasedOnContextCsAsync(List<BsonDocument> vectors, string question, string previousAnswer)
        {
            try
            {
                string context = "";
                foreach (var vector in vectors)
                {
                    context += String.Concat("*", vector["Header"].AsString, "\n");
                    context += vector["Content"].AsString + "\n";
                }
                //Console.WriteLine(context);
                string prompt = @$"
Shrňte odpověď, která odpovídá na níže uvedenou otázku na základě 3 informačních textů. Informace se týkají online webové aplikace. Jste profesionální asistent AI pro zákaznickou podporu tohoto produktu. Použijte kontext předchozí odpovědi od vás uvedené níže k sestavení bezproblémové konverzace. Odpovězte co nejvěrněji, a pokud je to lepší, odpovězte v bodech, a pokud odpověď není obsažena níže, řekněte ""Nevím, jak na to odpovědět"".
                
                Otázka: Otázka: {question}
                Kontext: {context}
                Předchozí odpověď: Předchozí odpověď: {previousAnswer}";

                var options = new CompletionsOptions()
                {
                    Prompts = { prompt },
                    MaxTokens = 1750,
                    Temperature = 0.7f
                };

                Response<Completions> completionsResponseExtraction = await client.GetCompletionsAsync(deploymentNameCompletions, options);

                //the answer
                string extractedInformation = completionsResponseExtraction.Value.Choices[0].Text;
                if (extractedInformation != "\r\nNevím, jak na to odpovědět")
                {
                    foreach (var link in vectors)
                    {
                        extractedInformation += $"\nOdkaz:{link["Link"].AsString}";
                    }

                }

                return extractedInformation.Trim();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return String.Empty;
            }

        }

        public async Task<string> CreateVectorEmbeddingsAsync(string articleText)
        {
            var options = new EmbeddingsOptions(articleText);

            var result_calling = await client.GetEmbeddingsAsync("text-embedding-ada-002", options);
            var result = result_calling.Value.Data[0].Embedding;
            var vector_list = JsonSerializer.Serialize(result);
            return vector_list;
        }
    }
}