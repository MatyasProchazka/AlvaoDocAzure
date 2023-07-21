using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace Documentation.Models
{
    public class ProblemArticle
    {
        private string forVersion;
        private string title;
        private int articleId;
        private string solvedInVersion;
        private string sinceVersion;
        private string plannedToVersion;
        private string alvaoProduct;
        private string symptoms;
        private string cause;
        private string solution;
        private string workaround;
        private string reproductionSteps;
        private IEnumerable<Attachment> attachments = new List<Attachment>();

        public int ArticleId { get => articleId; set => articleId = value; }
        public string Title { get => title; set => title = value; }
        public string ForVersion {
            get
            {
                if (!string.IsNullOrWhiteSpace(forVersion))
                    return forVersion;
                else if (!string.IsNullOrWhiteSpace(AlvaoProduct) && !string.IsNullOrWhiteSpace(SinceVersion))
                    return $"<span translate=\"no\"> {AlvaoProduct} {SinceVersion} </span> and higher";
                else return "-";
            } 
            set => forVersion = value; }
        public string SolvedInVersion { get => solvedInVersion; set => solvedInVersion = value; }
        public string SinceVersion { get => sinceVersion; set => sinceVersion = value; }
        public string PlannedToVersion 
        { 
            get => TransformTargetVersion(plannedToVersion); 
            set => plannedToVersion = value; 
        } 
        public string AlvaoProduct { get => alvaoProduct; set => alvaoProduct = value; }
        public string Symptoms 
        { 
            get 
            { 
                return string.IsNullOrWhiteSpace(symptoms) ? "-" : symptoms;  
            }
            set => symptoms = value; 
        }
        public string Cause
        {
            get
            {
                return string.IsNullOrWhiteSpace(cause) ? "-" : cause;
            }
            set => cause = value;
        }
        public string Solution 
        {
            get 
            {
                if (!string.IsNullOrWhiteSpace(solution))
                    return solution;
                else if (!string.IsNullOrWhiteSpace(SolvedInVersion) && SolvedInVersion != "-")
                    return $"Fixed in release <span translate=\"no\">{SolvedInVersion} - {PlannedToVersion} </span>";
                else if (!string.IsNullOrWhiteSpace(PlannedToVersion) && PlannedToVersion != "-" && SolvedInVersion != "-")
                    return $"Fix planned for release <span translate=\"no\">{PlannedToVersion}</span>";
                else return "-";
            }
            set => solution = value; 
        }
        public string Workaround
        {
            get
            {
                return string.IsNullOrWhiteSpace(workaround) ? "-" : workaround;
            }
            set => workaround = value;
        }

        public string ReproductionSteps { get => reproductionSteps; set => reproductionSteps = value; }
        public IEnumerable<Attachment> Attachments { get => attachments; set => attachments = value; }
        public string GetAttachmentList()
        {
            StringBuilder list = new StringBuilder();
            foreach(var att in Attachments)
            {
                list.Append($"<li><a href=\"./known-issues/attachment/{att.Id}\">{att.Name}</a></li>");
            }

            return list.Length > 0 ? $"<ul>{list}</ul>" : string.Empty;
        }

        public static string TransformTargetVersion(string version, bool addNbsp = false)
        {
            if (string.IsNullOrWhiteSpace(version))
                return string.Empty;

            if (version == "ALVAO - backlog")
                return "-";
            else
            {
                return Regex
                    .Replace(version, "branch .*; ", "")
                    .Replace("release ", "")
                    .Replace("ALVAO ", "")
                    .Replace(" ", addNbsp ? "&nbsp;" : " ");
            }
        }

        public static string GetIcon(string solvedInVersion, string plannedToVersion)
        {
            if (plannedToVersion == "ALVAO - backlog")
                return string.Empty;
            else if (!string.IsNullOrEmpty(solvedInVersion))
                return "<span class=\"ms-Icon ms-Icon--AcceptMedium\"></span>";
            else return "<span class=\"ms-Icon ms-Icon--Calendar\"></span>";
        }
    }
}