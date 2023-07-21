<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Move to another service</h1>
<p>Use this form to <a href="../../../../alvao-service-desk/requests/move-to-another-service">move</a> a selected request or even several requests at once to another service.</p>
<p>Options:</p>

	<ul>
 <li><strong>Please select a service to move the request to</strong>
 - enter at least part of the service name and then select the service from the drop-down menu. <ul><li><strong>...</strong> -
 or search for the service and select it in the service tree.</li></ul></li>
 <li><strong>Assign to solver</strong>
  <ul>
 <li><strong>Do not change the solver if possible (solver name)</strong> -
 Select this option if you want to leave the request to its current solver or solver group. If the current solver is not a solver or a special solver for the target service, the request will automatically be returned to the main solver.</li>
 <li><strong>Assign</strong> - select to assign the request to another solver or solver group.
 <ul>
 <li><strong>Solver Group</strong> - enter at least part of the name of the solver group and then select the solver group from the drop-down menu. The field is displayed only if the service contains at least one solution group.</li>
 <li><strong>Request queued without solver</strong> - select this option if you want to return the request to the <a href="../../../alvao-service-desk/implementation/services/service-roles">to the main solvers</a> of the service (if the request is assigned to the <em>Main</em> solver group) or to all solvers of another solver group (if the request is assigned to a solver group other than <em>Main</em>).</li>
 <li><strong>Assign to solver</strong> - select this option if you want to assign the request to a specific solver. Then type at least part of the solver's name and select that solver from the drop-down menu. </li>
 </ul>
 </li>
 <li><strong>Comment</strong> - if applicable, write a message to the new solver of the request or the main solvers of the new service. Your comment will be sent to them in an email notification.</li>
  </ul>
 &nbsp;</li>
 <li><strong>Cost Report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">report the work time</a> spent resolving the request.</li>
 </ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
  If the target service has the same process as the original service, the status of the request does not change after the move and the request solving process continues. If the target service uses a different process, the request moves to the initial status of the solving process and any pending approval is cancelled. A new approval may be automatically triggered when the transition to the initial status occurs.  Mandatory fields for the initial status in the target service are ignored when the request is moved. The main solver of the target service SHOULD classify the request and add the mandatory items after the move.

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
 You can move a request to another service if you are the current solver or a member of the solving team of that service.<br />
 If you are not the main resolver or resolver in the target service, it is necessary to have the Requester reporter permission.<br />
 In order to change the solver of a request, you must also be a member of the resolution team of the target service.<br />
 You can only move a request to services in which the Requester of the request has some SLAs.</div>
	</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  </asp:Content>

