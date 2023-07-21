<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Databases</h1>
<p>This menu contains commands for working with <a href="../../../alvao-asset-management/implementation/customization/database">Alvao database</a>.</p>
	
<p>Options:</p>
 <ul>
  <li><strong>Restore deleted items</strong> - first in <a href="../tab-view/diary">
  Diary</a>, use the local menu command - <strong>Table - Show deleted items</strong>.
  Then select the entries you want to restore and use this command.  </li>
  <li><a href="database/sql-query">SQL query...</a> - run the specified SQL query (SELECT) and display its result in a <a href="database/sql-query">table</a>, where you can further <a href="../../../alvao-asset-management/working-with-tables">work with it</a>. This command can only be used by members of the <a href="../../../alvao-asset-management/implementation/users/groups">Asset Management administrators</a> or <em>SQL Query Administrators</em> group.</li>
  <li>
 <strong>Run SQL script</strong> - select the SQL script file you want to run from the disk. After executing it, the application will only display information about whether the script ran without errors or with errors.  This command can only be used by members of the <a href="../../../alvao-asset-management/implementation/users/groups">Administrators</a> group.
  <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 Never run SQL scripts that you are not completely sure of their content. Running an incorrect SQL script can lead to database corruption and data loss. Before running an SQL script on a production database, we recommend that you test it in a test environment first.
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If you are working with diacritics, the SQL script must be in <strong>
 UNICODE</strong>, otherwise the diacritics will not be processed correctly and the script will not run correctly. </div>
	  </li>
 </ul>
 
</asp:Content>
