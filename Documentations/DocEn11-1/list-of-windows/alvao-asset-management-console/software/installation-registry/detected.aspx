<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Detected</h1>
<p>This tab displays the installation data detected during detection. Not all data may be detected and cannot be changed. (However, the data is not &quot;grayed out&quot; to allow copying.)</p>
<p>Options:</p>
	<ul>
 <li><strong>Product found</strong> - display the date the product was found.</li>
 <li><strong>Product Name</strong> - display the product name listed in the file or registry entry that identified the product.</li>
 <li><strong>Language</strong> - display the language of the product.</li>
 <li><strong>Version</strong> - display the product version.</li>
 <li><strong>Product ID</strong> - display product identification data.</li>
 <li><strong>Installation Date</strong> - display the product installation date. The date is read from the registry entry.</li>
 <li><strong>Recognized By</strong> - display the file name or registry entry by which the product was identified.</li>
 <li><strong>Uninstall Detected</strong> - display the date the product was uninstalled.</li>
	</ul>
</asp:Content>
