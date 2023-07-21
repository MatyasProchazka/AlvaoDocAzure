<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>SQL query and database script</h1>

    <p>
        Data that cannot be retrieved from the database <a href="../../alvao-asset-management/searching/looking-up-objects">by searching</a> or <a href="../../alvao-asset-management/searching/query">queries</a> can be retrieved and possibly manipulated directly in the SQL database. To write an SQL query or script, you need at least a basic understanding of the structure of <a href="../../alvao-asset-management/implementation/customization/database">Alvao database</a> and writing <a href="../../alvao-asset-management/searching/database-sql/samples">SQL queries</a>.
Alternatively, contact ALVAO technical support.
    </p>

    <p>You can find the commands you need in <strong>AM Console - Tools</strong> - <a href="../../list-of-windows/alvao-asset-management-console/tools/database">Database</a>.</p>

    <h2>Creating SQL queries</h2>

    <ol>
        <li>When creating SQL queries, we recommend using <a href="../../alvao-asset-management/implementation/customization/database#report_view_list">views</a> created for easier access to data in Asset Management. All views designed to access AM information are in the database schema &quot;Query&quot;.</li>
        <li>SQL queries only allow you to run SELECT queries.</li>
        <li>Always enter custom column names in the form <b>.
  View.[Column]</b>, for example <b>Node.[Serial Number]</b>. You can rename columns using an AS statement, for example <b>SELECT View.[Column]AS [View Column]</b>.</li>

        <li>Do not use <b>SELECT * FROM</b> in queries, but always list specific columns, otherwise the result display may be slowed down.</li>
        <li>Views that contain object properties always contain the top 100 most used object properties. Updating these views (redefining them for the 100 most used properties) can be done in <a href="../../list-of-windows/alvao-webapp/administration/database-maintenance">ALVAO WebApp - Administration - Database Maintenance - Update data for reports</a></li>
        <li>Before creating your own queries over views, we recommend that you take a look at the examples of using views described below.</li>
    </ol>

</asp:Content>
