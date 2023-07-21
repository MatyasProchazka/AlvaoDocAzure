﻿using AlvaoDocAzure.Models;
using System.Text;
using System.Text.Encodings.Web;
using System.Text.Json;
using System.Text.Unicode;

namespace AlvaoDocAzure
{
    internal class FileManager
    {

        public static List<string> GetAllAspxFiles(string path)
        {
            List<string> files = new List<string>();
            foreach (string file in Directory.EnumerateFiles(path, "*.aspx", SearchOption.AllDirectories))
            {
                files.Add(file);
            }
            return files;
        }

        /// <summary>
        /// gets rid of unwanted characters in the text
        /// </summary>
        /// <param name="paragraph"></param>
        /// <returns>formatted text</returns>
        public static string FormatParagraph(string paragraph)
        {
            //checks for  all the unwanted characters and replaces them
            if (paragraph.Contains("&quot;"))
            {
                paragraph = paragraph.Replace("&quot;", "\"");
            }
            if (paragraph.Contains(@"\u0022"))
            {
                paragraph = paragraph.Replace(@"\u0022", "");
            }
            if (paragraph.Contains(@"\u0022"))
            {
                paragraph = paragraph.Replace(@"\u0027", " ");
            }
            if (paragraph.Contains(@"&lt"))
            {
                paragraph = paragraph.Replace(@"&lt", "<");
            }
            if (paragraph.Contains(@"&gt"))
            {
                paragraph = paragraph.Replace(@"&gt", ">");
            }
            if (paragraph.Contains(@"&#39"))
            {
                paragraph.Replace(@"&#39", "'");
            }
            return paragraph;
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

            text = System.Text.RegularExpressions.Regex.Replace(text,

                     "( )+(\t)", "\t",

                     System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text,

                     "(\t)( )+", "\t",

                     System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text,

                     "[ \t]+(\r)", "\r",

                     System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text,

                     "(\r)[ \t]+", "\r",

                     System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            text = System.Text.RegularExpressions.Regex.Replace(text,

                     "^[ \t\r]+", string.Empty,

                     System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            // Remove multible tabs followind a linebreak with just one tab

            text = System.Text.RegularExpressions.Regex.Replace(text,

                     "(\r)(\t)+", "\r\t",

                     System.Text.RegularExpressions.RegexOptions.IgnoreCase);

            /*int nPrevLength;

            do

            {
                nPrevLength = result.Length;

                result = result.Replace("\r\r\r", "\r\r");

                result = result.Replace("\t\t\t\t\t", "\t\t\t\t");

                //breaks = breaks + "\r";

                //tabs = tabs + "\t";
            }

            while (result.Length < nPrevLength);*/

            text = text.Replace("\r", "");
            return text;
        }
    }
}