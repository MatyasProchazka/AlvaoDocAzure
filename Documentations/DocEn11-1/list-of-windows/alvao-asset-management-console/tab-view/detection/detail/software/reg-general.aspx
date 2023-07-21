<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Modifying the Registry Recognition Rule - General</h1>
<p>This tab allows you to manage the registry record definition used by a product recognition rule. Products are recognized by <a href="../../../../../../alvao-asset-management/software-management/custom-swlib">
Custom software product libraries</a>.<br/>
It will be recognized by the items you specify. None of the items are mandatory.</p>

	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 You cannot edit rules for products from the standard software library. </div>

<p>Options:</p>

	<ul>
 <li><strong>Key Product Identification Record</strong> -
 Enable if the rule is a software product recognition rule.<br/>
 If you turn the option off, you are creating a <strong>exclusive</strong> rule,
 which does not recognize the product, but instead removes the record from the recognition process.</li>
 <li><strong>Product</strong> - enter the product name.</li>
 <li><strong>Version</strong> - enter the version of the product.</li>
 <li><strong>Version from</strong> - enter the lower limit (lowest product version) that meets the condition - e.g. the value &quot;5.1&quot; means all versions from &quot;5.1&quot; onwards.</li>
 <li><strong>Version up to</strong> - enter the upper limit (the highest version of the product) that meets the condition - e.g. the value &quot;5.5&quot; means all versions up to &quot;5.5.255.255&quot;.</li>
 <li><strong>Language</strong> - select the product language from the menu.</li>
 <li><strong>Publisher</strong> - specify the manufacturer of the software product.</li>
 <li><strong>Path</strong> - enter the registry key.</li>
 <li><strong>Comment</strong> - enter a comment about the product.</li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 You can use special SQL characters in input fields, e.g. &quot;%&quot; means a sequence of arbitrary characters.</div>

	<h3>Links</h3>
	
	<ul>
 <li><a href="../../../../../../alvao-asset-management/software-management/custom-swlib">
 Custom software product library</a></li>
	</ul>

</asp:Content>
