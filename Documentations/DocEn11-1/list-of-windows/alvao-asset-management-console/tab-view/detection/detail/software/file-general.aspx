<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>File Recognition Rule - General</h1>
<p>This tab allows you to manage the file definition used by a product recognition rule. Products are recognized by <a href="../../../../../../alvao-asset-management/software-management/custom-swlib">
Custom software product libraries</a>.<br/>
It will be recognized by the data you enter.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 You cannot modify rules for products from the standard software library.</div>
<p>Options:</p>
	<ul>
 <li><strong>Key product identification file</strong> -
 Enable if the rule is a software product recognition rule.<br/>
 If you turn the option off, you are creating a <strong>selection rule</strong>,
 which does not recognize the product, but instead excludes the file from the recognition process.</li>
 <li><strong>File name</strong> - enter the name of the file.</li>
 <li><strong>File extension</strong> - enter the file extension.</li>
 <li><strong>File Size</strong> - enter the file size in bytes.</li>
 <li><strong>Company</strong> - enter the name of the product publisher.</li>
 <li><strong>Product Name</strong> - enter the name of the product name.</li>
 <li><strong>Language</strong> - select the product language from the menu.</li>
 <li><strong>Product Version</strong> - enter the product version.</li>
 <li><strong>Product version from</strong> - enter the lower limit (lowest product version) that meets the condition - e.g. the value &quot;5.1&quot; means all versions from &quot;5.1&quot; onwards.</li>
 <li><strong>Product version up to</strong> - enter the upper limit (highest product version) that meets the condition - e.g. a value of &quot;5.5&quot; means all versions up to &quot;5.5.255.255&quot;.</li>
 <li><strong>File Version</strong> - detect by file version</li>
 <li><strong>File version from</strong> - specify file version.</li>
 <li><strong>File version to</strong> - enter the lowest file version number - the bottom value of the interval.</li>
 <li><strong>Original File Name</strong> - enter the highest file version number - the upper value of the interval.</li>
 <li><strong>Internal Name</strong> - enter the internal name.</li>
 <li><strong>Comments</strong> - enter a comment.</li>
 <li><strong>File Description</strong> - enter a description of the file.</li>
	</ul>

	

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 You can use special SQL characters in input fields, e.g. &quot;%&quot; means a sequence of arbitrary characters. </div>

</asp:Content>
