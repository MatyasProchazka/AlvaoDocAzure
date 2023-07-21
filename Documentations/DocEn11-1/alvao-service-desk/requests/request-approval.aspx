<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request Approval</h1>

    <p>The request may be subject to approval by the responsible persons, i.e., the approvers. Depending on the current status of the request, different approvers may approve the request. The specific approval method is determined by the <a href="../implementation/services/processes">processes settings</a> defined by the system administrator.</p>
    <h2>Starting approval</h2>
    <p>Approval can be started depending on the system settings:</p>
    <ul>
        <li>Automatically - when a request is created or when the request transitions to certain other request statuses, the request is automatically assigned to specific approvers.</li>
        <li>Manually</li>
    </ul>
    <p>If you are the request solver (or another member of the service resolution team) and the request is in a manually triggered approval status, you can initiate approval with the <a href="../../list-of-windows/alvao-webapp/requests/request/have-approved">Let-Approval</a> command, in which you select an approver and add a comment with additional information, instructions, etc.</p>
    <h2>Approve or Reject</h2>
    <p>If you are the approver of the request, you will receive an email notification once approval has started. In the notification you will find the necessary instructions and a link to the <a href="../../list-of-windows/alvao-webapp/requests/request/approve-or-reject">approve or reject</a> form.</p>
    <p>In your <a href="../../list-of-windows/alvao-webapp/settings/out-of-office">absence</a>, your representative can approve for you.</p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        When approving by email, where the <em>Approve</em> and <em>Deny</em> buttons in the approval initiation notification open a new message for sending, never change the completed recipient or subject line in the sent message. Otherwise the message will not be processed automatically.
    </div>

    <h2>Evaluation of the approval</h2>
    <p>If you are a request solver (or other member of the service resolution team), you can clearly monitor and manage the progress of the approval process on the <a href="../../list-of-windows/alvao-webapp/requests/request">Approval</a> tab.</p>
    <p>When the approval is complete, use the <i>Go to status</i> command to switch the request to the next status according to the approval result, e.g. to the <i>Realized</i> status if the request is approved, to the <i>Denied</i> status if the request is rejected.</p>
    <p>The system can also be configured so that when the approval is complete, the request moves to the next status automatically according to the approval result.</p>

    <h2>Expiration and cancellation</h2>
    <p>For approval, a time period can be set within which the approver must either approve or reject the request. After this time period, the approval expires. The approver will then receive an expiration notification.</p>
    <p>The solver (or any other member of the service's resolution team) can also cancel a pending approval on the <a href="../../list-of-windows/alvao-webapp/requests/request">Approval</a> tab with the <em>Cancel Approval</em> command. The approver will then receive a notification that the approval has been cancelled.</p>
</asp:Content>
