<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query</h1>
<p>This tab allows you to edit and create <a href="../../../../alvao-asset-management/searching/query"> 
queries on database</a>.<br/>
The query text is displayed in the left part. It can be edited directly but you need to know the <a href="../../../alvao-asset-management/searching/query#query-language">Query Language Syntax</a>.</p>
<p>Options:</p>
	<ul>
		<li><strong>Evaluate</strong> – evaluate the query and display the result in a print report.</li>
		<li><strong>Build new query</strong> – create a <a href="query-wizard-1">new query using the wizard</a>.</li>
		<li><strong>Load</strong> – load a query from a file.</li>
		<li><strong>Save</strong> – save the query to a file.</li>
	</ul>
</asp:Content>
