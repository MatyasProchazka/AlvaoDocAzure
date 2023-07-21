<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query</h1>
	<p>In this window you can create a new or edit the current SQL query (SELECT).</p>
	<p>Options:</p>
<ul>
 <li>Input field - type <a href="../../../../alvao-asset-management/searching/database-sql/samples">SQL query</a> and select <b>OK</b> to run the query.</li>
 <li>To cancel all changes made to the query, select <strong>Storno</strong></li>
</ul>
	
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The SQL query must be of SELECT type only and must not contain an ORDER BY clause. Sorting (and other modifications) is then done in <a href="../../../../alvao-asset-management/working-with-tables">
   table</a>.
 INSERT, UPDATE and DELETE clauses are not supported by this function. They are supported by <a href="../database">Run SQL script</a>.</div>
 
 </asp:Content>
