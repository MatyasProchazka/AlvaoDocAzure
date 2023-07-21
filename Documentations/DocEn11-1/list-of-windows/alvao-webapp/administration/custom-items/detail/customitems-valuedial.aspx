<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New value</h1>
<p>This window is used to create one value in the list of values <a href="../../../../../alvao-service-desk/implementation/custom-items">
custom fields</a>.</p>
	<ul>
 <li><strong>Value</strong> - enter a value.</li>
 <li><strong>Order</strong> - enter the numbered order of the value. Values are displayed in the list in ascending order.</li>
 <li><strong>Extra1</strong> - this field is for use in Alvao system software extensions. It is not recommended to use it otherwise.</li>
  <li><strong>Service</strong> - this field is only available for custom request item values, is for backward compatibility, and is not recommended for new use. The edited value list value is displayed in the custom field value menu only in requests that are in the selected service.</li>
 
	</ul>

</asp:Content>
