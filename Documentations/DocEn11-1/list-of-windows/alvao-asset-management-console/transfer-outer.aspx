<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Transfer protocol external</h1>
<p>In the window you can fill in information about the external <a href="../../alvao-asset-management/documents/transfer-protocols">transfer protocol</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Document Number</strong> - enter the Document Number. If the print report definition includes the name of an existing number series for forwarding protocols, the number is automatically generated according to that number series (<a href="../../alvao-asset-management/implementation/customization/reports#sequence">SEQUENCE</a>).</li>
 <li><strong>Transfer Date</strong> - enter the transfer date.</li>
 <li><strong>Date of Issue</strong> - enter the date the document was issued.</li>
 <li><strong>Text</strong> - if applicable, enter the text accompanying the document.</li>
 <li><strong>Submitter</strong> - fill in the details of the submitting company</li>
 <li><strong>Recipient</strong> - fill in the details of the receiving company.</li>
	</ul>
</asp:Content>
