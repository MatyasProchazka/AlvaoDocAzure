<%@ Page masterpagefile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Detection Profiles</h1>
  <p>On this page you can manage <a href="../../../../alvao-asset-management/implementation/detection">detection profiles</a>.</p>
<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Profile</strong> - create a <a href="detect-profiles/create-profile">new detection profile</a>.</li>
  <li><strong>Edit</strong> - edit the selected detection profile.</li>
  <li><strong>Delete</strong> - delete the selected detection profile.</li>
  </ul>
  </li>
  <li><strong>Detection Profile Table</strong> - contains all detection profiles. Customize the table <a href="../../../../alvao-asset-management/working-with-tables">as needed</a>.</li>
  <li><strong>Selected Profile</strong> - after selecting a detection profile in the table, the <a href="detect-profiles/detail">view</a> with information about the selected profile will be displayed on the right.</li>
</ul>

</asp:Content>
