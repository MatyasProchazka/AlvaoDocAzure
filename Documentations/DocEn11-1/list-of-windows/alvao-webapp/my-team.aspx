<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

  <h1>My Team</h1>
<p>On this page you can manage your <a href="../../alvao-service-desk/implementation/users/my-team">team of users</a>. </p>

<p>Options:</p>
<ul>
  <li id="commands"><strong>Commands Panel</strong>
  <ul>
  <li><a href="my-team/new-user">New user</a> - create a new user in Alvao. The users you create are listed as your children in Alvao.</li>
  <li><a href="my-team/new-user-edit">Edit</a> - edit the properties and permissions of the selected user.</li>
  <li><strong>Change Password</strong> - change the password of the selected user.</li>
  <li><strong>Delete</strong> - delete the selected user. Once removed, the user can no longer log in to Alvao or create requests.</li>
  </ul>
  </li>

  <li><strong>User table</strong> - contains all your children and their selected attributes. If you only want to see your direct reports, select <em>Show only direct reports.</em><br />Customize the table <a href="../../alvao-asset-management/working-with-tables">
 customize</a>.</li>
  
</ul>

&nbsp;

</asp:Content>
