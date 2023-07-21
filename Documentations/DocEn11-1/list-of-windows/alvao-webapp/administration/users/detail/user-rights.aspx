<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Permissions</h1>

<p>On this page set permissions of the selected user in <a href="../../../../../alvao-service-desk/implementation/services">
services</a>.</p>
<p>Options:</p>

	<ul>
 <li><strong>Command panel</strong><ul>
  <li><a href="service-authorization">Add</a>
 - add permissions to the selected user.</li>
  <li><strong>Remove</strong> - removes the selected permission from the user.</li>
  </ul>
  </li>
  <li><strong>Table</strong> - contains selected user <a href="../../../../../alvao-service-desk/implementation/services">services</a> and permissions. You can <a href="../../../../../alvao-asset-management/working-with-tables">customize</a> the table contents as needed.</li>
	</ul>

</asp:Content>
