<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Products</h1>
<p>The table shows all valid software products in the system. If you want to display invalid products, use the <strong>command in the local menu.
Show invalid products</strong>.</p>
	
	<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	The window options change depending on where the window was <strong>from</strong
	Products</strong> window was opened.</div>
<div class="tooltip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	You can <a href="../../../alvao-asset-management/working-with-tables">
	customize</a>.
</div>

<p>Options:</p>
	<ul>
 <li><a href="products/product">New</a> -
 add a new product.</li>
 <li><a href="products/product">Edit</a> - edit the selected product.</li>
 <li><strong>Delete</strong> - remove the selected product from the list. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 You can remove only those products that are not linked to other information in the database (e.g. the product is licensed).
 Certified products cannot be removed.</div></li>
 <li><a href="products/substitute">Replace</a> - replace user products with certified ones. Certified products are supplied through a library of software product samples available on the Internet.</li>
	</ul>
<p>Local menu options:</p>
	<ul>
 <li><a href="license-and-install-overview/audit">
 Audit</a> - set up auditing for the selected product.</li>
 <li><a href="license-and-install-overview/alternative-sw">
 Set up alternative approved software</a> - setup <a href="../../../alvao-asset-management/software-management/software-regular-auditing">
 alternative approved software</a> for the selected product.</li>
 <li><a href="license-and-install-overview/product-state">
 Edit product status</a> - edit the status of the selected product (approved/unapproved, ...).</li>
 <li><strong>Show invalid products</strong> - display invalid products in the table as well.</li>
 <li><strong>Table</strong> - <a href="../../../alvao-asset-management/working-with-tables">
 customizing a table</a>.</li>
 <li><a href="license-and-install-overview/table/find">
 Find</a> - find text in the table contents.</li>
	</ul>

</asp:Content>
