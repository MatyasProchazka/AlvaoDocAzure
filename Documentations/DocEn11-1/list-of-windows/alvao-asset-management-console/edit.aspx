<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Edit</h1>
<p>The Edit menu is used to work with the database, analytical excel and <a href="../../alvao-asset-management">ALVAO Asset Management</a>.</p>
<p>Features:</p>
	<ul>
 <li><strong>Undo last move...</strong> - undo the last move of an object in the tree.</li>
 <li><a href="edit/new-object">New object</a>
 - create new <a href="../../alvao-asset-management/objects-and-properties">
 object</a> (as a subobject of the object selected in the tree).</li>
 <li><a href="edit/new-computer">New computer</a>
 - create a new computer (as a subobject of the object selected in the tree).</li>
 <li><a href="tools/lists/properties-definition">
 New property</a> - adding a new <a href="../../alvao-asset-management/objects-and-properties">
 property</a> to the object selected in the tree.</li>
 <li><a href="edit/note">New note</a> -
 write a new note in the <a href="tab-view/diary">Log</a> of object selected in the tree.</li>
 <li><a href="tools/lists/documents/document">
 New document</a> - add a new <a href="../../alvao-asset-management/documents">
 document</a> to the object selected in the tree.</li>
 <li><strong>Select All</strong> - select all items displayed in the table.</li>
 <li><strong>Cut</strong> - remove (copy and remove from original location) the item selected in the tree.</li>
 <li><strong>Copy</strong> - copy the selected object in the tree or the item selected in the table (for example, on the Properties tab).</li>
 <li><strong>Paste</strong> - paste an item from the clipboard into the tree or into a table (e.g. on the Properties tab).</li>
 <li><strong>Delete</strong> - remove (move to the trash) an item selected in the <a href="object-tree">tree</a> or table.</li>
 <li><a href="edit/object/choose-icon">Change icon</a>
 - change the icon of the selected object in the tree.</li>
 <li><a href="edit/object/general">Edit</a> -
 edit the selected object in the tree.</li>
 <li><a href="edit/find">Find</a> -
 search in Asset Management.</li>
 <li><strong>Filter</strong> - view/hide filter in table.</li>
	</ul>
</asp:Content>
