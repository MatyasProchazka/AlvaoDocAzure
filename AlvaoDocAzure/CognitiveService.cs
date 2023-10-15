using AlvaoDocAzure.Models;
using Azure;
using Azure.Search.Documents;
using Azure.Search.Documents.Indexes;
using Azure.Search.Documents.Indexes.Models;
using Azure.Search.Documents.Models;
using System.Text.Json;
using ZstdSharp.Unsafe;

using Azure.Identity;
using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;
using Azure.Storage.Blobs.Specialized;

namespace AlvaoDocAzure
{
    internal class CognitiveService
    {
        private SearchIndexClient indexClient;
        private SearchClient searchClient;
        private ArticleParser parser;
        private Chatbot chatbot;
        private string indexName;
        private string collectionName;
        private string workingDirectory;
        private string projectDirectory;

        public CognitiveService(string indexName, string collectionName)
        {
            indexClient = new SearchIndexClient(new Uri("https://alvao-doc-semantic.search.windows.net"), new AzureKeyCredential("I9TOECxhodHAaF4viIfr44FDGIwT2AeUin3ptLZA0TAzSeCbErDh"));
            searchClient = new(new Uri("https://alvao-doc-semantic.search.windows.net"), indexName, new AzureKeyCredential("I9TOECxhodHAaF4viIfr44FDGIwT2AeUin3ptLZA0TAzSeCbErDh"));
            parser = new ArticleParser();
            chatbot = new Chatbot();
            this.indexName = indexName;
            this.collectionName = collectionName;
            this.workingDirectory = Environment.CurrentDirectory;
            this.projectDirectory = Directory.GetParent(this.workingDirectory).Parent.Parent.Parent.FullName;
        }

        private async Task CreateIndexIfDoesntExist()
        {
            string vectorSearchConfigName = "my-vector-config";
            int modelDimensions = 1536;

            SearchIndex searchIndex = new(indexName)
            {
                Fields =
                    {
                        new SimpleField("ArticleID", SearchFieldDataType.String) { IsKey = true, IsFilterable = true, IsSortable = true, IsFacetable = true },
                        new SearchableField("ArticleHeader") { IsFilterable = true, IsSortable = true },
                        new SearchableField("ArticleLink") {IsFacetable = true, IsSortable = true },
                        new SearchableField("ArticleContent") { IsFilterable = true },
                        new SearchField("ContentVectors", SearchFieldDataType.Collection(SearchFieldDataType.Single))
                        {
                            IsSearchable = true,
                            VectorSearchDimensions = modelDimensions,
                            VectorSearchConfiguration = vectorSearchConfigName
                        },
                    },
                VectorSearch = new()
                {
                    AlgorithmConfigurations =
                        {
                            new HnswVectorSearchAlgorithmConfiguration(vectorSearchConfigName)
                        }
                },
                SemanticSettings = new()
                {
                    Configurations =
                    {
                        new SemanticConfiguration("my-semantic-config", new()
                        {
                            TitleField = new(){ FieldName = "ArticleHeader"},
                            ContentFields =
                            {
                                new() { FieldName = "ArticleContent"}
                            }
                        })
                    }
                }
            };

            try
            {
                if (indexClient.GetIndex(indexName) == null)
                {
                    await indexClient.CreateIndexAsync(searchIndex);
                }
            }
            
            catch (RequestFailedException e) when(e.Status == 404)
            {
                await indexClient.CreateIndexAsync(searchIndex);
            }
        }

        public async Task InsertDocumentsIntoIndex(bool saveIntoJSON)
        {
            await CreateIndexIfDoesntExist();

            List<string> files = FileManager.GetAllAspxFiles($@"{projectDirectory}/Documentations/{collectionName}");
            List<Article> articles = new List<Article>();
            List<Task<ArticleWithVector>> articlesDocumentsList = new List<Task<ArticleWithVector>>();
            int id = 1;

            parser.Files = files;

            ////parse the articles and store them
            articles = parser.Parse();

            foreach (var article in articles)
            {
                await Console.Out.WriteLineAsync(id.ToString());
                articlesDocumentsList.Add(chatbot.GetEmbeddigsListAsync(article, id));
                id++;
            } 

            
            var articlesDocuments = await Task.WhenAll(articlesDocumentsList);
            await Console.Out.WriteLineAsync("embeddings done");

            if (saveIntoJSON)
            {
                bool successInsertion = SaveArticlesIntoJSON(articlesDocuments);
                if (successInsertion) { await Console.Out.WriteLineAsync("JSON saving successful"); } else { await Console.Out.WriteLineAsync("Saving JSON failed"); }
                await UploadFromFileAsync(articlesDocuments);
            }


            //await searchClient.IndexDocumentsAsync(IndexDocumentsBatch.Upload(articlesDocuments));
        }

        private bool SaveArticlesIntoJSON(ArticleWithVector[] vectorArray)
        {
            bool success = true;
            try
            {
                var json = JsonSerializer.Serialize(vectorArray);

                File.WriteAllText(@"C:\Users\matya\Desktop\" + collectionName + ".json", json);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                success = false;
            }
            return success;

        }

        private async Task UploadFromFileAsync(ArticleWithVector[] vectorArray)
        {

            string connectionString = "DefaultEndpointsProtocol=https;AccountName=alvaodocstorage;AccountKey=xUF37Hlvxt8rCA6rxkWL8DOf/BZsx4mpZVvXOumIfZCkhfBTICwqVTaQMivyt5o9nzBc84l33Gd1+AStPW0D1A==";
            string containerName = "vectors";
            string blobName = collectionName;
            string filePath = @"C:\Users\matya\Desktop\" + collectionName + ".json";

            BlobServiceClient blobServiceClient = new BlobServiceClient(connectionString);
            BlobContainerClient containerClient = blobServiceClient.GetBlobContainerClient(containerName);
            BlobClient blobClient = containerClient.GetBlobClient(blobName);

            var json = JsonSerializer.Serialize(new List<ArticleWithVector>(vectorArray));

            var bytes = System.Text.Encoding.UTF8.GetBytes(json);

            var memStream = new MemoryStream(bytes);

            //using FileStream stream = File.OpenRead(filePath);

            await blobClient.UploadAsync(memStream, true);

        }


    }
}
