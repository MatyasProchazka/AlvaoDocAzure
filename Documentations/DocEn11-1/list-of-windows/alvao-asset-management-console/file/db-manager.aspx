<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Database Manager</h1>
<p>On this Window you will see a list of databases that have been opened in the past. All recorded data is stored in the database.</p>


<p>Options:</p>
	<ul>
 <li><a href="open-existing-database">Add</a> - add to list and connect to another database.</li>
 <li><a href="db-modify">Edit</a> - modify data about the selected database.</li>
 <li><strong>Remove</strong> - remove the selected database connection from the list.</li>
 <li><strong>Open</strong> - open the selected database.</li>
	</ul>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	For more detailed information about connecting to <a href="../../../alvao-asset-management/implementation/architecture">
	database</a>, please contact your administrator.</div>
</asp:Content>
