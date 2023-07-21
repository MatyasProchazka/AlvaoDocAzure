<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Permissions</h1>
<p>This window is used to set <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">permissions</a> of users in the service being edited.</p>


<p>Options:</p>
	<ul>
 <li><strong>Command Panel</strong><ul>
  <li><a href="service-authorization">Add</a> - add permissions to a person or group of people.</li>
  <li><a href="rewrite-service-authorization">Overwrite</a> - overwrite all permissions with permissions by another service.</li>
  <li><a href="edit-service-authorization">Edit</a> - edit the selected permission.</li>
  <li><strong>Remove</strong> - remove the selected permission.</li>
  </ul>
  </li>
  <li><strong>Table</strong> - permission table of the service being edited. The table can be <a href="../../../../../../alvao-asset-management/working-with-tables">customized</a> as needed.</li>
 
 
	</ul>

</asp:Content>
