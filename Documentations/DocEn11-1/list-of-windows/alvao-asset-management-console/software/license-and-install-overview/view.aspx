<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>View</h1>
<p>The menu allows you to show or hide elements of <a href="../license-and-install-overview">License and Installation Overview</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Organizations and Cost Centers</strong> - view data for a specific organization or cost center. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 A cost center is an accounting unit that some companies use to budget costs within an organization.</div></li>
 <li><strong>Products exempt from audit</strong> - also display products that are set to unaudited. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 In the local menu of each product, there is an <a href="audit">option
 audit</a>, if you select <strong>No</strong>, the product will not be audited.</div></li>
 <li><strong>Commercial and shareware only</strong> - display only products with license type commercial or shareware (omit freeware).</li>
 <li><strong>Refresh</strong> - refresh the contents of the window.</li>
 <li><a href="../products/product">
 Product detail</a> - view and possibly edit the selected product.</li>
	</ul>
</asp:Content>
