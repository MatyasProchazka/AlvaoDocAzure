using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AlvaoDocAzure.Models
{
    internal class VectorizedArticle
    {
        [BsonId]
        [BsonRepresentation(MongoDB.Bson.BsonType.ObjectId)]
        public string? Id { get; set; }
        public string? Header { get; set; }
        public string? Content { get; set; }
        public string? Link { get; set; }
        public List<double>? Vectors { get; set; }

        public VectorizedArticle() { }

        public VectorizedArticle(string header, string content, string link, List<double> vectors)
        {
            Header = header;
            Content = content;
            Link = link;
            Vectors = vectors;
        }
    }
}
