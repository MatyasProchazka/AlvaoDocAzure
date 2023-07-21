<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Approve or reject</h1>
<p>Use this form to approve or reject a pending <a href="../../../../alvao-service-desk/requests/request-approval">request approval</a>.</p>

<p>Options:</p>
  <ul>
  <li>
  <strong>Message for the approver</strong> - a message describing the subject of the approval (i.e. what exactly is to be approved). You will also receive this message in the email notification of the start of the approval.</li>
  <li>
  <strong>Comment</strong> - if applicable, write your comment on the approval or rejection.</li>
 <li><strong>Attachments</strong> - list of attachments to the comment<ul>
  <li><strong>Add attachment</strong> - select the file you want to add as an attachment.</li>
  </ul>
  </li>
  <li>
  <strong>Approve</strong> - press this button to approve the request.</li>
  <li>
  <strong>Reject</strong> - press this button if you want to reject the application.</li>
  </ul>

</asp:Content>
