<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Product status</h1>
<p>In this window you can change the <a href="../../../../alvao-asset-management/software-management/product-state">
product state</a> and related data.</p>
<p>Options:</p>
	<ul>
 <li><span class="style1">Product State</span> - selecting from the product state menu.</li>
 <li><span class="style1">Approved version</span> - listing the exact version of the approved product.<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The field can only be written to if the product status is set to <b>
 Approved</b>, or <b>Approved - scheduled for decommissioning</b>.</div></li>
 <li><strong>To be decommissioned</strong> - specifying the date on which the product will be decommissioned, the product status will automatically change to <b>Decommissioned</b> on that date.
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The field can only be written to if the product status is set to <b>
 Approved - scheduled for decommissioning</b>.</div></li>
 <li><strong>Request</strong> - provide a number or reference to the request that addresses product approval.</li>
	</ul>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 {
 font-weight: bold;}
</style>

</asp:Content>

