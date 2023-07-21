<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query parameters</h1>
<p>On this Window you can specify parameters for printing. It is displayed only for some templates.</p>
	<ul>
 <li><strong>Search in</strong>
  <ul>
 <li><strong>Selected Object</strong> - select to search only the object that is currently selected in the Object Tree and all its child objects.</li>
 <li><strong>All objects (entire database)</strong> -
 select if you want to search the entire tree i.e. the entire database.</li>
  </ul>
 </li>
 <li><strong>Search including</strong>
  <ul>
 <li><b>Special Objects</b> - turn on if you want to search also the Recycle Bin, Object Templates, retired assets etc.</li>
  </ul>
 </li>
	</ul>
</asp:Content>
