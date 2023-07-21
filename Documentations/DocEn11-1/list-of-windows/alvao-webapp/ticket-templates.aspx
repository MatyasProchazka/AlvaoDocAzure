<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Request templates</h1>
  <p>On this page you can manage <a href="../../alvao-service-desk/requests/ticket-templates">request templates</a>.</p>

  <p>
  Options:</p>
  <ul>
  <li><strong>Command Panel</strong><ul>
  <li><a href="ticket-templates/new-template">New template</a> - create a new request template</li>
  <li><a href="ticket-templates/edit-template">Edit</a> - edit the selected template</li>
  <li><a href="ticket-templates/schedule-template">Schedule</a> - schedule the automatic creation of requests according to the selected template</li>
  <li><strong>Delete</strong> - delete the selected template. This will stop the template from appearing normally in the application, but it will remain stored in the database. In the table on this page, you can view the deleted templates by using the command in the view menu - <em>View Deleted</em>.</li>
  <li><strong>Restore Deleted</strong> - restore the first removed template. The template will be displayed normally in the application again.</li>
  </ul>
  </li>
  <li><strong>Template Table</strong> - the table contains all the templates you have the right to edit.  You can <a href="../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

