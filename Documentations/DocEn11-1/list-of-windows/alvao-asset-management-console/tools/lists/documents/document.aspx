<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Document</h1>
<p>This tab allows you to edit data on <a href="../../../../../alvao-asset-management/documents">
document</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Identification Number 2</strong> - enter an additional document identification number if necessary. (<strong>Identification Number</strong> is entered on the <a href="label">Label</a> tab.)</li>
 <li><strong>Voided</strong> - turn on if the document is no longer valid.</li>
 <li><strong>Document Folder</strong> - select <a href="../../../../../list-of-windows/alvao-webapp/administration/asset-management/document-folders">document folders</a> from the menu.</li>
 <li><strong>Document Type</strong> - select from the <a href="../../../../../alvao-asset-management/documents">
 document type</a>.</li>
 <li><strong>Issue Date</strong> - enter the issue date of the document.</li>
 <li><strong>Attachment</strong> - attach attach attachments (e.g. scan of invoice) if applicable.</li>
 <li><strong>Document - Invoice</strong> - if the selected document type is <a href="../../../../../alvao-asset-management/documents/invoices">
 Invoice</a>
  <ul>
 <li><strong>Vendor</strong> - select from the supplier menu.</li>
 <ul><li><a href="../organization">
  ...</a> - or select a supplier from the list of organisations.</li></ul>
  </ul>
 </li>
 <li><strong>Document - Handover protocol</strong> if the selected document type is <a href="../../../../../alvao-asset-management/documents/transfer-protocols">
 Transfer protocol</a>
  <ul>
 <li><strong>Person handing over</strong> - select the submitting user from the menu.</li>
 <li><strong>Person accepting</strong> - select from the menu of the transferring user.</li>
  </ul>
 </li>
 <li><strong>Sign method (Handover protocol)</strong> -
 Handover protocol signing method (only available after activating the module <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a>).</li>
 <li><strong>Note</strong> - enter a note on the document.</li>
	</ul>
</asp:Content>
