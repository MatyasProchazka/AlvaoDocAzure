<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

  <h1>Requests list</h1>
  <p>
  The list of requests is displayed in the ALVAO WebApp on the <a href="../requests">Requests</a> page and also on some other pages.
  </p>

  <p>
  If you want to customize the sorting or filtering of requests in the current view, use the <b>Table</b> command to switch the list view to a table, <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>, and then switch the view back using the <b>Table</b> command.
  Commands to switch the view mode are also available in the view menu - <b>Display options - Show Table/Tables</b>. In <b>Settings</b> - <a href="../settings/view">View</a>
  you will find additional options for setting the appearance of both the tile list and the table.  </p>

  <p>
  In <i>Table</i> mode, unlike the default <i>Tiles</i> mode, you can select multiple requests at once and perform bulk operations on them.  </p>

  <h2>Number of unread requests in view</h2>
  <p>
  Use the command in the current view menu - <b>Display options - Show the number of unread requests</b> with the view name after it to display the number of unread requests in the view, even if the view is not currently active. This makes it easy to see on the page that a new request or message has been added to the view without having to refresh the page or switch views.  </p>

  <h2>Requests archive</h2>
  <p>
  Resolved and closed requests are automatically moved to the archive 6 months after resolution. By default, archived requests are not displayed in the request table. You can view them using the command in the view menu - <b>Display options - Display archive</b>. If a closed request is reopened, it is automatically moved from the archive back to the active requests.  </p>

  <a name="ShowTicketRelations"></a><h2>Request Links</h2>
  <p>
  If you are using linkss between requests, in <i>Table</i> mode, use the command in the current view menu - <b>Display options - Display links</b> to enable browsing <a href="../../../alvao-service-desk/requests/relations">links</a> directly in the table. In the <i>RequestName</i> column, this will display arrows to expand the linkss for requests that have other requests linked to them. Then, in the view, to better navigate between the linked requests, we recommend that you also display the <a href="#TicketRelationType">Link type</a> column. You can use the <b>Hide links</b> command to turn off the display of linked requests in the table.  </p>

  <h2>Table columns</h2>
  <p>You can view the columns below in the requests table.</p>
  <p>Regular applicants (i.e., applicants who are not members of a service's project team) have, for simplicity, only a limited range of columns available, see the value <em>Yes</em> in the <em>Available to Regular Applicants</em> column in the table below.</p>

  <table>
  <tr>
  <th>Column name</th>
  <th>Description</th>
  <th>Available to regular applicants</th>
  </tr>
  <tr>
  <td>Current target</td>
  <td>The goal that the solver is currently expected to achieve in a given request, i.e., first response, request resolution, or other internal goal. For first response and resolution, the current goal and its deadline is <a href="../../../alvao-service-desk/implementation/services/operating-hours">set automatically according to the selected SLA</a>.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Current target (due date)</td>
  <td>Deadline of <a href="../../../alvao-service-desk/requests/deadline">response, resolution</a>, or <a href="../../../alvao-service-desk/requests/internal-target">internal target</a>, i.e. the target specified in the <em>current-target</em> column.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Current target (remaining hours)</td>
  <td>Time until the current target expires. Data is calculated in <a href="../../../alvao-service-desk/implementation/services/operating-hours">operating hours</a>
  and can be supplemented with <a href="#icons">icons</a>.<br />
  <img src="../../../alvao-service-desk/requests/hdtlCloseToDeadline.png" alt="Less than 8 hours left until deadline" />
  Less than 8 hours left until the current target date.<br />
  <img src="../../../alvao-service-desk/requests/hdtlAfterDeadline.png" alt="The deadline for the current goal is exceeded" />
  The deadline of the current target is exceeded.<br />
  <img src="../../../alvao-service-desk/requests/hdtlSlaPaused.png" alt="The request has a suspended SLA" />
  The request has a suspended SLA.<br />
  </td>
  <td>No</td>
  </tr>
  <tr>
  <td>Overall satisfaction</td>
  <td>Feedback from the applicant - overall satisfaction with the solution</td>
  <td>No</td>
  </tr>

  <tr>
  <td>Time traveled (hours)</td>
  <td>Sum of all the &quot;time en route&quot; items that have been reported for the request.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Waiting for email</td>
  <td>E-mail to the recipient of the last email from which we are waiting for a response.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Waiting for requester (hours)</td>
  <td>If Waiting for Requester is enabled - that is, the solution cannot currently proceed without a response from the Requester - the number of hours waited is listed in the field. The field is blank if waiting for the applicant is disabled.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Waiting for applicant (hours)</td>
  <td>Total time in hours (including the current wait) for the Requester within the request.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Request number</td>
  <td>The unique request number assigned to the request when it was created.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Device Number</td>
  <td>The device number is the unique number that was assigned to the device when it was created in Asset Management. If you are using Service Desk in combination with Asset Management, you can include the device number to which the request applies in the request.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Read</td>
  <td>Shows &quot;Yes&quot; if the logged-in user is only a reader of the service and not a member of its resolution team.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Time open (hours)</td>
  <td>The total time the request has been open, i.e. from the time the request was submitted until the request is resolved or until the present time if the request is open. If the request has been reopened, the value in this column includes the time when the request was temporarily resolved.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Open time without waiting for the requester (hours)</td>
  <td>The total number of hours the request was open, i.e. from the time the request was made until it was resolved (or up to the present), EXCEPT the time during which the Requester was pending (during which time resolution could not proceed).</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Opening time without SLA pause (hours)</td>
  <td>Opening time without SLA pause (hours) The total number of hours the request has been open, i.e. from the time the request was submitted to the time it was resolved (or up to the present), NOT including the time during which the SLA was suspended.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Impact</td>
  <td><a href="../../../alvao-service-desk/implementation/services/impact-urgency">Fall</a> (un)resolved request</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Icons</td>
  <td>

  <p>
  Icons illustrating the current status of the request:<br />

  <img src="../../../alvao-service-desk/requests/hdtlResolved.png" alt="Resolved request" />
  Resolved request<br />
  <img src="../../../alvao-service-desk/requests/removed.png" alt="Request removed" />
  Deleted request<br />
  <img src="../../../alvao-service-desk/requests/hdtlNew.png" alt="Request has no solver" />
  The request has no solver.<br />
  <img src="../../../alvao-service-desk/requests/hdtlNoDeadline.png" alt="Request has no resolution date set" />
  Request has no resolution date set.<br />
  <img src="../../../alvao-service-desk/requests/hdtlSlaPaused.png" alt="Request has SLA suspended" />
  The request has a suspended SLA.<br />
  <img src="../../../alvao-service-desk/requests/hdtlApproval.png" alt="Request has approval in progress" />
  Approval is in progress on the request.  </p>
  Sort requests by this column:<br />
  <ol>
  <li>request does not have a resolution date and does not have a solver</li>
  <li>request has a deadline for resolution and no resolution</li>
  <li>request has no deadline for resolution and has a solver</li>
  <li>request has a deadline for resolution and has a solver</li>
  <li>request is resolved</li>
  <li>request is closed</li>
  </ol>
  In the case of equal ranking, the secondary ranking is based on the amount of time the current goal deadline was exceeded, respectively, / by the time to the current goal deadline.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Internal target</td>
  <td>The name of the internal goal in the request solution set by a member of the solution team.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Internal target (due date)</td>
  <td>Deadline for internal target</td>
  <td>No</td>
  </tr>

  <tr>
  <td>To be resolved</td>
  <td>A value of &quot;Yes&quot; (&quot;1&quot;) means that you are currently responsible for resolving the request, i.e. you are the solver of the request, or you are a member of the resolution group to which the request has been assigned, or the request does not have a solver and you are the main solver of the request service (or the main solver of the service for the Requester).
  Otherwise, the column is set to &quot;No&quot; (&quot;0&quot;).
  </td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>For approval</td>
  <td>If the request is in <a href="../../../alvao-service-desk/requests/request-approval">approval</a> and the logged-in user is one of the approvers, this entry is set to &quot;1&quot; (&quot;Yes&quot;).</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Comments and notes</td>
  <td>Feedback from the applicant - additional comments and notes on the resolution of the request.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>The deadline for reopening a request by the requester is by (date)</td>
  <td>Time by which the requester may reopen the request if not satisfied with the resolution of the request. The deadline for reopening is calculated from the resolution of the request and can be set in <strong>ALVAO WebApp - Administration - Service Desk - Services - Edit Service - Properties</strong> - <strong>Advanced</strong> section.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>My Request</td>
  <td>Displays "Yes" if you are the requester or co-requester of the request.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Urgency</td>
  <td><a href="../../../alvao-service-desk/implementation/services/impact-urgency">Urgency</a> of request resolution</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Request name</td>
  <td>The current name of the request.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Highest service</td>
  <td>The root service that is superior to the service in which the request is based. Root services are displayed on the home page of the <a href="../../../itil/service-catalog-management">Service Catalog</a>.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Objects</td>
  <td>Name of the first object from ALVAO Asset Management that is linked to the request, see Request - <a href="request">Objects</a> tab.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Expertise</td>
  <td>Feedback from the applicant - evaluation of the expertise of the research team.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Deleted</td>
  <td>Date of removal for removed requests.<br />
  To view deleted requests in the <strong>View</strong> menu
  turn on Deleted Items.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Organization</td>
  <td><a href="../../../alvao-service-desk/implementation/users/companies">Organization</a> associated with the request (can be the Requester organization or a manually set organization).</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Number of open child requests</td>
  <td>The number of open subrequests of the request. The specific requests can be found on the links tab of the request. For details, see <a href="../../../alvao-service-desk/requests/relations">Request links</a>.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Number of child requests</td>
  <td>The number of child requests of the given request. See item above for more details.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Number of links</td>
  <td>The number of requests for which a given request has any <a href="../../../alvao-service-desk/requests/relations">links</a> entered.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Request Description</td>
  <td>Description of the request as provided in the request creation message.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Order of request solving</td>
  <td>The order in which the request will be resolved. The order of request solving is maintained for each solver separately.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Last activity (date)</td>
  <td>Date and time of the last entry (activity) in the request log.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>SLA Suspension (hours)</td>
  <td>The number of hours of SLA suspension currently in progress due to waiting for a requester or request status.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>SLA paused (hours)</td>
  <td>Total time in hours that the SLA has been suspended for the request (including the SLA suspension currently in progress)</td>.
  <td>No</td>
  </tr>
  <tr>
  <td>Notes</td>
  <td>Request Notes</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requested for</td>
  <td>Name and surname of the user for whom the request was created.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Work (hours)</td>
  <td>Total all the work reported for resolving the request.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Priority</td>
  <td>Priority of addressing the request for the internal needs of the solution team.<br />
  Meaning of displayed icons:<br/>
  <img src="../../../alvao-service-desk/requests/Priority5.png" alt="Critical" />
  Critical<br/>
  <img src="../../../alvao-service-desk/requests/Priority4.png" alt="High" />
  High<br />
  (no icon) Medium<br />
  <img src="../../../alvao-service-desk/requests/Priority2.png" alt="Low" />
  Low<br/>
  <img src="../../../alvao-service-desk/requests/Priority1.png" alt="Scheduling" />
  Scheduling<br />
  <br />
  The priority can be set by the solution team members themselves, or it can be determined by the values of the <a href="../../../alvao-service-desk/implementation/services/impact-urgency">impact and urgency</a> items. </td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Process</td>
  The <td><a href="../../../alvao-service-desk/implementation/services/processes">Process</a> that is set on the service that handles the request.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Professionalism</td>
  <td>Requester feedback - an evaluation of the professionalism of the request resolution.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Read</td>
  <td>Contains a value of <em>Yes</em> if you have read the request, i.e. there are no new messages or other events in the request on the <em>Communications</em> tab that you have not yet read. A value of <em>No</em> means that you have not read the request.  <p>These values are only displayed in requests whose unreadness you are monitoring, see <em>WebApp - User Menu - Settings - </em><a href="../../../list-of-windows/alvao-webapp/settings">Display</a><em>
  - Requests - In the request lists, highlight unread requests</em>.
  In other requests, this column has a blank value.  </p>
  </td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Received</td>
  <td>If the request was created from an email sent to the service mailbox, the date of receipt into the system is displayed.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Resolution speed</td>
  <td>Feedback from applicant - satisfaction with resolution speed</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Solver</td>
  <td>Current solver of the request</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Solver (e-mail)</td>
  <td>E-mail address of the request solver</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Solver (office)</td>
  <td>solver's office</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Solver (mobile)</td>
  <td>Request handler's mobile phone number</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Solver (department)</td>
  <td>Request handler's department</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Solver (work phone)</td>
  <td>Solver's work telephone number</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Solver group</td>
  <td>Current resolution group to which the request is assigned for resolution.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Group</td>
  <td>An item that allows further sorting of requests into groups, allowing easier filtering and statistical evaluation of requests.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>SLA</td>
  <td><a href="../../../alvao-service-desk/implementation/services/sla">Service Level Agreement</a> according to which a given request is addressed.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Request following</td>
  <td>Shows Yes if the logged-in user is <a href="../../../alvao-service-desk/requests/subscribers">following a request</a>.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Service</td>
  <td><a href="../../../alvao-service-desk/implementation/services">Service</a> within which the request is currently being addressed.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Related Organization</td>
  <td><a href="../../../alvao-service-desk/implementation/users/companies">Organization</a> to which the request relates. Usually this is the requesting organization, but it can also be another organization, e.g.&nbsp; in the case of an internal request for proactive remote control of the operation of a system at a specific customer, this is the customer, while the Requester of the request is an internal employee (e.g. a member of the service solution team).</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Request participants</td>
  <td>The first and last name of the <a href="../../../alvao-service-desk/implementation/services/service-roles">co-applicant</a> of the request. If there are multiple co-users, the text "(multiple co-users)" is displayed. You can edit the co-users on the <a href="../../../list-of-windows/alvao-webapp/requests/request">Request</a> - General tab.
</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Status</td>
  <td>Status according to the request resolution procedure. The solving process is defined by the <a href="../../../alvao-service-desk/implementation/services/processes">process</a> of the service.</td>
  <td>Yes</td>
  </tr>
 <tr>
  <td>Tag</td>
  <td>The color of the tag with which you have marked this request, see the <a href="request">Request</a> - Tag command. You can only label a request with one color. The selected tag is only displayed to you. Other users may have the same request tagged with a different color tag.</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td><a name="TicketRelationType"></a> Link type</td>
  <td>This column contains values only in the table on the <a href="request">Request page</a> - <em>Links</em> tab, and in other request tables only when <a href="#ShowTicketRelations">request links</a> is enabled.<br />
  <br />
  For example, on the request page 1 on the <em>Links</em> tab:<table>
  <thead>
  <tr>
  <th>Link type</th>
  <th>Request Number</th>
  <th>Request Name</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Precedes before</td>
  <td>2</td>
  <td>&nbsp;request 2</td>
  </tr>
  </tbody>
  </table>
  This row in the table means that request 1 <a href="../../../alvao-service-desk/requests/relations">precedes</a><em> </em>request 2.<br />
  On the <a href="../requests">requests</a> page, with <a href="#ShowTicketRelations">links displayed</a>, it will look like this:<br />
  <table>
  <thead>
  <tr>
  <th>Link type</th>
  <th>Request Number</th>
  <th>Request Name</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>&nbsp;</td>
  <td>1</td>
  <td>in request 1</td>
  </tr>
  <tr>
  <td>Precedes before</td>
  <td>2</td>
  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &gt; Request 2</td>
  </tr>
  </tbody>
  </table>
  <br />
  </td>
  <td>No</td>
  </tr>
  <tr>
  <td>Due date</td>
  <td>A set <a href="../../../alvao-service-desk/requests/deadline">deadline for resolving</a> the request</td>
  <td>Yes</td>
  </tr>
 <tr>
  <td>Warning</td>
  <td>Warning of a problem with a request, e.g. an upcoming SLA request resolution deadline, see SLA - <a href="../administration/service-desk/sla/detail/notice-notice">Notification Rule</a></td>
  <td>No</td>
  </tr>
  <tr>
  <td>Closed</td>
  <td>Date <a href="../../../alvao-service-desk/requests/close-request">closed</a> request</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Solved</td>
  <td>Date of <a href="../../../alvao-service-desk/requests/resolve-request">resolved</a> request</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Created</td>
  <td>Date of <a href="../../../alvao-service-desk/requests/new-request">request origination</a> (i.e. the request was entered into the system)</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Distance (km)</td>
  <td>Sum of all kilometres that have been driven as part of the request resolution.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Alert severity</td>
  <td>Alert severity for the request issue, see <em>Alert column</em>.</td>
  <td>No</td>
  </tr>
  <tr>
  <td>Request submission method</td>
  <td>The way the request was created, i.e. the type of request creation event. <div class="ticket">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  The value can be used to distinguish if the requester submitted the request self-service (form, email) or if the main solver wrote the request (phone, face-to-face meeting, ...).
  </div>
  </td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester</td>
  <td>Name and surname of the user who submitted the request.  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The request stores the Requester's contact information valid at the time the request was created. Additional changes to the contact details in the <em>Administration</em> - <a href="../administration/users">Users</a> section will not be reflected in existing requests.  </div>
  </td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Applicant (e-mail)</td>
  <td>E-mail of the Requester</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (e-mail 2)</td>
  <td>Second Requester email</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (position)</td>
  <td>Function held by the requester</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (other contact)</td>
  <td>Other contact for the requester, if any</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (office)</td>
  <td>Designation of the office of the requester</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (mobile)</td>
  <td>Requester's mobile phone number</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (department)</td>
  <td>Department where the requester works</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (organisation)</td>
  <td>Organisation of the requester</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (work phone)</td>
  <td>Employment phone to the Requester of the request</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td>Requester (work phone 2)</td>
  <td>Second work phone per claimant request</td>
  <td>Yes</td>
  </tr>
  <tr>
  <td><em>request items, requester, solver, SLA, service, and related organization</em></td>
  <td>Additional columns representing <a href="../../../alvao-service-desk/implementation/custom-items">custom fields</a> of the request, person, SLA, service, or organization.</td>
  <td>No</td>
  </tr>
  </table>
  

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>



