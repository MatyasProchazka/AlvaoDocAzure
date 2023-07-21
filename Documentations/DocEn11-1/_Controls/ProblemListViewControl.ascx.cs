using System;

namespace DocEn._Controls
{
    public partial class ProblemListViewControl : System.Web.UI.UserControl
    {
        public string VersionFilter;

        protected global::System.Web.UI.WebControls.SqlDataSource ProblemsSource;

        protected void Page_Load(object sender, EventArgs e)
        {
            ProblemsSource.SelectParameters.Add("version", VersionFilter);
            ProblemsSource.SelectCommand = @"select * from Custom.KnownIssue where sSolvedInVersion = @version order by sPlannedToVersion desc";
            ProblemsSource.ID = "ProblemsSource";
        }

    }
}