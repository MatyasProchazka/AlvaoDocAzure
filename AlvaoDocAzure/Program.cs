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
        [Option('j', "json", Required = false, HelpText = "save a documentation folder as json")]
        public bool SaveAsJSON{ get; set; }
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
                    CognitiveService service = new CognitiveService("docen", options.CollectionName);
                    if (options.InputIntoDatabase)
                    {
                        await service.InsertDocumentsIntoIndex(options.SaveAsJSON);
                    }
                }
                else
                {
                    await Console.Out.WriteLineAsync("No given documentation name");
                }
            });
        }

        
    }
}
