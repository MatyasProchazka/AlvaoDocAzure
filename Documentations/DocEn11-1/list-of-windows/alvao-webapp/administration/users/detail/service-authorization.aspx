<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Add permissions</h1>

<p>The form is used to set <a href="../../../../../alvao-service-desk/implementation/services/service-roles">user permissions in services</a>. One user (or group) can have multiple permissions.<br/>
At the top select to which services apply permissions, and at the bottom, select the user role whose permissions you want to enable.</p>


<p>Options:</p>
	<ul>
 <li><strong>Select the services for which you want to set permissions</strong> - select the service or multiple services to which the permissions will apply.
 </li>
 <li><strong>Permissions</strong>
	<ul>
		<li><strong>Main solver</strong> - enable or deny main solver permissions in the selected services.</li>
		<li><strong>Manager</strong> - enable or deny manager permissions in selected services.</li>
		<li><strong>Solver</strong> - enable or deny solver permissions in selected services.</li>
		<li><strong>Solver group</strong> - enable or deny solver group permissions in selected services.</li>
		<li><strong>Exceptional solver</strong> - enable or deny permissions in a service.</li>
		<li><strong>Requests reporter</strong> - enable or deny reporter permissions in selected services.</li>
		<li><strong>Reader</strong> - enable or deny reader permissions in selected services.</li>
	</ul>
 </li>
 <li><strong>For requesters from the group</strong> - if you want to use <a href="../../../../../alvao-service-desk/implementation/services/service-roles/multiple-teams-for-service">multiple service teams</a>, <a href="../../../../alvao-webapp/administration/users/detail/select-group">select the group</a> of requesters to which the permission applies. You cannot select the group of requesters when permissions are denied. Permissions can only be denied for requesters from the group <em>All</em>.</li>
	</ul>
	

</asp:Content>
