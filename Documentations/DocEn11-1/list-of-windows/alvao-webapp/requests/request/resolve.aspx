<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Resolve</h1>
  <p>Use this form to <a href="../../../../alvao-service-desk/requests/resolve-request">resolve</a> the selected request. This will cause the request to go to the <em>Resolved</em> or <em>Closed</em> status, depending on the system settings.</p>
  <p>Options:</p>

  <ul>
  <li>
  <strong>Message for requester</strong> - write a message to the applicant that will be sent to them in an email notification.<br />
  <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  For frequently repeated message text, create articles in the <a href="../../../../alvao-service-desk/knowledge-base">knowledge base</a>. Then use the <em>Knowledge Base</em> button to insert the article content into the message.  </div>
  </li>
  <li><strong>Attachments</strong> - list of attachments to the report for the applicant<ul>
  <li><strong>Add attachment</strong> - select the file you want to add as an attachment.</li>
  </ul>
  </li>

  <li>
  <strong>Resolve back to</strong> - if you have resolved the request previously, e.g. personally at the applicant's workplace, and you are entering it into the application afterwards, enter the date and time of the actual resolution of the request. The time by which you can write the resolution retrospectively may be limited by <a href="../../administration/service-desk/process/detail/status-request/behavior">system settings</a>.</li>
	<li><strong>Cost Report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">show the work time</a> spent resolving the request.</li>

  <li><strong>Do not send notifications to the requester</strong> - turn on if you do not want to notify the Requester by email when the request is resolved, e.g. if you have notified them in person or the request has been reopened by mistake.</li>
  </ul>

</asp:Content>
