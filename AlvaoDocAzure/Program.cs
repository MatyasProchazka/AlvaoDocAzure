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
        [Option('i', "input", Required = true, HelpText = "Path to the documentation you want to manage")]
        public string? PathNameInput { get; set; }
        [Option('o', "output", Required = true, HelpText = "Select the folder output path for the JSON file (e.g. C:\\Users\\<user>\\folder)")]
        public string? PathNameOutput { get; set; }
        [Option('n', "name", Required = true, HelpText = "Select output document name (e.g. DocEn11-2)")]
        public string? OutputName { get; set; }
    }

    class Program
    {
        static async Task Main(string[] args)
        {
            Console.OutputEncoding = Encoding.UTF8;

            
            await Parser.Default.ParseArguments<Options>(args).WithParsedAsync(async options =>
            {
                //initialize object with given documentation name
                if (options.PathNameInput != null && options.OutputName != null && options.PathNameOutput != null)
                {
                    LogicHelper logic = new LogicHelper(options.OutputName, options.PathNameInput, options.PathNameOutput);
                    await logic.SaveDocumentsJSONAsync();
                }
                else
                {
                    Console.WriteLine("No given documentation name");
                }
            });
        }

        
    }
}
