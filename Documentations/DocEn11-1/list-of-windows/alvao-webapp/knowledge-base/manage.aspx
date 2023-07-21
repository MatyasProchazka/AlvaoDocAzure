<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Manage</h1>
  <p>On this page you can create new and edit existing <a href="../../../alvao-service-desk/knowledge-base">knowledge</a>.
  </p>

  
  Options:<ul>
  <li>Command Panel<ul>
  <li><a href="manage/new-knowledge">New Knowledge</a> - create new knowledge</li>
  <li><strong>View</strong> - display the knowledge in a new browser tab</li>
  <li><a href="manage/edit-knowledge">Edit</a> - edit the selected knowledge</li>
  <li><strong>Delete</strong> - delete the selected knowledge. This will stop the knowledge from being normally displayed to users, but will remain stored in the database. You can view the removed knowledge in the table on this page by unchecking the default filter in the <em>Removed</em> column, or by creating a new view in the table with the <em>Removed = Yes</em> filter.</li>
  <li><strong>Restore deleted</strong> - restore the first removed knowledge. In the <em>Removed</em> column, the value will change to <em>No</em> and the knowledge will be displayed to users again as normal.</li>
  </ul>
  </li>
  <li>Knowledge table - the table contains all the knowledge that you have the right to edit. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>


