<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>View</h1>

  <p>This menu makes it easy to view links between readers and objects to <a href="../../../../modules/alvao-inventory-audits/stocktaking">inventory</a> and other data in the Asset Management system.</p>

  <p>Options:</p>
  <ul>
  <li><b>Mark an object in the tree</b> - mark the selected asset in the <a href="../../object-tree">tree</a> in the <a href="../../../alvao-asset-management-console">Main AM Console window</a>.</li>
  <li><b>Mark Reader File</b> - marks the reader file in the bottom table to which the selected asset is assigned.</li>
  <li><b>Refresh</b> - refreshes the contents of the table in which a row is marked.</li>
  </ul>

</asp:Content>
