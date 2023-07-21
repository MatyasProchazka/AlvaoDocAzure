<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Custom fields</h1>
<p>This page is used to manage <a href="../../../alvao-service-desk/implementation/custom-items">custom fields</a>.</p>

<p>Options:</p>
	<ul>
  <li><strong>Command Panel</strong>
  <ul>
   <li><strong>New custom field</strong> -
   Add <a href="custom-items/create-custom-item">new field</a>.</li>
   <li><strong>Edit</strong> -
   edit the selected field. The menu contains the same commands as the blocks in the <a href="custom-items/detail">field preview</a>.</li>
   <li><strong>Delete</strong> - delete selected fields.</li>
  </ul>
  </li>
  <li><strong>Custom fields table</strong> - the table contains views for each entity (Request, Service, SLA, ...) that show the custom fields of the entity. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
  <li><strong>Selected field</strong> - when you select an field in the table, a <a href="custom-items/detail">preview</a> will appear to the right of the table
  with information about the selected field.  In each preview block, the <em>Edit</em> command is displayed to edit that block.  </li>
	</ul>

</asp:Content>
