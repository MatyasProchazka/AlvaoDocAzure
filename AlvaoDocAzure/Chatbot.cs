using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Azure;
using Azure.AI.OpenAI;
using Azure.Core;
using AlvaoDocAzure.Models;
using Microsoft.Extensions.Configuration;
using AlvaoDocAzure.Models;

namespace AlvaoDocAzure
{
    internal class Chatbot
    {
        private readonly OpenAIClient client;
        private const string deploymentNameEmbeddings = "text-embedding-ada-002";
        private string pathInput;
        private IConfigurationRoot configuration;
        private string endpoint;
        private string keyCredential;

        public Chatbot(string pathInput)
        {
            this.pathInput = pathInput;
            OpenAIClientOptions options = new OpenAIClientOptions() { Retry = { Delay = TimeSpan.FromSeconds(2), MaxRetries = 10, Mode = RetryMode.Exponential } };

            this.configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json")
            .Build();

            this.endpoint = configuration.GetConnectionString("Endpoint");
            this.keyCredential = configuration.GetConnectionString("KeyCredential");
            client = new OpenAIClient(new Uri(endpoint), new AzureKeyCredential(keyCredential), options);
        }

        public async Task<ArticleWithVector> GetEmbeddigsListAsync(Article article, int id)
        {
            var options = new EmbeddingsOptions(article.ArticleText);


            string link = article.FileOrigin.Replace(pathInput + "\\", "");
            link = link.Replace(".aspx", "");
            link = link.Replace(@"\", "/");

            var result_calling = await client.GetEmbeddingsAsync(deploymentNameEmbeddings, options);
            var result = result_calling.Value.Data[0].Embedding;
            if (result != null)
            {
                return new ArticleWithVector()
                {
                    Id = id.ToString(),
                    Header = article.Header,
                    FirstHeader = article.FirstHeader,
                    Link = link,
                    Content = article.ArticleText,
                    Vector = result
                };
            }
            else
            {
                return null;
            }

        }
    }
}
