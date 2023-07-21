<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Add permissions</h1>
<p>This window allows you to add or remove permissions to a user or group of users on the service you are editing.</p>
<p>Options:</p>
	<ul>
 <li><strong>Select person or group</strong> - enter at least part of the user name or group name and select the user or group from the drop-down menu. This will add the selected user or group to the list below the input field. You can select several users and groups at a time, or use the [...] button to select several entries from the table at once (you can <a href="../../../../../../alvao-asset-management/working-with-tables">customize the contents of the table</a>)
 </li>
 <li><strong>Permissions</strong> - enable or disable the appropriate <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">permissions</a> in each row. <ul>
  <li>Main Solver</li>
  <li>Manager</li>
  <li>Solver</li>
  <li>Solving Group</li>
  <li>Special Investigator</li>
  <li>Request reporter</li>
  <li>Reader</li>
 </ul>
 </li>
 <li><strong>For requesters from the group</strong> - if you want to set up <a href="../../../../../../alvao-service-desk/implementation/services/service-roles/multiple-teams-for-service">
 multiple solution teams</a>,
   type part of the group name in the field, and then select the requester group to which the permission applies from the menu. An applicant group cannot be selected to deny permissions. Authorisation can only be denied for applicants in the <em>All</em> group.</li>
	</ul>
  


</asp:Content>
