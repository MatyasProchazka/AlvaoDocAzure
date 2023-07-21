<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Analytical database</h1>

    <p>Because performing data analyses and creating reports over a production database in normal operation can slow down application response, we recommend creating these analyses and reports over a separate <em>analytic database</em>.</p>
    <p>On SQL Server, create an analytic database (e.g., named ALVAO_ANALYSIS) from the current backup of the production database and lock it against writes (read-only) to improve performance. It is recommended to update the analytical database daily from the last daily backup of the production database, e.g. with a scheduled job. The scheduled task can run, for example, a cmd script that you create using the <a href="renew_analysis.zip">script template</a> and modify the disk file paths and server and database names in the script.</p>
    <p>In <strong>WebApp - Administration - Settings - </strong><a href="../../list-of-windows/alvao-webapp/administration/settings/analysis-db">Data Analysis</a> then set up the connection to the analysis database.</p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The analytics database is for analysis and reports only. Do not work with it directly in Alvao applications!
    </div>


</asp:Content>
