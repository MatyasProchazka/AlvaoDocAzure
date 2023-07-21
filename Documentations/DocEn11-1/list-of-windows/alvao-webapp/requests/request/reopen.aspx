<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Reopen</h1>
<p>Use this form to <a href="../../../../alvao-service-desk/requests/reopen-for-further-resolution">reopen</a> selected resolved or closed requests for resolution. The content of the form varies depending on whether you are the requester of the request or a member of the service resolution team.</p>
<p>Options:</p>
	<ul>
 
 <li><strong>Reason</strong> - Write a message to the request handler explaining why you are reopening the request. This field is only displayed to requesters of the request.</li>
  <li><strong>Message for requester</strong> - write a message for requester that will be sent in an email notification. This field is only displayed to members of the project team.</li>
 <li><strong>Attachments</strong> - list the attachments of the message to the investigator (<em>Reason</em> field) or applicant<ul>
  <li><strong>Add Attachment</strong> - select the file to add as an attachment.</li>
  </ul>
  </li>
	<li><strong>Cost Report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">list the work time</a> spent on the request.</li>

 <li><strong>Do not send notifications to the requester</strong> - turn on if you do not want to notify the requester when the request is reopened. This field is only displayed to members of the resolution team.</li>
	</ul>

</asp:Content>
