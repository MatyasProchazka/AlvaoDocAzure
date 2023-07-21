<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>File</h1>

  <p>The offer makes available functions for working with <a href="../../../../modules/alvao-inventory-audits/stocktaking">inventory</a>.</p>

  <p>Options:</p>
  <ul>
  <li><a href="stocktakings">Open asset check</a> - view the inventory list and select an inventory from it.</li>
  <li><a href="../../../alvao-webapp/objects/export-xlsx">Export XLSX</a> - export a file with the extension .xlsx as the basis for the inventory.</li>
  <li><b>Import XLSX</b> - importing a file with a .xlsx extension after performing an inventory.</li>
  <li><b>ALVAO Mobile Inventory (deprecated)</b> - inventory-related commands using the <a href="../../../../modules/alvao-inventory-audits/barcode-reader">ALVAO Mobile Inventory</a> mobile app.
  <ul>
  <li><b>Export IXM</b> - export the inventory evidence file to the reader device and save it to disk.</li>
  <li><b>Import IXM</b> - import the file from the reading device (stored on disk) that was used to perform the inventory.</li>
  </ul>
  </li>
  <li><a href="../../software/license-and-install-overview/table/html-document">Print</a> - print information about the selected asset (after selecting the appropriate print report).</li>
  </ul>

</asp:Content>
