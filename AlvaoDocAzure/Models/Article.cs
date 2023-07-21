namespace AlvaoDocAzure.Models
{
    internal class Article  
    {
        public string ArticleText { get; private set; }
        public string FileOrigin { get; private set; }

        public string Header { get; private set; }
        public string FirstHeader { get; private set; }
        public string ArticleNumber { get; private set; }

        public Article(string article, string fileOrigin, string header, string firstHeader, string articleNumber)
        {
            this.ArticleText = article;
            this.FileOrigin = fileOrigin;
            this.Header = header;
            this.FirstHeader = firstHeader;
            this.ArticleNumber = articleNumber;
        }
    }
}