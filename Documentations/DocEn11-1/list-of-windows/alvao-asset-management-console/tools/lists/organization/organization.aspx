<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Organization</h1>
<p>On this tab you can fill in (edit) contact details of the organisation or company.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 You cannot modify organization data retrieved from <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
 Software Product Libraries</a>
	</div>

<p>Options:</p>
	<ul>
 <li><strong>Name</strong> - enter a unique company/organization name.</li>
 <li><strong>Web (http://..)</strong> - enter the company's website address.</li>
 <li><strong>Phone</strong> - enter the phone number of the company.</li>
 <li><strong>Address</strong>
  <ul>
 <li><strong>Street</strong> - enter the address of the company.</li>
 <li><strong>City</strong> - enter the city where the company is located.</li>
 <li><strong>Zip code</strong> - enter the zip code of the company.</li>
 <li><strong>Country</strong> - enter the country where the company is located.</li>
  </ul>
 </li>
 <li><strong>Organization type</strong>
  <ul>
 <li><strong>Publisher</strong> - enable if the company is a software manufacturer.</li>
 <li><strong>Vendor</strong> - turn on if the company is a software supplier.</li>
  </ul>
 </li>
	</ul>
	

</asp:Content>
