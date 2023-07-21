<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Organizations</h1>
<p>This page is used to manage <a href="../../../alvao-service-desk/implementation/users/companies">organizations</a>.</p>
  
<p>Options:</p>
<ul>
	<li><strong>Command Panel</strong>
 <ul>
  <li><strong>New Organization</strong> - create <a href="organization/create-organization">new organization</a>.</li>
  <li><strong>Edit</strong>- edit the selected organization. </li>
  <li><strong>Delete</strong> - delete the selected organization.  <div class="caution">
  <div class="icon"></div>
  <div class="title">Caution:</div>
  If the organization contains users, those users will also be removed. If you want to keep the users, remove them from the organization before deleting it.</div>
  </li>
 </ul>
	</li>
	<li><strong>Organization Table</strong> - contains all organizations and their selected attributes. You can <a href="../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
  
	<li><strong>Selected Organization</strong> - when you select an organization in the table, <a href="organization/detail">preview</a> will appear to the right of the table
  with information about the selected organization.</li>
</ul>

</asp:Content>
