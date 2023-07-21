<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Object selection</h1>
	<p>In this Window you can set the prototype of the created objects.</p>
	<ul>
 <li><strong>Select Object</strong> - select the type of object to be created.</li>
 <li><strong>Code property</strong> - select the property where the barcode value will be stored.</li>
 <li><strong>Properties of the selected object</strong> - the list displays all properties of the selected object loaded according to the template. It is possible to change the values of all properties except the property where the barcode will be stored. The objects will be created according to the prototype set in this way.</li>
	</ul>
</asp:Content>
