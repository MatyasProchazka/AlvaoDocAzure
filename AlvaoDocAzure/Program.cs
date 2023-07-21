using AlvaoDocAzure;
using System;
using System.Text;

namespace AlvaoDocAzure
{
    class Program
    {
        static async Task Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8;
            await UseMongoDB(askQuestion: true, useOpenAI: true, insertArticles: false, collectionName: "DocEn11-1", language: "en", readFromDatabase: false, dropDatabase: false);



            static async Task UseMongoDB(bool askQuestion = false, bool useOpenAI = false, bool insertArticles =  false, string collectionName = "", string language = "", bool readFromDatabase = false, bool dropDatabase = false)
            {
                DatabaseMongoDB db = new DatabaseMongoDB(collectionName, language);

                if (insertArticles) { await db.InsertArticlesAsync(); }
                if (readFromDatabase) { await db.ReadFromDatabaseAsync(); }
                if (dropDatabase) { await db.DropDatabaseAsync(); }
                
                if (askQuestion) { await db.AnswerQuestion(useOpenAI); }
            }
        }

        
    }
}
