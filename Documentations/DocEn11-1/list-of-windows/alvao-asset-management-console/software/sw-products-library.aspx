<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Library of SW products</h1>
<p>
<a href="../../../alvao-asset-management/software-management/custom-swlib">
The software product library</a> contains all recognized software products in the Alvao database, and if you use your own library, products from your database as well.</p>
<p>Options:</p>

 <ul>
  <li><a href="sw-products-library/load-library-1">Load updated library</a> - updating the library of sw products. This command is only available if the AM Console is connected directly to the Alvao database. When connected via web service, set <a href="../../alvao-webapp/administration/asset-management/servers/create-server">update library in AM Collector</a>.</li>
  <li><a href="sw-products-library/save-library-1">Save custom library</a></li>
 </ul>
</asp:Content>
