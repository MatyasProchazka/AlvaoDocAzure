<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Operating hours</h1>
	<p>This page is used to manage <a href="../../../../alvao-service-desk/implementation/services/operating-hours">operating hours</a> of services.</p>

	<p>Options:</p>
	<ul><li><strong>Command Panel</strong>
  <ul>
  <li><strong>New operating hours</strong> - create <a href="operating-hours/new-operating-hours">new operating hours</a>.
  </li>
  <li><strong>Edit</strong> - edit the selected operating hours. The menu contains the same commands as the blocks in the selected operating hour <a href="operating-hours/detail">panel</a> on the right.
  </li>
  <li><strong>Delete</strong> - remove the selected operating hours.</li>
 </ul>
 </li>
  <li><strong>Table of operating hours</strong> - contains all operating times and their selected attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
  <li><strong>Selected operating hours</strong> - after selecting operating hours in the table, the <a href="operating-hours/detail">preview</a> will appear on the right with information about the selected operating hours. The <em>Edit</em> command is displayed in each panel block.</li>
 </ul>

</asp:Content>
