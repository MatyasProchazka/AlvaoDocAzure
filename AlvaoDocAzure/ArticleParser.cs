using AlvaoDocAzure.Models;
using HtmlAgilityPack;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using AlvaoDocAzure.Models;
using AlvaoDocAzure;

namespace AlvaoDocAzure
{
    internal class ArticleParser
    {
        /// <summary>
        /// list of all the .aspx files in the given directory
        /// </summary>
        public List<string>? Files { get; set; }

        /// <summary>
        /// instance of HtmlDocument class used for loading the file and reading the node
        /// </summary>
        private HtmlDocument doc = new HtmlDocument();

        /// <summary>
        /// the first "<h2>" header in the file, used only in the beginning
        /// </summary>
        private HtmlNode? firstNode;

        /// <summary>
        /// the node that is currently in use
        /// </summary>
        private HtmlNode? node;

        private string? firstHeader;
        private int articleNumber = 1;
        private int subArticleNumber = 1;

        public ArticleParser()
        {

        }

        /// <summary>
        /// loads the file, finds the h2 tag and goes to the another tag
        /// </summary>
        /// <param name="path"></param>
        /// <returns>if the file is containing h1 tag</returns>
        public bool ParserInicialization(string path)
        {
            // loading the path to the aspx file
            doc.Load(path);

            //selecting the first h2 header in the file
            try
            {
                firstNode = doc.DocumentNode.SelectSingleNode("//h1");
            }
            catch
            {
                firstNode = doc.DocumentNode.SelectSingleNode("//h2");
            }
            if (firstNode != null)
            {
                firstHeader = firstNode.InnerText;
            }
            else
            {
                firstHeader = "";
            }
            //moving to the next node, the program starts with this node
            if (firstNode != null)
            {
                //move to the next tag
                node = firstNode.NextSibling;
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// main function to find all the separate articles
        /// </summary>
        /// <returns>list of separate articles in the given file</returns>
        public List<Article> Parse()
        {
            //list of all the separate articles from all .aspx files
            var result = new List<Article>();
            //cycle through the files and find all articles in the given file
            foreach (var file in Files)
            {
                //check if the file  is containing h2 tag
                if (ParserInicialization(file))
                {
                    //find all the articles in the file and add them to the result list
                    var temp = GetArticle(file);
                    articleNumber++;
                    subArticleNumber = 1;
                    result.AddRange(temp);
                }
            }
            Console.WriteLine("Articles parsed");
            return result;
        }

        /// <summary>
        /// loops  through articles in the aspx file and ands them to a list
        /// </summary>
        /// <returns>list with the articles</returns>
        public List<Article> GetArticle(string file)
        {
            // variables for the loops
            bool loop = true;
            bool innerLoop = true;

            //list containing separate articles found in the file
            var articles = new List<Article>();

            //the current article + adds the text from the h2 tag
            string? header = firstNode.InnerText;
            string? article = "";

            //loop that goes through the whole file
            while (loop)
            {
                //loop that goes through separate articles starting and ending by h2 tag
                while (innerLoop)
                {
                    if (node != null)
                    {
                        //breaks the loop and add the article to the list
                        if (node.OuterHtml.Contains("<h2", StringComparison.InvariantCultureIgnoreCase) || node.OuterHtml.Contains("<h3>") || node.OuterHtml.Contains("<h1>"))
                        {
                            innerLoop = false;
                        }
                        else
                        {
                            //checks for the correct tag
                            if (node.OuterHtml.Contains("<p") || node.OuterHtml.Contains("<ul") || node.OuterHtml.Contains("<ol") || node.OuterHtml.Contains("<table") || node.OuterHtml.Contains("<pre"))
                            {
                                //adds the text that is formatted in the tag to the list
                                article += FileManager.RemoveSpaces(WebUtility.HtmlDecode(node.InnerText));
                            }
                            node = node.NextSibling;
                        }
                    }
                    //this happens if the node is the last one at the end of the file
                    else
                    {
                        if (article != string.Empty)
                        {
                            if (subArticleNumber == 1)
                            {
                                string articleNumberString = string.Concat(articleNumber.ToString());
                                articles.Add(new Article(article, file, header, firstHeader, articleNumberString));
                            }
                            else
                            {
                                string articleNumberString = string.Concat(articleNumber.ToString(), ".", subArticleNumber.ToString());
                                articles.Add(new Article(article, file, header, firstHeader, articleNumberString));
                            }
                        }
                        return articles;
                    }
                }
                //happens when the program encounters another h2 tag -> stores the article and starts a new article reading
                if (node != null)
                {
                    if (article != string.Empty)
                    {
                        string articleNumberString = string.Concat(articleNumber.ToString(), ".", subArticleNumber.ToString());
                        articles.Add(new Article(article, file, header, firstHeader, articleNumberString));
                        subArticleNumber++;
                    }
                    else
                    {
                        articleNumber--;
                    }

                    header = node.InnerText;
                    article = "";
                    node = node.NextSibling;
                    innerLoop = true;
                }
                else
                {
                    loop = false;
                }
            }
            return articles;
        }



    }
}
