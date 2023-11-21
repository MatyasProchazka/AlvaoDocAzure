using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;
using AlvaoDocAzure.Models;

namespace AlvaoDocAzure
{
    internal class LogicHelper
    {
        private ArticleParser parser;
        private Chatbot chatbot;
        private string outputName;
        private string? pathNameInput;
        private string? pathNameOutput;

        public LogicHelper(string outputName, string pathNameInput, string pathNameOutput)
        {
            parser = new ArticleParser();
            chatbot = new Chatbot(pathNameInput);
            this.outputName = outputName;
            this.pathNameInput = pathNameInput;
            this.pathNameOutput = pathNameOutput;
        }


        public async Task SaveDocumentsJSONAsync()
        {
            Console.WriteLine("Gathering files...");
            List<string> files = FileManager.GetAllAspxFiles(pathNameInput);
            Console.WriteLine("Files gathered");
            var articles = new List<Article>();
            List<Task<ArticleWithVector>> articlesDocumentsList = new List<Task<ArticleWithVector>>();
            int id = 1;

            parser.Files = files;

            Console.WriteLine("Parsing files...");

            ////parse the articles and store them
            articles = parser.Parse();

            Console.WriteLine("Files parsed");

            Console.WriteLine("Getting embeddings...");

            foreach (var article in articles)
            {
                articlesDocumentsList.Add(chatbot.GetEmbeddigsListAsync(article, id));
                id++;
            }


            var articlesDocuments = await Task.WhenAll(articlesDocumentsList);
            Console.WriteLine("Embeddings done");

            Console.WriteLine("Saving JSON...");

            bool successInsertion = SaveArticlesIntoJSON(articlesDocuments);
            if (successInsertion) { Console.WriteLine("JSON saving successful"); } else { Console.WriteLine("Saving JSON failed"); }
        }

        private bool SaveArticlesIntoJSON(ArticleWithVector[] vectorArray)
        {
            bool success = true;
            try
            {
                var json = JsonSerializer.Serialize(vectorArray);

                File.WriteAllText(pathNameOutput + "\\" + outputName + ".json", json);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                success = false;
            }
            return success;

        }
    }
}
