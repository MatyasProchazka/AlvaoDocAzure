<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Documents</h1>

  <p>On this page, you can work with <a href="../../alvao-asset-management/documents">Documents</a> in ALVAO Asset Management.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command panel</b>  <ul>
    <li><a href="documents/new-document">New document</a> - create a new document. </li>
          <li><a href="documents/document/edit">Edit</a> - edit the properties of the selected documents.</li>
          <li><strong>Delete</strong> - delete the selected documents.<br />
              Deleted documents disappear from the table, but you can view them by opening the drop-down menu on the table view tab and selecting the <em>Display options - Display deleted</em> command.</li>
          <li><strong>Restore deleted</strong> - restore the selected documents that were previously deleted by the <em>Delete</em> command.</li>
  </ul>
  </li>
    <li><b>Document table</b> - contains all documents. You can <a href="../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li> 
    <li><a href="documents/document">Selected document</a> - after selecting a document in the table, the panel with the selected document will appear on the right.</li>
  </ul>
 
</asp:Content>



