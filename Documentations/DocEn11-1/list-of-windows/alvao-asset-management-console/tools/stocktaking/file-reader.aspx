<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Reader file</h1>
  
  <p>On this tab, you can edit the reader file record for performing <a href="../../../../modules/alvao-inventory-audits/stocktaking">inventory</a>.</p>
  <ul>
  <li><b>Name</b> - enter the name of the reader file, e.g. <i>Reader 1</i>.</li>
  <li><b>User</b> - select the user who will work with the reader from the menu.</li>
  <li><b>Web asset check</b> - enable if this is a reader file for web inventory. The contents of the file are then displayed to users in the <i>ALVAO WebApp - Asset Inventory</i> window.</li>
  <li><b>Description</b> - insert notes about the reader if necessary.</li>
  <li><b>Exported File</b> - display the date the file was exported for the reader device.</li>
  <li><b>Imported File</b> - display the date the inventory data file was imported from the reading device.</li>
  </ul>
</asp:Content>
