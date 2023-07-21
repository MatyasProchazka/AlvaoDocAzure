<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query results</h1>
	<ul>
 <li><strong>Tree</strong> - display objects found by the query.</li>
 <li><strong>Found Items</strong> - display the number of items found.</li>
 <li><strong>Select in tree</strong> - select the found item in the tree. From the local menu, use the <strong>
 Select in tree</strong> command, or double-click a specific item. <br />In the object tree, the object to which the found item relates is selected, and the currently selected tab updates the displayed information about the object.</li>
 <li><strong>Select in tree</strong> - Select the found item in the tree. From the local menu, use the <strong>
 Mark in tree</strong> command. <br />In the Object Tree, the object to which the found item relates is highlighted.</li>
 <li><strong>Print Report</strong> - opens a preview with a print report of the search result.</li>
 <li><strong>MS Excel</strong> - export the search result to MS Excel.</li>
 <li><strong>Export to file</strong> - save search result to CSV or XML file.</li>
 <li><strong>New Query</strong> - use if you want to enter new search terms or a new query.</li>
 <li><strong>Insert into inventory</strong> - insert the objects found by the search into the active asset inventory.</li>
	</ul>
</asp:Content>
