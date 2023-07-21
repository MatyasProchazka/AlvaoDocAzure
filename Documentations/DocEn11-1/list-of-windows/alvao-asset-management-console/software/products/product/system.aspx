<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>System</h1>
<p>This tab allows you to view and possibly edit additional product information.</p>

<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 You cannot delete products from the standard software library, and you can only edit <strong>Valid Product</strong>, <strong>
 Parameter1</strong>, <strong>Parameter2</strong> and <strong>
 Description</strong>.
	</div>
	

	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 When the product is invalidated, all detection rules (rules for detecting the presence of SW in software detection) are also invalidated.
	</div>
<p>Options:</p>
	<ul>
 <li><strong>Valid product</strong> - disable to remove the product from the <a href="../../products">product list</a>. (Invalid products can be displayed using the <strong>Show invalid products</strong> command from the local menu.)</li>
 <li><strong>UID</strong> - display the product record identification number.</li>
 <li><strong>Date</strong> - display the date of the last change.</li>
 <li><strong>Certified</strong> - display the certification authority that created the record.</li>
 <li><strong>Parameter1</strong> and <strong>Parameter2</strong>
 - or enter user parameters. The parameters can be used to filter products in the <a href="../../license-and-install-overview">License and Installation Overview</a> window.</li>
 <li><strong>Description</strong> - add a product note if necessary.</li>
	</ul>


</asp:Content>
