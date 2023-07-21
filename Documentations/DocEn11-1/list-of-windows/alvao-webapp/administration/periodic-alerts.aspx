<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Periodic alerts</h1>
<p>This page is used to manage <a href="../../../alvao-asset-management/implementation/periodic-alerts">periodic alerts</a>
  which are automatically sent via email.</p>
<p>Options:</p>
<ul>
	<li><strong>Command Panel</strong>
  <ul>
  <li><strong>New periodic alert</strong> - create a <a href="periodic-alerts/create-periodic-alert">new</a> alert.</li>
  <li><strong>Edit</strong> - edit the selected alert.</li>
  <li><strong>Delete</strong> - delete selected alerts.</li>
  <li><strong>Enable</strong> - enable the selected alert.</li>
  <li><strong>Disable</strong> - disable the selected alert.</li>
  </ul>
	</li>
	<li><strong>Periodic Alerts Table</strong> - contains all alerts and their selected attributes. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
	<li><strong>Selected periodic alerts</strong> - when you select an alert in the table, a <a href="periodic-alerts/detail">view</a> will appear to the right of the table with information about the selected alert.</li>
</ul>

</asp:Content>
