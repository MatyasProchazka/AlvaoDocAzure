<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Documents</h1>
<p>The table shows the list of documents that are attached to the license.</p>
<p>Options:</p>
	<ul>
 <li><a href="../../../../tools/lists/documents">
 Add link</a> - add (bind) new documents.</li>
 <li><strong>Delete link</strong> - remove selected documents.</li>
	</ul>
<p>Local menu options:</p>
	<ul>
 <li><a href="../../../../tools/lists/documents">
 Add link to document</a> - add (bind) new documents.</li>
 <li><a href="open-attachment">Open attachment</a>
   - open a selected attachment linked to a document.</li>
 <li><a href="../../../../tab-view/properties/table-options">
 Table</a>
 - menu allows <a href="../../../../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, to create filters, <a href="../../../../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple rows.</li>
 <li><a href="../../../../tab-view/properties/find">
 Find</a>
   - search for text in the displayed table.</li>
 <li><a href="../../../../tools/lists/documents">
 Edit</a> - edit the selected document link.</li>
	</ul>

</asp:Content>

