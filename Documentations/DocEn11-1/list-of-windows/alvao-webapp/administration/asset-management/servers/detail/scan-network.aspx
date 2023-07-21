<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Network scan</h1>
<p>This page is used to set up an automatic search for new computers on the network. You must first enable the search in the <em>Settings</em> command.</p>
<p>Options:</p>
	<ul>
 <li><strong>Command Panel</strong>
  <ul>
 <li><a href="ip-range">New Range</a> - add a new range or IP address.</li>
  <li><a href="settings">Settings</a> - set network scan settings.</li>
 <li><a href="ip-range">Edit</a> - edit the selected range.</li>
 <li><strong>Delete</strong> - delete the selected range.</li>
  </ul>
 </li>
	  <li><strong>IP Address Range Table</strong> - the IP address ranges in which new computers are searched. For a better overall overview, the table lists the ranges for all servers (AM Collector) running in this database, not just the server being edited. Ranges related to the server being edited are marked with an icon. You can <a href="../../../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
	</ul>
	
</asp:Content>
