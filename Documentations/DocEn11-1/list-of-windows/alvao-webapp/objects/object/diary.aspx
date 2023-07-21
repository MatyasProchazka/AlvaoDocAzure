<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Log</h1>

  <p>On this tab, you will find the log of the selected object.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command Panel</b>
  <ul>
  <li><b>Open Attachment</b> - open or download the attachment of the selected journal entry. If the record has multiple attachments, select the attachment you want to open in the menu that appears.</li>
  </ul>
  </li>
  <li>
  <b>Log table</b> - contains the log entries of the selected object. You can <a href="../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.
  Unlike the AM Console, the table does not display requests and documents, nor can you view deleted records.  </li>
  </ul>

</asp:Content>
