using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlvaoDocAzure.Models
{
    internal class ArticleWithVector
    {
        public string ArticleID { get; set; }
        public string ArticleHeader { get; set; }
        public string ArticleLink { get; set; }
        public string ArticleContent { get; set; }
        public IReadOnlyList<float> ContentVectors { get; set; }
    }
}
