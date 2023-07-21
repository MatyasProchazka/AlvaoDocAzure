<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Begin approval</h1>
  <p>You can use this form to initiate <a href="../../../../alvao-service-desk/requests/request-approval">approval</a> of selected requests.</p>
  <p>Options:</p>

  <ul>
  <li><strong>Change request status to</strong> - select the request status from the menu that the request should change to before approval begins. This option only appears if multiple approval statuses can be moved from the current request status.</li>
  <li><b>Select approver</b> - type part of the approver's name and select the person you are looking for from the menu. This will add the selected person to the list of approvers below the field. Select all the approvers you want to forward the request to for approval in this way. You can search for a group of users in the same way - all members of the group will then be added to the list of approvers.<br />
  If the process settings have <a href="../../administration/service-desk/process/detail/status-request/behavior">automatic transition</a> to the next status after the approval is complete, this field is not available.  </li>
  <li><strong>Approve with schema</strong> - select from the list <a href="../../administration/service-desk/approval-scheme">the schema</a> you want to have the request approved by. This option is only available if in the process settings is enabled <a href="../../administration/service-desk/process/detail/status-request/behavior">automatic transition</a> to the next status after approval is complete.</li>
  <li><strong>Approve by</strong> - select the person to approve the request from the menu. This option is only available if in the process setting is enabled <a href="../../administration/service-desk/process/detail/status-request/behavior">automatic transition</a> to the next status after approval is complete.</li>
  <li><strong>Expires in (hours)</strong> - enter the number of hours after which the approval will expire with the result <em>Expired</em>.</li>
  <li><strong>Message for the approver</strong> - enter more detailed information for the approver, if applicable. The comment will be sent with attachments to the approver(s) in an email notification. In the case of a multi-step approval scheme, this comment is sent to the current approvers at the beginning of each step.</li>
  <li><strong>Attachments</strong> - list of attachments to the comment for the approver <ul>
  <li><strong>Add attachment</strong> - select the file to add as an attachment.</li>
  </ul>
  </li>
  <li><strong>Preview of the message for approvers</strong> - if applicable, preview the notifications received by the approvers.</li>
  </ul>

</asp:Content>
