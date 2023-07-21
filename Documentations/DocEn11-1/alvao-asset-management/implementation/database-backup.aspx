<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Database backup</h1>

    <p>Backup the database regularly using common means for backing up databases on MS SQL Server. It is recommended to back up the database every day during off-peak hours.</p>
    <h2>Scheduling backups from MS SQL Management Studio</h2>
    <ol>
        <li>Start <strong>Microsoft SQL Server Management Studio </strong>. </li>
        <li>Connect to SQL Server and select the <strong>Management - Maintenance Plans </strong>folder in the left navigation bar.
Right-click on the folder and select <strong>New Maintenance Plan </strong>. </li>
        <li>Follow the wizard to create a backup task for your Alvao database. </li>
    </ol>
    <h2>Backup from the command line</h2>
    <p>You can also run a database backup from the command line, e.g. as part of a scheduled task on the server.</p>
    <p>Example command line:</p>
    <pre class="console" translate="no">sqlcmd -S <em>sql_server_name</em> -Q &quot;BACKUP DATABASE <em><tt>database_name</tt></em> TO DISK = 'C:\Zaloha\alvao.bak'&quot;</pre>

</asp:Content>
