<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Scripts</h1>
<p>On this page you can manage the scripts of the selected application. Each application consists of one or more C# scripts, each script representing a specific UI element or other type of program extension.</p>

<p>Options:</p>
	<ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><a href="new">New script</a> - create a new script</li>
  <li><a href="edit">Edit</a> - edit the source code of the selected script</li>
  <li><strong>Delete</strong> - permanently remove the selected script</li>
  </ul>
  </li>
  <li><strong>Scripts table</strong> - contains all scripts in the selected application and their properties. You can <a href="../../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
	</ul>

</asp:Content>
