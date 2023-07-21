<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Groups</h1>
<p>This page displays the user groups in the Alvao system and selected parameters of their settings.</p>

<p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Group</strong> - create <a href="groups/create-group">new group</a>.</li>
  <li><strong>Edit</strong>- edit user properties and permissions. The menu contains the same commands as the blocks in the <a href="groups/detail">group preview</a>. </li>
  <li><strong>Delete</strong> - delete the selected group.</li>
  </ul>
  </li>
  <li><strong>Groups table</strong> - contains all Alvao groups and their selected attributes. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
  <li><strong>Selected Group</strong> - After selecting a group in the table, a <a href="groups/detail">view</a> will appear on the right with information about the selected group, its permissions and other settings. The individual blocks of the preview display the <em>Edit</em> command to edit the group settings.</li>
  </ul>

</asp:Content>
