<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Asset check list</h1>
<p>The table lists all the <a href="../../../../modules/alvao-inventory-audits/stocktaking">
asset checks</a>. Only one inventory can be open at a time.</p>
<p>Options:</p>
<ul>
 <li><strong>Open</strong> - open the selected inventory in <a href="../stocktaking">
 main asset check window</a>.</li>
 <li><strong>Add</strong> - add a new asset check to the list. This command is only available if all existing inventories are closed.</li>
 <li><a href="edit">Edit</a> - edit the selected asset check.</li>
 <li><strong>Delete</strong> - delete the selected asset check.</li>
</ul>
<p>Local menu options:</p>
<ul>
	<li><strong>Record in Object Log</strong> - write the results of the inventory into the Object Journal. Can only be done if <a href="../../../../modules/alvao-inventory-audits/stocktaking#close">
	entry conditions</a>.</li>
	<li><a href="../../../../list-of-windows/alvao-asset-management-console/tab-view/properties/table-options">
 Table</a>
 - menu allows <a href="../../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, create filters, <a href="../../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple columns.</li>
 <li><a href="../../../../list-of-windows/alvao-asset-management-console/tab-view/properties/find">
 Find</a> - search for text in the displayed table.</li>
</ul>
</asp:Content>
