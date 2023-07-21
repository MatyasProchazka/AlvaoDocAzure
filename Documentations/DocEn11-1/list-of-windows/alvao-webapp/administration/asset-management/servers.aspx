<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Servers (deprecated)</h1>
<p>On this page you can manage servers that have <a href="../../../../alvao-asset-management/implementation/detection/collector">
ALVAO Asset Management Collector</a>. </p>

<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Server</strong> - add <a href="servers/create-server">new server</a> to the list. </li>
  <li><strong>Edit</strong> - edit the properties and settings of the server. The menu contains the same commands as in the <a href="servers/detail">server preview</a> blocks. </li>
  <li><strong>Delete</strong> - delete the selected server.</li>
  <li><strong>Allow</strong> - resumes AM Collector activity on the selected server if the server has been disabled, see the <em>Disable</em> command.</li>
  <li><strong>Disable</strong> - stops the AM Collector from running on the selected server.</li>
  </ul>
  </li>
 
	<li><strong>Server Table</strong> - contains all servers and their selected attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>. </li>
	<li><strong>Selected Server</strong> - After selecting a server in the table, a <a href="servers/detail">view</a> will appear on the right with information about the selected server. The <em>Edit</em> command is displayed in each block of the preview to modify the server settings. </li>
</ul>

<div class="note">
  <div class="icon"></div>
	<div class="title">Note:</div>
  Changing the settings of the running server will take effect within 5 minutes. If you want the settings change to take effect sooner, restart the Collector service on the server.</div>

</asp:Content>
