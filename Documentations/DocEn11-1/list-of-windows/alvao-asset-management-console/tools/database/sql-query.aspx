<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SQL query</h1>
	<p>In this window you can run <a href="../../../../alvao-asset-management/searching/database-sql">over the Alvao database
	SQL queries</a>.</p>
  <p>Options:</p>
	<ul>
 <li>Main Menu<ul>
  <li><strong>File</strong><ul>
  <li><a href="query">New</a> - create a new SQL query.</li>
  <li><strong>Open</strong> - retrieve SQL query from a file on disk.</li>
  <li><strong>Save</strong> - save the current SQL query to a file on disk.</li>
  <li>...</li>
  </ul>
  </li>
  <li><strong>Edit</strong>
  <ul>
  <li><a href="query">Edit Query</a> - edit the current SQL query.</li>
  <li>...</li>
  </ul>
  </li>
  <li><strong>View</strong> - menu contains commands for <a href="../../../../alvao-asset-management/working-with-tables">working with a table</a> of the query result.</li>
  </ul>
  </li>
  <li><strong>Table</strong> - a table of the results of the executed SQL query. The table content can be further <a href="../../../../alvao-asset-management/working-with-tables">customized</a>.</li>
	</ul>
	
 </asp:Content>
