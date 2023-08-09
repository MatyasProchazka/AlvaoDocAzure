using AlvaoDocAzure.Models;
using Azure;
using Azure.AI.OpenAI;
using Azure.Core;
using MongoDB.Bson;
using System.Text;
using System.Text.Json;
using ZstdSharp.Unsafe;

namespace AlvaoDocAzure
{
    internal class Chatbot
    {
        
        private readonly OpenAIClient client;
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
             client = new OpenAIClient(new Uri("https://mp-openai-euw.openai.azure.com/"), new AzureKeyCredential("5a2be090818b4a20a0f2312e0659fb77"), options);

           
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

                if (collectionName.Contains("En")) { link = article.FileOrigin.Replace($@"C:\Users\matya\Programming\AlvaoDocAzure/Documentations/{collectionName}\", @"https://doc.alvao.com/en/11.1/"); }
                else if (collectionName.Contains("Cs")) { link = article.FileOrigin.Replace($@"C:\Users\matya\Programming\AlvaoDocAzure/Documentations/{collectionName}\", @"https://doc.alvao.com/cs/11.1/"); }
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
                System.Environment.Exit(1);
                return new VectorizedArticle();
            }
        }

        public async Task<string> CreateVectorEmbeddingsAsync(string articleText)
        {
            try
            {
                var options = new EmbeddingsOptions(articleText);

                var result_calling = await client.GetEmbeddingsAsync("text-embedding-ada-002", options);
                var result = result_calling.Value.Data[0].Embedding;
                var vector_list = JsonSerializer.Serialize(result);
                return vector_list;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                System.Environment.Exit(1);
                return String.Empty;
            }
        }
    }
}