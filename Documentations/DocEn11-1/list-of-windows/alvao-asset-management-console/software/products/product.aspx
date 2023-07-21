<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Product</h1>
<p>In this window you can edit the product data.</p>
	<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	The <strong>Package Components</strong> tab is only displayed when editing a product. Its items can only be edited when editing a user product.</div>
<p>Tabs:</p>
<ul>
 <li><a href="product/general">General</a></li>
 <li><a href="product/other">Other</a></li>
 <li><a href="product/package-components">Package components</a></li>
 <li><a href="product/system">System</a></li>
</ul>


</asp:Content>
