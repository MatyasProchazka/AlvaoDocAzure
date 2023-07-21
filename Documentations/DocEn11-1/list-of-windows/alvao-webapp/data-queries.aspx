<%@ Page masterpagefile="~/doc.master" Language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Data queries</h1>
<p>On this page, you view the results of the data queries in Alvao. This page is available only when the administrator <a href="administration/data-queries">defined</a> any data query for you.</p> 

<p>Options:</p>
	<ul>
  <li><strong>Command panel</strong><ul>
      <li>&nbsp;A drop-down menu with the list of the available data queries.</li>
      </ul>
  </li>
  <li><strong>Table</strong> - contains results of the selected query. You can <a href="../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
        <li><strong>Selected record</strong> - after selecting a record in the table, the panel with the corresponding entity page may appear on the right.</li>
	</ul>

</asp:Content>