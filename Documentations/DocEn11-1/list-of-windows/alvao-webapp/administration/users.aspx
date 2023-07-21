<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Users</h1>
<p>On this page you can manage Alvao users.</p>
<p>Options:</p>
<ul>
	<li><strong>Command panel</strong>
 <ul>
  <li><strong>New user</strong> - create a <a href="users/create-user">new user</a>.</li>
  <li><strong>Edit </strong>- edit the properties and permissions of the selected user. The menu contains the same commands as the blocks in the selected user <a href="users/detail">panel</a> on the right.</li>
  <li><strong>Delete</strong> - delete the selected user.<br />
 You can then view the removed users in the table with the <a href="../../../alvao-asset-management/working-with-tables/removing-values">Show removed</a> command, and optionally restore with the <em>Restore hidden</em> command.</li>
  <li><strong>Hide</strong> - hide the selected user in menus.
 Users with the <em>Hide in menus</em> option enabled continue to appear in the user table on this page. You can see the status of this option in the <em>Hide in menus</em> column, which you can use to filter and sort the users in the table. 
      For more information see the <a href="users/create-user">Hide in menus</a> option.</li>
  <li><strong>Restore hidden</strong> - disable the <a href="users/create-user">Hide in menus</a> option.
 This command is only available if a hidden user is selected in the table.</li>
  <li><strong>...</strong>
 <ul>
 <li><a href="users/detail/outofoffice">Set person as Out of office (absent)</a>
 - set the absence of the selected person.</li>
 <li><a href="users/detail/settings-profile">Set profile</a> - overwrite the selected user's view profile with another user's view profile.</li>
 <li><a href="users/detail/password">Change password</a> - set a password for the selected user to log in to the entire Alvao system.</li>
 </ul>
  </li>
 </ul>
	</li>
	<li><strong>User table</strong> - contains all Alvao system users and their selected attributes. You can <a href="../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
	<li><strong>Selected user</strong> - after selecting a user in the table, the <a href="users/detail">panel</a> will appear on the right with information about the selected user, about their permissions and other settings.  The <em>Edit</em> command is displayed in each block of the panel to edit the user's settings.</li>
</ul>
</asp:Content>
