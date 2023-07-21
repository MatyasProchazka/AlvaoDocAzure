<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	

<h1>User roles in requests and services</h1>

	<p>User roles in services are set in <strong>WebApp - Administration - Service Desk - Services - Edit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/authorization">Permissions</a>.</p>

	<table>
 <thead>
  <tr>
 <th>Permissions</th>
 <th>Main solver</th>
 <th>Solver</th>
 <th>Solving group member</th>
 <th>Exceptional solver</th>
 <th>Manager</th>
 <th>Reader</th>
 <th>Requests reporter</th>
 <th>Approver</th>
 <th>Requester/Request participant</th>
  </tr>
 </thead>
 <tbody>
  <tr>
 <td>Display all requests in the service</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Creating a new request in a service</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- For myself</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Recording the request on behalf of the requester</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Notifications</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- About new requests in the service</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- About the requests without a solver and a solver group</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- About assigning the request to the solver group</td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- About the requests in a given solver group, but without a specific solver</td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- About the requests passed to a given user for resolution</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Receive request for resolution</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Assign the request to another solver for resolution</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Requests Resolution</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Without solver and solver group</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Without solver but passed to the solver group</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Assigned to a given user for resolution</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Passed on to another solver</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Approval or rejection of the request</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
  </tr>
  <tr>
 <td>Request log</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Show all records</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Display records for requesters</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Creating a record</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">partly</td>
  </tr>
  <tr>
 <td>Knowledge base in service</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Knowledge display for requesters</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Knowledge display for solvers</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- <a href="../../../list-of-windows/alvao-webapp/knowledge-base/manage">Knowledge Management</a></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Current messages in service</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Display messages for requesters</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- View messages for solvers</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- <a href="../../../list-of-windows/alvao-webapp/news/manage">Message Management</a></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td><a href="../../../alvao-service-desk/requests/ticket-templates">Request Templates</a> in the service</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- Use of templates</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>&nbsp;&nbsp;&nbsp;- <a href="../../../list-of-windows/alvao-webapp/ticket-templates">Template Management</a></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
 </tbody>
	</table>
  
	<h5>Main solver</h5>
 <p>The main solver handles new requests that do not yet have a solver and passes them on to other solvers as appropriate.</p>
 <p>Each service should have at least one main solver. The only exceptions are services marked as <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">folders</a>, in which new requests cannot be created.</p>
 <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The system itself periodically checks that all requesters in all services have an assigned main solver. If deficiencies are detected, an email alert is sent to the Alvao system 
	 administrators (<i>Administrator</i> role) once a day. You can check service settings immediately after making changes in <em>WebApp Administration - Settings - </em><a href="../../../list-of-windows/alvao-webapp/administration/settings/settings-check">Configuration check</a>.
 </div>
 <p>Each main solver can select a representative to represent them in their absence in <em>User menu - Settings -</em> <a href="../../../list-of-windows/alvao-webapp/settings/out-of-office">Absence</a>.</p>
  
	<h5>Solver</h5>
 <p>The role of the service solver is to resolve requests that are passed to it by the main solver.</p>
 <p>If a service has only one solver, new requests created or moved to that service are automatically passed to that solver for resolution.</p>

	<h5>Solving group member</h5>
 <p>A solver group is a group of solvers that functions as an autonomous team. The main solver (or other solver) can assign a request to the entire group for resolution, which then determines which member of the group will address the request. There can be multiple resolution groups in one service.</p>

	<h5>Exceptional solver</h5>
 <p>An exceptional solver only sees requests that another solver has assign for solution. He cannot see other requests in the service. Nor can they see requests that they have solved in the past but then passed on to another solver.</p>

	<h5>Service manager</h5>
 <p>The Service Manager oversees the resolution of requests.</p>
 <p>If the manager resolves a request without a solver, it automatically becomes the solver. Otherwise, however, manager cannot take over any request for resolution and no one can pass it on.</p>

	<h5>Service team</h5>
 <p>The service team consists of main solvers, solvers, solver groups members and service managers.</p>
 <p>Team members can only search for people who are from the same organisation as them, from the same solution team or are requesters of the service. When searching for organisations, they only see their organisation. They do not see the actual entries of people or their organisations.</p>
 <p>A service team can be split into <a href="../../../alvao-service-desk/implementation/services/service-roles/multiple-teams-for-service">several teams</a> according to group of requesters. Each applicant group is then served by a different resolution team.</p>

	<h5>Service reader</h5>
 <p>See all requests in a given service, but cannot resolve them.</p>
 <p>Service reader can search for the same people and organizations as if were a member of the service team.</p>
 <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  To make only a specific request available to users, set the users as <a href="../../../alvao-service-desk/requests/subscribers">Trackers</a> of that request.<br />
 </div>

	<h5>Requests reporter</h5>
 <p>A requests reporter is usually a member of the solver team of another service, and can move requests that do not belong in their service into the service in which they are a reporter, or create them directly for the requester. Once a request has been moved or created, the reporter can no longer view the request.</p>

	<h5>Request approver</h5>
 <p>The request approver is the user who currently has to approve or deny the request. A request can have multiple approvers at the same time. Any user can become an approver, as a request can be assigned to anyone for approval.</p>
 <p>An approver can only see the requests they currently have to approve.</p>

	<h5>Service requester</h5>
 <p>A service requester is a user who has at least one SLA assigned to the service (see WebApp - Administration - Service Desk - Service - Edit - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/sla">SLA</a>).</p>
 <p>The requesters only sees the requests they have assign. In the table of requests, they can only view <a href="../../../list-of-windows/alvao-webapp/requests/table-of-requests">selected columns</a>.</p>
 <p>On the <a href="../../../list-of-windows/alvao-webapp/requests/request">request page</a>, it does not see the items:</p>
  <ul>
 <li>Priority</li>
 <li>Notes</li>
 <li>Work</li>
 <li>Internal Target</li>
 <li>Custom person and organisation entries for Applicant and Solver</li>
 <li>Details of the investigator if the investigator is from an organisation other than the applicant</li>
 <li>Custom entries Related organisations</li>
 <li>Details of the Related Organisation if the applicant is not from that organisation</li>
  </ul>
 <p>Also sees additional request items enabled, see WebApp - Administration - Service Desk - Services - Service - Edit - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/extended">Extended</a> - Show Requester optional items.</p>
 <p>Only see records in the request log that have the <em>Show to requester</em> option enabled.</p>
 <p>Has limited commands available for working with requests.</p>
 <p>A requester (or request participant) can reopen their request if the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/extended">reopen deadline</a> (set on the request service) has not expired.</p>
 <p>Can only search for people in your organization. It does not see custom entries of people or organizations in the search results.</p>
 <p>A request can have other co-requesters, which gives them the same permissions to the request as the requester. Any requester of a service can be a co-requester of a request.</p>

	<h5>Other users</h5>
 <p>Users who are not assigned a role in a service do not see any requests in that service, even if they are members of the <a href="../../../alvao-asset-management/implementation/users/groups">Administrators</a> group or other <a href="../../../alvao-service-desk/implementation/users/groups">system groups</a>.</p>


	<h2>Common permission settings in services</h2>
 <ol>
  <li><strong>Main solvers only</strong> - the service has only main solvers who take over new requests to solve themselves. This model is usually suitable for smaller teams of peer solvers.</li>
  <li><strong>Main solvers and solvers</strong> - main solvers take on new requests to solve or pass them on to other solvers. Other solvers only handle requests that are passed to them by a lead solver and do not actively queue new requests.  This model is suitable for larger teams whose members are divided into several lines. Thus, the main solvers are in the first line (L1) and the other solvers are in the second or next line (L2, L3, etc.).</li>
  <li><strong>Main solvers, solvers and solver groups</strong> - compared to the previous model, there are additionally one or more solver groups in the service. Main solvers can then assign requests to autonomous solver groups, whose members determine which member will solve the request.  The solver groups usually represent autonomous teams from other departments or external organizations (outsourced services), usually in the higher L2, L3, etc.</li>
 </ol>

  


</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  <style type="text/css">
  .auto-style1 {
  height: 85px; }
  </style>
</asp:Content>



