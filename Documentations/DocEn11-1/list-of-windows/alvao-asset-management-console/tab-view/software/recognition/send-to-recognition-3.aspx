<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Send SW for identification - last step</h1>
<p>In the last step, select whether you want to send the collected data about unrecognized products anonymously, or if necessary we can contact you and ask for more information so that we can correctly classify the product into <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
Software Product Libraries</a>.</p>
	<ul>
 <li><strong>If you need additional information, you can contact me by email</strong> - select if we can contact you if needed and include your contact email in the box below. <ul>
  <li><strong>I want to be notified of library releases with supplemental records</strong> - turn on if you want to be notified of library releases with supplemental products (we will contact you at the email address provided).</li>
 </ul></li>
 <li><strong>Don't want to be contacted. I want to send my data anonymously.</strong>
 - select if you want to send the data anonymously.<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	In case our specialists fail to identify some unrecognized products by the records submitted, the product will not be included in the standard library.</div>
 
 </li>
	</ul>
</asp:Content>
