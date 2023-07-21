<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Export XLSX</h1>

  <p>In this window, you can set the parameters for exporting assets to an XLSX file to perform the inventory.</p>
  <p>
  Options:</p>
  <ul>
  <li><b>Barcodes contain property values</b> - select the property whose values you will scan with the barcode scanner during inventory. The values of this property will be stored in the exported file in the <i>Barcode</i> column.</li>
  </ul>

</asp:Content>
