using AlvaoDocAzure.Models;
using Azure;
using Azure.AI.OpenAI;
using Azure.Core;
using MongoDB.Bson;
using System.Collections;
using System;
using System.Text;
using System.Text.Json;
using System.Text.RegularExpressions;
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
             client = new OpenAIClient(new Uri("https://alvao-ai-uk.openai.azure.com/"), new AzureKeyCredential("97f0f647834f42d3867d2c9d635f624c"), options);

           
        }

        public async Task<ArticleWithVector> GetEmbeddigsListAsync(Article article, int id)
        {
            var options = new EmbeddingsOptions(article.ArticleText);

            string projectDirectory = Directory.GetParent(Environment.CurrentDirectory).Parent.Parent.Parent.FullName;
            string documentationDirectory = projectDirectory + "/" + "Documentations/";
            string link = article.FileOrigin.Replace(documentationDirectory + "DocEn11-1" + "\\", $@"https://doc.alvao.com/en/11.1/");
            link = link.Replace(".aspx", "");
            link = link.Replace(@"\", "/");

            var result_calling = await client.GetEmbeddingsAsync("text-embedding-ada-002", options);
            var result = result_calling.Value.Data[0].Embedding;
            if (result != null)
            {
                return new ArticleWithVector()
                {
                    ArticleID = id.ToString(),
                    ArticleHeader = article.Header,
                    ArticleLink = link,
                    ArticleContent = article.ArticleText,
                    ContentVectors = result
                };
            }
            else
            {
                return null;
            }
           
        }
    }
}