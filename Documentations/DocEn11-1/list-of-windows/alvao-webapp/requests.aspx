<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Requests</h1>
  <p>On this page you can see <a href="../../alvao-service-desk/requests">requests</a> in ALVAO Service Desk. It is the default page for members of service resolution teams.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command Panel</b>
  - The panel displays commands for working with requests, depending on the status and number of requests selected. These commands can also be found in the local menu under the right mouse button.&nbsp; <ul>
  <li><a href="requests/new-request">New request</a> - create a new request, usually based on a call from the requester.</li>
  <li><a href="requests/request/message">Reply to Requester</a> - <a href="../../alvao-service-desk/requests/send-message">send a message</a> to the Requester of the request. To maintain a single conversation thread with the requester, the message is sent in response to the last message from or to the requester (i.e., the requester is one of the recipients of the message sent or received) within the selected request.<ul>
  <li><a href="requests/request/message">Send a message</a> - send a generic email message.</li>
  </ul>
  </li>
  <li><a href="requests/request/note">Note</a><strong> </strong>- write a new note in the log of the selected request. You can select other event types from the drop-down menu of this command:<ul>
  <li><strong>Phone Call</strong> - record the contents of a phone call with a requester, supplier, colleague, etc.</li>
  <li><strong>Personal Meeting</strong> - minutes of a personal meeting.</li>
  <li><strong>Other</strong> - minutes of other means of communication.</li>
  </ul>
  </li>
  <li><a href="requests/request/resolve">Resolve</a> - <a href="../../alvao-service-desk/requests/resolve-request">resolve</a> selected requests.</li>
  <li><a href="requests/request/deadline">Due date</a> - change the deadline to resolve selected requests</li>
  <li><a href="requests/request/approve-or-reject">Approve or reject</a> - approve or reject a request. This command is displayed only to the current approvers of the selected request.</li>
  <li><a href="requests/request/have-approved">Begin approval</a> - initiate <a href="../../alvao-service-desk/implementation/services/processes/request-approval">approval</a> of the selected request. This command only appears in the approval statuses of the selected request.</li>
  <li><a href="requests/request/edit">Edit</a> - edit the items of the selected request.</li>
  <li><a href="requests/request/transit-to-state">Transit to status</a><strong> </strong>- transition the selected request to the next status in the solving process. For other statuses that can be transitioned to, see the drop-down menu for this command. </li>
  <li><a href="requests/request/assign-to-solver">Assign</a><strong> </strong> - assign the selected requests to a specific solver or to the entire solver group.</li>
  <li><strong>Assign to me</strong> - quickly accept selected requests for solution. The command has the same effect as selecting yourself in the <em>Assign</em>.</li>
  <li><a href="requests/request/assign-to-solver">Return to the main solver</a> - return selected requests to the service's master solvers.</li>
  <li><a href="requests/request/move-to-another-service">Move to another service</a><strong> </strong>- <a href="../../alvao-service-desk/requests/move-to-another-service">move</a> selected requests to another service.</li>
  <li><a href="requests/new-request-relations">New linked request</a><strong> </strong>- create a new request that will be <a href="../../alvao-service-desk/requests/relations">linked</a> to the selected request.</li>
  <li><a href="requests/request/reopen">Reopen</a> - <a href="../../alvao-service-desk/requests/reopen-for-further-resolution">reopen</a> the resolved request. This command will put the request into the system status <em>Reopened</em>.</li>
  <li><strong>Tag</strong> - select the color tag you want to use to mark the selected requests from the menu, see Requests - <a href="requests/table-of-requests">Tag</a> column.</li>
  <li><strong>...</strong><ul>
  <li><strong>More</strong><ul>
  <li><a href="requests/request/message">Forward request</a><strong> </strong>- forward a detailed log of the selected request via email. The message is compiled in plain text without formatting and all attachments from all log entries are included.</li>
  <li><a href="requests/request/merge-request">Merge requests</a><strong> </strong>- merge selected <a href="../../alvao-service-desk/requests/duplicate-requests">duplicate requests</a> into one.</li>
  <li><strong>Delete</strong> - delete selected requests. Removed requests will go to the <em>Removed</em> status, </em>they will not appear in the request list, but will still be stored in the database. You can view them in the list of requests by using the command in the view menu - <em>View Options</em> - <em>Show Removed</em> and, if necessary, cancel their removal again by using the <em>Restore Removed</em> command.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>
<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	Additional commands defined by the system administrator can be displayed in the command bar, see <a href="../../modules/alvao-sd-custom-apps/applications/custom-commands">custom commands</a>.
</div>
  </li>
  <li><a href="requests/table-of-requests">Requests list</a> - shows all the requests you have the right to read.</li>
  <li><b>Selected Requests</b> - when you select a request in the list, a panel with that <a href="requests/request">request</a> will appear on the right or bottom of the page. You can choose the location of the panel in <em>User menu – Settings – </em> <a href="../../list-of-windows/alvao-webapp/settings/view">View</a><em> – Requests – Selected request to view</em>.
  </li>
  </ul>


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

