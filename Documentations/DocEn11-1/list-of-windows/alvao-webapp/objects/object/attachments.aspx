<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Attachments</h1>

 <p>On this page, you see attachments of the object. An attachment can be a file, a link to a web page, or a <a href="../../documents">document</a>.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command panel</b>
  <ul>
  <li><b>Add file</b> - attach a file to the object.<ul>
      <li><a href="add-link">Add link</a> - attach a web page or link to any other external resource to the object.</li>
      <li><a href="add-document">Add document</a> - attach a <a href="../../documents">document</a> to the object.</li>
      </ul>
      </li>
      <li><strong>Remove attachment</strong> - detach the selected attachments from the object. In the case of attached files and links, the attachments are irreversibly deleted. In the case of attached documents, the documents are only detached from the object.</li>

  </ul>
  </li>
    <li><b>Attachment table</b> - contains all attachments of the object. You can <a href="../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li> 
  </ul>

</asp:Content>
