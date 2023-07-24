using AlvaoDocAzure;
using CommandLine;
using System;
using System.Collections;
using System.Runtime.CompilerServices;
using System.Text;

namespace AlvaoDocAzure
{
    class Options
    {
        [Option('n', "name", Required = true, HelpText = "Name of the documentation/collection you want to manage")]
        public string? CollectionName { get; set; }
        [Option('i', "input", Required = false, HelpText = "Input a documentation folder into database")]
        public bool InputIntoDatabase { get; set; }
        [Option('r', "read", Required = false, HelpText = "Read documents from database collection")]
        public bool ReadCollection { get; set; }
        [Option('d', "drop", Required = false, HelpText = "Drop a collection from database")]
        public bool DropCollection { get; set; }
        [Option('q', "question", Required = false, HelpText = "Ask a question")]
        public bool AskQuestion { get; set; }
    }

    class Program
    {
        static async Task Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8;

            await Parser.Default.ParseArguments<Options>(args).WithParsedAsync(async options =>
            {
                //initialize object with given documentation name
                if (options.CollectionName != null)
                {
                    DatabaseMongoDB db = new DatabaseMongoDB(options.CollectionName);
                    if (options.InputIntoDatabase)
                    {
                        await db.InsertArticlesAsync();
                    }
                    if (options.ReadCollection)
                    {
                        await db.ReadFromDatabaseAsync();
                    }
                    if (options.DropCollection)
                    {
                        await db.DropCollectionAsync();
                    }
                    if (options.AskQuestion)
                    {
                        await db.AnswerQuestionAsync();
                    }
                }
                else
                {
                    await Console.Out.WriteLineAsync("No given documentation name");
                }
                

            });

            //await UseMongoDB(askQuestion: false, useOpenAI: false, useVoice: false, insertArticles: false, collectionName: "DocEn11-1", language: "en", readFromDatabase: true, dropDatabase: false);



            //static async Task UseMongoDB(bool askQuestion = false, bool useOpenAI = false, bool useVoice = false, bool insertArticles =  false, string collectionName = "", string language = "", bool readFromDatabase = false, bool dropDatabase = false)
            //{
            //    DatabaseMongoDB db = new DatabaseMongoDB(collectionName, language);

            //    if (insertArticles) { await db.InsertArticlesAsync(); }
            //    if (readFromDatabase) { await db.ReadFromDatabaseAsync(); }
            //    if (dropDatabase) { await db.DropDatabaseAsync(); }
                
            //    if (askQuestion) { await db.AnswerQuestion(useOpenAI, useVoice); }
            //}
        }

        
    }
}
