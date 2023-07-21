<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Group</h1>

<p>On this page, or panel, you see information about the selected group. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>

<p>Options:</p>

<ul>
	<li><a href="detail/edit">Properties</a> - general information about the group.</li>
	<li><a href="detail/members">Members</a> - list of <a href="../../../../alvao-asset-management/implementation/users">
users</a> and groups that belong to the selected group.</li>
  <li><a href="detail/membership">Membership in groups</a> - displays the groups of which the selected group is a member.</li>
  <li><a href="detail/group-rights">Permissions</a> - the permissions of the members of the selected group in the ALVAO Service Desk.</li>
  <li><a href="detail/sla">SLA</a> - SLAs assigned to members of the selected group for requesting access to services in ALVAO Service Desk. </li>
	<li><a href="detail/security-object">Object Security</a> - a list of objects in ALVAO Asset Management to which group members have permissions.</li>
  <li><strong>Data queries</strong> - a list of <a href="../data-queries">data queries</a> accessible by the members of the group.</li>

</ul>

<div class="tip">
  <div class="icon">
  </div>
  <div class="title">
  Tip:</div>
  See <a href="../../../../alvao-service-desk/implementation/users/my-team">My Team</a> for information on why and how to add groups to groups.</div>
  

</asp:Content>
