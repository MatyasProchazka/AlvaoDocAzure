<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Table</h1>
<p>The menu allows different views and reorganization of objects displayed in <a href="../../../../alvao-asset-management/searching/list-of-objects">
Lists of objects</a>. Working with tables is covered in more detail in <a href="../../../../alvao-asset-management/working-with-tables">
Working with tables</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Filter by Selection</strong> - add the selected value to the filter of the <em>Object Name</em> column.</li>
 <li><strong>Filter Excluding Selection</strong> - filter out from the <em>Object Name</em> column all items with the currently selected value.</li>
 <li><strong>Enable Filter</strong> - display the field to enter a filter and complete the last used filters.</li>
 <li><strong>Reset Filter</strong> - cancel filters in all columns and hide the filter entry field.</li>
 <li><a href="../../object-tree">Display tree</a> - display the object in the left part of the window in a tree structure. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 To create a tree structure, you need to select the column in the table by which you want to group the objects.<br/>
 All objects are displayed in the tree, so the tree ignores the filtering in the table. </div></li>
 <li><strong>View first 250 items</strong> - turn this off if you really want to display a larger number of items. It may take a while to load.</li>
 <li><strong>Save As</strong> - save the table content to a text file (csv, html).</li>
 <li><strong>Analyze in MS Excel table</strong> - display the table content in MS Excel table.</li>
 <li><strong>Copy</strong> - copy the contents of selected cells.</li>
 <li><strong>Copy Cell</strong></li>
 <li><strong>Print</strong></li>
 <li><strong>Abort loading</strong> - interrupt loading of table contents (e.g. if it takes too long).</li>
 <li><strong>Automatically refresh</strong> - set the interval of automatic refresh of the table content in seconds.</li>
 <li><strong>Refresh</strong> - refresh the table content.</li>
	</ul>
</asp:Content>
