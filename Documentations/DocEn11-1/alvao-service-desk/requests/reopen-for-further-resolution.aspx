<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Reopen request for resolution</h1>
    <p>If you are not satisfied with the resolution of the request, you can use the <a href="../../list-of-windows/alvao-webapp/requests">Reopen</a> command to reopen the request for resolution. This will put the request into the system state <em>Reopened</em> and restart the time to resolution measurement according to the SLA. The time it took to resolve the request is counted as <a href="wait-for-response">waiting for the requester</a> and may or may not count towards the SLA resolution time, depending on the system settings.</p>
    <p>A request may be reopened by both its requester (or request participant), and any member of the service resolution team. However, as a requester, you can only reopen a request within a set <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/extended">time limit</a> from resolution.</p>
    <p>If the request is reopened by a member of the resolution team, the requester is notified by email.</p>

    <p>
        If the solver of the reopened request has removed or <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">blocked</a> user account, or is <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">hidden in menus</a>, the request is automatically returned to the service's main solvers when reopened.
    </p>

    <h2>Response of the applicant to the notification of the resolution of the request</h2>
    <p>After your request has been resolved, you will receive an email notification from the solver. If you reply to this notification within the time limit set for reopening the request, your request will automatically be reopened for resolution.</p>
    <p>If you reply after the deadline for reopening the request has passed, depending on the system settings, either a new request will be automatically created or the system will reject your reply. In either case, you will be notified by e-mail.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can also send a new message to the request instead of replying to the notification of the request being resolved. It is important that the sender of the message is the Requester of the request, the subject line includes the request tag, and the recipients include the email address of the service.
    </div>

</asp:Content>

