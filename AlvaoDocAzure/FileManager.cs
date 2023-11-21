using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AlvaoDocAzure.Models;

namespace AlvaoDocAzure
{
    internal class FileManager
    {
        public static List<string> GetAllAspxFiles(string path)
        {
            List<string> blacklist = new List<string>() { "sample-page", "known-issues\\troubleshooting", "known-issues\\attachment", "404" };
            List<string> files = new List<string>();
            try
            {
                return Directory.EnumerateFiles(path, "*.aspx", SearchOption.AllDirectories)
                    .Where(item => !blacklist.Any(word => item.Contains(word))).ToList();
            }
            catch
            {
                Console.WriteLine("Documentation with this name couldn't be found in the documentations folder. Please check if you provided the correct name");
                System.Environment.Exit(404);
                return new List<string>();
            }

        }

        /// <summary>
        /// gets rid of unwanted spaces in the text
        /// </summary>
        /// <param name="text"></param>
        /// <returns>formatted text</returns>
        public static string RemoveSpaces(string text)
        {
            // make line breaking consistent
            text = text.Replace("\n", "\r");

            // Remove extra line breaks and tabs:
            // replace over 2 breaks with 2 and over 4 tabs with 4.
            // Prepare first to remove any whitespaces inbetween
            // the escaped characters and remove redundant tabs inbetween linebreaks

            text = System.Text.RegularExpressions.Regex.Replace(text, "( )*(\t)( )*", "\t", System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text, "[ \t]+(\r)", "\r", System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text, "(\r)[ \t]+", "\r", System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text, "^[ \t\r]+", string.Empty, System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            // Remove multible tabs followind a linebreak with just one 
            text = System.Text.RegularExpressions.Regex.Replace(text, "(\r)(\t)+", "\r\t", System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            return text;
        }
    }
}
