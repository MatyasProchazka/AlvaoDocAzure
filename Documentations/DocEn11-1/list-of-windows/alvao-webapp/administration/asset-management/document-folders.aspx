<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Document Folders</h1>
<p>On this page, you can manage <a href="../../../../alvao-asset-management/documents">document folders</a>, where authorized users then save documents.</p>
<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Folder</strong> - create a new folder of documents.</li>
  <li><strong>Edit</strong>
  <ul>
  <li><strong>Properties</strong> - edit the basic attributes of the folder.</li>
  <li><strong>Security</strong> - edit access permissions to documents in the folder.</li>
  </ul>
  </li>
  <li><strong>Delete</strong> - permanently delete a document folder including all set permissions.</li>
  </ul>
  </li>
  <li><strong>Document Folders Table</strong> - contains all document folders and their selected attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
</ul>
</asp:Content>
