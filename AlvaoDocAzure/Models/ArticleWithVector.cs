using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlvaoDocAzure.Models
{
    internal class ArticleWithVector
    {
        public string Id { get; set; }
        public string Header { get; set; }
        public string FirstHeader { get; set; }
        public string Link { get; set; }
        public string Content { get; set; }
        public IReadOnlyList<float> Vector { get; set; }
    }
}
