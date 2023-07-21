<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Members</h1>
<p>This window is used to add and remove users and user groups that are members of the group being edited. </p>
<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong><ul>
  <li><a href="select-member">Add</a> - add a user or group to the group being edited. </li>
  <li><strong>Remove</strong> - remove the selected user or group from the edited group.</li>
  </ul>
  </li>

  <li><strong>Table</strong> - The table displays a list of users and user groups that are members of the group being edited. The table contents can be <a href="../../../../../alvao-asset-management/working-with-tables">customized</a> as needed.</li>

</ul>

</asp:Content>
