<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Database selection</h1>
	<ul>
 <li><strong>Create new database</strong> - option to create a new database.</li>
 <li><strong>Use existing database</strong> - option to connect to an existing database.</li>
 <li>
  <strong>Server Type</strong> - specify the server type.  <ul>
 <li><strong>SQL Server</strong> - select if you are connecting to a server in your infrastructure.</li>
 <li><strong>Azure SQL Database</strong> - select if you are connecting to Azure SQL Database.</li>
  </ul>
 </li>
 <li><strong>Server Name</strong> - enter the name of the server. For example, sqlserver\sql.</li>
 <li><strong>Database Name</strong> - enter the name of the database.</li>
 <li><strong>Database Language</strong> - select the database language.</li>
 <li><strong>Database Login</strong>
  <ul>
 <li><strong>Use Windows Integrated Authentication</strong>
 - option to use Windows Integrated Authentication.</li>
 <li><strong>User</strong> - option to enter a username.</li>
 <li><strong>Password</strong> - option to enter a user password.</li>
  </ul>
 </li>
 <li><strong>Test Connection</strong> - option to test the connection to SQL Server.</li>
 
	</ul>
</asp:Content>
