<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Other</h1>
<p>This tab allows you to manage a product recognition rule by <a href="../../../../../../alvao-asset-management/software-management/custom-swlib">
Custom software product libraries</a>.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 You cannot modify rules for products from the standard software library.</div>

<p>Options:</p>

	<ul>
 <li><strong>Valid rule</strong> - enable if you want to mark a rule as valid. A valid rule is used when recognizing software products.</li>
 <li><strong>UID</strong> - display the product identification number. <ul><li><strong>...</strong> - assign a new UID to the rule.</li></ul>
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 Do not change the UID number unless prompted to do so by the program.</div></li>
 <li><strong>Rule Order</strong> - specify the rule order for software product recognition. A value of 0 means that the rule will be evaluated first. <ul><li><strong>...</strong> - assign the order to the rule. It will automatically add a ranking one higher than the highest ranking for another rule. This lowers the priority of the rule being edited for evaluation.</li></ul>
 </li>
 <li><strong>Date</strong> - displays the date of the last rule edit.</li>
 <li><strong>Certified</strong> - display the author of the rule.</li>
 <li><strong>Product</strong> - select from the menu the product that is recognized by this rule.</li>
 <ul><li><a href="../../../software/products/product/general">
 ...</a> - select the product in a separate window.</li></ul>
	</ul>


</asp:Content>
