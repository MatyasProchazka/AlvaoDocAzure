<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
<p>This tab allows you to edit basic product information.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 For products from <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
 standard software library</a>, only the price field can be changed. </div>
<p>Options:</p>
	<ul>
 <li><strong>Publisher</strong> - selecting from the product publisher menu or using <a href="../../tools/lists/organization/organization">
 ...</a> to create a new publisher in the system.</li>
 <li><strong>Name</strong> - enter or select the product name. <div class="note">
 <div class="icon"></div>
 <div class="title">Notes:</div>
 Only products from the selected publisher are available. If no publisher is selected, all products are on offer. Depending on the selected product, the lists <strong>Versions</strong>, <strong>Versions</strong>, <strong>
 Edition</strong> and <strong>Platform</strong> with only the known values of the selected product.
 <li><strong>Version</strong> - enter the version of the product.</li>
 <li><strong>Edition</strong> - enter the edition (release) of the product.</li>
 <li><strong>Platform</strong> - enter the platform (operating system) for which the product is intended (e.g. Windows).</li>
 <li><strong>Language</strong> - select the language of the product from the menu. <em>&lt;none&gt;</em> means that this value is not specified.</li>
 <li><strong>Price</strong> - enter the price of the product. <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	This field works in conjunction with the software audit in <a href="../../license-and-install-overview">License and Installation Overview</a>, where the <em>Risk</em> column calculates the risk posed by installing unlicensed products. (Risk = number of unlicensed installations x product price).</div>

 </li>
 <li><strong>Licensing</strong> - select <ul>
 <li><strong>Commercial</strong> - commercial (paid) product including OEM versions.</li>
 <li><strong>Shareware/Trial</strong> - limited time (trial) version of the product.</li>
 <li><strong>Freeware</strong> - full version of the product distributed free of charge.</li>
 <li><strong>Unspecified</strong> - unknown.</li>
  </ul>
 </li>
 <li><strong>Product Category</strong>
  <ul>
 <li>Operating System - turn on if the product is an operating system.</li>
  </ul>
 </li>
 <li><strong>Add to standard software product library</strong>
 - Leave on if you want to add the product to the standard <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
 software product library</a>.
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 In order for requests to be sent, you must enable sending requests in the Collector settings. </div>
  
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The add process starts with a generated request to add a new product to the standard library of software products. The request is sent by Collector over the Internet to our software product library staff. Once this new product is added to the standard library, the user product is replaced with a new product from the standard library.<br/>
 This feature is useful, for example, if you have a license for a product that is not in the standard library and you need to write it to the system. Just create your own product and then use it normally. After creating a product in the standard library, it will be automatically paired and replaced with a new product from the standard library.  </div>
 </li>
	</ul>
</asp:Content>
