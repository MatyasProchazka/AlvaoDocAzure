<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>User</h1>

<p>On this page, or panel, you can see information about the <a href="../users">selected user</a>. You can edit the information displayed in each block by using the <em>Edit</em> command in that block.</p>
  
<p>Options:</p>
<ul>
  <li><strong>Command panel</strong> - see the command panel on the <a href="../users">Users</a> page.</li>
  <li>Block <ul>
  <li><a href="detail/edit">Name and surname, …</a> - basic user information.</li>
  <li><a href="detail/membership">Membership in groups</a> - membership of the selected user in user groups.</li>
  <li><a href="detail/user-rights">Permissions</a> - permissions of the selected user in ALVAO Service Desk.</li>
  <li><a href="detail/sla">SLA</a> - the SLA assigned to the selected user for requesting access to services in the ALVAO Service Desk.</li>
  <li><a href="detail/security-object">Object security</a> - the permissions of the selected user to objects in ALVAO Asset Management.</li>
  <li><strong>Data queries</strong> - a list of <a href="../data-queries">data queries</a> accessible by the user.</li>

</ul>
  </li>
</ul>
</asp:Content>
