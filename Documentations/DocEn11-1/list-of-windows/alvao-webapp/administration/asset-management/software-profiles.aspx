<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Software Profiles</h1>
<p>On this page you can manage <a href="../../../../alvao-asset-management/software-management/software-profiles">software profiles</a>.</p>
<p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Profile</strong>- create <a href="software-profiles/create-profile">new software profile</a>. </li>
  <li><strong>Edit</strong>- edit the selected software profile. The menu contains the same commands as the blocks in the <a href="software-profiles/detail">preview</a> of the selected software profile.</li>
  <li><strong>Delete</strong>- delete the selected software profile. </li>
  </ul></li>
  <li><strong>Software Profiles Table</strong>- contains all created software profiles and their selected attributes. Customize the table <a href="../../../../alvao-asset-management/working-with-tables">as needed</a>.</li>
  <li><strong>Selected Software Profile</strong>- After selecting a software profile in the table, a <a href="software-profiles/detail">view</a> with information for that profile will appear on the right. The individual blocks of the preview display the <em>Edit</em> command to modify the profile settings.</li>
  </ul>
</asp:Content>
