<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Transit to status</h1>
<p>Use this form to move the selected request to a specific status in the <a href="../request">solving process</a>. The specific content of the form depends on the system settings and some fields may not be displayed in certain situations.</p>

<p>Options:<ul>
  <li><b>Comment for requesters</b> - write a message for requester that will be sent to them in an email notification of a change in the status of the request.<div class="note">
	  <div class="icon"></div>
	  <div class="title">Note:</div>
   This field is only displayed if a status change notification is to be sent to the requester during the status transition and the <a href="../../administration/service-desk/process/detail/status-request/requester-notification-template">Requester Status Change Notification Template</a> has a variable [$CommentForRequester$] representing a comment to the requester.  </div>
  </li>
 <li><strong>Attachments</strong> - a list of attachments for the comment for the requester<ul>
  <li><strong>Add attachment</strong> - select the file to attach as an attachment.</li>
  </ul>
  </li>
	  <li><b>Preview of notifications to requester about the change of status</b> - preview the resulting notification that the applicant will receive.<br /><br /></li>
  <li><b>Comments for approvers</b> - write a message for approver, which will be sent to the approver, among other things, in the email notification. In the case of a multi-step approval scheme, this comment is sent to the current approvers at the beginning of each step. This field is only displayed on the form if the transition to a new status automatically triggers the approval of the request. <div class="note">
	  <div class="icon"></div>
	  <div class="title">Note:</div>
   This block of form only appears if the <a href="../../administration/service-desk/process/detail/status-request/approval-message-template">Approval message template</a> has variable [$CommentForApprover$] representing the comment for the approver.  </div>
  &nbsp;</li>
 <li><strong>Attachments</strong> - a list of attachments for the approver comment<ul>
  <li><strong>Add attachment</strong> - select the file to attach as an attachment.</li>
  </ul>
  </li>
	  <li><b>Preview of the message for approvers</b> - preview the resulting notification to the approvers.</li><br />&nbsp;<li><em>Mandatory Items</em> - the following are the items in the request that are <b>required</b> for the status that the request transitions to. Mandatory items that already have a value are also displayed on the form for checking and possibly changing values.</li>
	<li><strong>Cost Report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">show the work time</a> spent resolving the request.</li>
  </ul>
</p>
  <div class="note">
  <div class="icon"></div>
	<div class="title">Note:</div>
  If the request is currently in the approval process, the status of the request cannot be changed </div>
  

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>

