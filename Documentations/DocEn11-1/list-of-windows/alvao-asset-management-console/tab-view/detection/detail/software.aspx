<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Software detection detail</h1>
	<p>In this window you will find details about <a href="../../../../../alvao-asset-management/implementation/detection#SW_det">
	software detection</a>. Files are detected by information in <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
	Software Product Library</a>. In the default file view, the window is divided into five parts (the registry view uses only the first three):</p>
	<ul>
	<li><b>List of unrecognized files</b> (top) - displays files that have not been recognized by any rule.<br/></li>
	<li><b>Folder tree</b> (middle left) - view of the disk of the detected computer. If a folder is marked with a check mark, it means that there are detected files in the folder.<br/></li>
	<li><b>List of files in selected folder</b> (middle right) - view of files found in the folder that is currently selected in the folder tree. Files marked with a checkmark icon are recognized and have the name of the recognized software product listed in the <strong>product</strong> column.<br/></li>
	<li><b>Product List</b> (bottom left) - view products by category <ul>
 <li><em>Found</em> - view all found software products.</li>
 <li><em>All</em> - view all available software products (this view is useful when designing your own recognition rules)</li>
	</ul>
	<li><b>Rule List</b> (bottom right) - rules for recognizing the product that is currently selected in the product list. The list contains either only file rules or only registry rules, depending on the window view mode.</li>
 </ul>
	<p>Options:</p>
	<ul>
 <li><a href="software/edit">Edit</a></li>
 <li><a href="software/view">View</a></li>
 <li><a href="software/actions">Actions</a></li>
 <li><a href="software/tools">Tools</a></li>
	</ul>
	
</asp:Content>
