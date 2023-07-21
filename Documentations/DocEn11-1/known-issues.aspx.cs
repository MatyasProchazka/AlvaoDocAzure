using Documentation.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocEn.troubleshooting
{
    public partial class KnownIssues : System.Web.UI.Page
    {
        private const string CurrentVersion = "11.1";
        private const string CurrentVersionReleaseDate = "branch 2023-03-09; internal deployment 2023-03-23; release 2023-04-13";

        protected void Page_Load(object sender, EventArgs e)
        {
            bool isKnownIssuesListDisplayed = string.IsNullOrEmpty(Request.QueryString.Get("issue"));
            knownIssuesList.Visible = isKnownIssuesListDisplayed;
            knownIssuesIssue.Visible = !isKnownIssuesListDisplayed;

            if (!IsPostBack)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand($@"
select distinct sPlannedToVersion as sPlannedToVersion,
(CASE 
    WHEN sPlannedToVersion like '%FIX1 (%' THEN REPLACE(sPlannedToVersion, 'FIX1', 'FIX01')
    WHEN sPlannedToVersion like '%FIX2 (%' THEN REPLACE(sPlannedToVersion, 'FIX2', 'FIX02')
    WHEN sPlannedToVersion like '%FIX3 (%' THEN REPLACE(sPlannedToVersion, 'FIX3', 'FIX03')
    WHEN sPlannedToVersion like '%FIX4 (%' THEN REPLACE(sPlannedToVersion, 'FIX4', 'FIX04')
    WHEN sPlannedToVersion like '%FIX5 (%' THEN REPLACE(sPlannedToVersion, 'FIX5', 'FIX05')
	WHEN sPlannedToVersion like '%FIX6 (%' THEN REPLACE(sPlannedToVersion, 'FIX6', 'FIX06')
	WHEN sPlannedToVersion like '%FIX7 (%' THEN REPLACE(sPlannedToVersion, 'FIX7', 'FIX07')
	WHEN sPlannedToVersion like '%FIX8 (%' THEN REPLACE(sPlannedToVersion, 'FIX8', 'FIX08')
	WHEN sPlannedToVersion like '%FIX9 (%' THEN REPLACE(sPlannedToVersion, 'FIX9', 'FIX09')
    ELSE sPlannedToVersion
    END
) as sPlannedToVersionOrder
from Custom.KnownIssue 
where sPlannedToVersion like N'ALVAO {CurrentVersion}/%' 

union 

select 'ALVAO {CurrentVersion} ({CurrentVersionReleaseDate})' as sPlannedToVersion, 
'ALVAO {CurrentVersion} ({CurrentVersionReleaseDate})' as sPlannedToVersionOrder
order by sPlannedToVersionOrder desc", con))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        var versionsDataSet = ConvertVersions(ds);
                        var selectedVersion = Request.QueryString.Get("version") ?? GetCurrentVersion(versionsDataSet);

                        SetUpVersionSelector(versionsDataSet, selectedVersion);
                        SetUpGrids(versionsDataSet, selectedVersion);
                    }
                }
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            // aby text misto prazdne tabulky nemel ramecek/padding
            AddClassToEmptyGrid(KnownIssuesGridMinor);
            AddClassToEmptyGrid(KnownIssuesGridMedium);
            AddClassToEmptyGrid(KnownIssuesGridCritical);
        }

        private void AddClassToEmptyGrid(GridView grid)
        {
            if (grid.Rows.Count == 0)
                grid.CssClass = "grid-empty";
        }

        private void SetUpVersionSelector(DataSet versionsDataSet, string selectedVersion)
        {
            VersionSelector.DataSource = versionsDataSet;
            VersionSelector.DataTextField = "sPlannedToVersion";
            VersionSelector.DataBind();
            VersionSelector.SelectedValue = selectedVersion;
        }

        private void SetUpGrids(DataSet versionsDataSet, string selectedVersion)
        {
            var originalVersion = GetOriginalVersion(versionsDataSet, selectedVersion);

            if (!string.IsNullOrEmpty(originalVersion)) 
            {
                if (originalVersion.Contains("FIX10"))
                    originalVersion = originalVersion.Replace("FIX10", "FIXZ10");
                else if (originalVersion.Contains("FIX11"))
                    originalVersion = originalVersion.Replace("FIX11", "FIXZ11");
            }

            SetUpKnownIssuesGrid(KnownIssuesGridCritical);
            var criticalSource = GetKnownIssuesDataSource(originalVersion, "24, 39"); // Y1 - kritický problém s produktem, Y1 - kritický problém s produktem - náhradní řešení
            KnownIssuesGridCritical.DataSource = criticalSource;

            SetUpKnownIssuesGrid(KnownIssuesGridMedium);
            var mediumSource = GetKnownIssuesDataSource(originalVersion, "25"); // Y2 - střední problém s produktem
            KnownIssuesGridMedium.DataSource = mediumSource;

            SetUpKnownIssuesGrid(KnownIssuesGridMinor);
            var minorSource = GetKnownIssuesDataSource(originalVersion, "26"); // Y3 - drobný problém s produktem
            KnownIssuesGridMinor.DataSource = minorSource;
        }

        private void SetUpKnownIssuesGrid(GridView grid)
        {
            grid.EmptyDataText = "There are no known issues.";
            grid.AutoGenerateColumns = false;
            grid.AllowPaging = false;
            grid.DataKeyNames = new[] { "iHdTicketId" };

            var issueNameField = new HyperLinkField();
            issueNameField.DataTextField = "sHdTicket";
            issueNameField.DataTextFormatString = "{0:c}";
            issueNameField.DataNavigateUrlFields = new[] { "iHdTicketId" };
            issueNameField.DataNavigateUrlFormatString = "./known-issues?issue={0}";
            issueNameField.HeaderText = "Issue";

            grid.Columns.Insert(0, issueNameField);

            // sPlannedToVersion je template polozka - mnohem jednodussi definovat primo v aspx
        }

        private SqlDataSource GetKnownIssuesDataSource(string selectedVersion, string slaIds)
        {
            string query =
                $@"select * from 
                    (select 
                        iHdTicketId, 
                        sPlannedToVersion, 
                        sSolvedInVersion, 
                        concat(sHdTicket, ' (', sHdTicketMessageTag, ')') sHdTicket, 
                        ProblemSinceVersion, 
                        sHdTicketMessageTag,
		                case when sPlannedToVersion = 'ALVAO - backlog' then 'Z' else sPlannedToVersion end as plannedToVersionOrderCol, 
                        liHdTicketSlaId
		             from Custom.KnownIssue 
		             where liHdTicketSlaId in ({slaIds}) and (ProblemSinceVersion is not null and (ProblemSinceVersion <= '{CurrentVersion}' or ProblemSinceVersion = N'8.0 or older') and (
                        (CASE 
                            WHEN sPlannedToVersion like '%FIX10%' THEN REPLACE(sPlannedToVersion, 'FIX10', 'FIXZ10')
                            WHEN sPlannedToVersion like '%FIX11%' THEN REPLACE(sPlannedToVersion, 'FIX11', 'FIXZ11')
                            ELSE sPlannedToVersion
                         END
                        ) > @selectedVersion
		                 or sPlannedToVersion = N'Alvao - Backlog'))
                    ) issues
		        order by plannedToVersionOrderCol asc";

            var source = new SqlDataSource(ConfigurationManager.ConnectionStrings["Db"].ConnectionString, query);
            source.SelectParameters.Add(new Parameter("selectedVersion", DbType.String, selectedVersion));
            return source;
        }

        private string GetCurrentVersion(DataSet versions)
        {
            // algoritmus pocita s tim, ze data set je serazen sestupne podle data vydani
            foreach (DataTable table in versions.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    string releaseDate = Regex.Match(row["sPlannedToVersion"].ToString(), "\\((.*)\\)").Groups[1].Value;
                    if (!DateTime.TryParse(releaseDate, CultureInfo.CreateSpecificCulture("cs-CZ"), DateTimeStyles.None, out DateTime parsed))
                        continue;
                    if (parsed < DateTime.Now)
                        return row["sPlannedToVersion"].ToString();
                }
            }
            return null;
        }

        private DataSet ConvertVersions(DataSet rawVersions)
        {
            DataTable convertedDataTable = new DataTable();
            convertedDataTable.Columns.Add("sPlannedToVersion");
            convertedDataTable.Columns.Add("sPlannedToVersion_Orig");
            foreach (DataTable table in rawVersions.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    object item = row.ItemArray[0]; // ber jen první sloupec z tabulky, druhý je řadící
                    var version = ProblemArticle.TransformTargetVersion(item.ToString());
                    convertedDataTable.Rows.Add(version, item.ToString());                    
                }
            }
            var ds = new DataSet();
            ds.Tables.Add(convertedDataTable);
            return ds;
        }

        private string GetOriginalVersion(DataSet versions, string convertedVersion)
        {
            foreach (DataTable table in versions.Tables)
            {
                foreach (DataRow row in table.Rows)
                {
                    if (row["sPlannedToVersion"].ToString() == convertedVersion)
                        return row["sPlannedToVersion_Orig"].ToString();
                }
            }
            return null;
        }

        protected void VersionSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect($"{Request.Url.LocalPath}?version={((DropDownList)sender).SelectedValue}");
        }

        public ProblemArticle GetArticle()
        {
            if (!int.TryParse(Request.QueryString.Get("issue"), out int articleId))
                return null;

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"
                    	select * from Custom.KnownIssue where iHdTicketId = @articleId", con))
                {
                    cmd.Parameters.Add("@articleId", SqlDbType.Int).Value = articleId;

                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Page.Title = reader["sHdTicket"] as string;
                            return new ProblemArticle()
                            {
                                ForVersion = reader["problemArticleForVersion"] as string,
                                ArticleId = articleId,
                                Title = reader["sHdTicket"] as string,
                                AlvaoProduct = reader["AlvaoProduct"] as string,
                                PlannedToVersion = reader["sPlannedToVersion"] as string,
                                SinceVersion = reader["ProblemSinceVersion"] as string,
                                SolvedInVersion = reader["sSolvedInVersion"] as string,
                                Symptoms = reader["problemSymptoms"] as string,
                                Cause = reader["problemCause"] as string,
                                Solution = reader["problemSolution"] as string,
                                Workaround = reader["problemWorkaround"] as string,
                                ReproductionSteps = reader["problemReproductionSteps"] as string,
                                Attachments = GetAttachments(articleId)
                            };
                        }
                        else
                        {
                            Response.StatusCode = (int)HttpStatusCode.NotFound;
                            Response.End();
                            return null;
                        }
                    }
                }
            }
        }

        private IEnumerable<Attachment> GetAttachments(int articleId)
        {
            var attachments = new List<Attachment>();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ConnectionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(@"
                    	
                    select * from Custom.KnownIssueAttachment where ArticleId=@articleId", con))
                {
                    cmd.Parameters.Add("@articleId", SqlDbType.Int).Value = articleId;

                    using (var reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            attachments.Add(
                                new Attachment()
                                {
                                    Name = reader["sDocument"] as string,
                                    Id = reader["iDocumentId"] as int? ?? 0
                                }
                            );
                        }
                    }
                }
            }

            return attachments;
        }
    }
}
