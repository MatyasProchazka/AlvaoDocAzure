<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Document folder</h1>
  <p>In this window you can create a new or edit the selected document folder.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Folder Name</strong> - enter the name of the document folder.</li>
  <li><strong>Documents can be linked to:</strong>
  <ul>
  <li><strong>Objects</strong> - turn on if you want the folder to appear in windows for working with <a href="../../../../../list-of-windows/alvao-asset-management-console/object">objects</a>.</li>
  <li><strong>Software Licenses</strong> - turn on if you want the folder to appear in windows for working with <a href="../../../../../alvao-asset-management/software-management/licenses">software licenses</a>.</li>
  <li><strong>Asset Stocktaking</strong> - turn on if you want the folder to be offered in windows for working with <a href="../../../../../list-of-windows/alvao-asset-management-console/tools/stocktaking">inventory</a>.</li>
  </ul></li>
  </ul>
</asp:Content>
