<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New request</h1>
  <p>
  You can use this form to create a new request for a specific service.  The specific content and appearance of the form depends on the situation in which you are using it, the service you are making the request to, and your system settings. If you are making a request as a requester (e.g. from a service catalogue), you will see a simplified form. If you are creating a request as a member of a service's resolution team, all the items in the request are available on the form.
  <p>
  Options:</p>

  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>Attachment</strong> - attach an attachment to the request description. This command has the same function as the <em>Add attachment</em> button.
  in the form.<li><strong>Copy Values</strong> - fills the form with the corresponding values from the linked request. This command is only displayed if the form was opened with the <a href="../requests">New linked request</a> command.
 The <em>Requester</em>, <em>Service</em> and <em>SLA</em> fields
  are not copied.<li><strong>Use template</strong> - select the <a href="../../../alvao-service-desk/requests/ticket-templates">request template</a> you want to use to fill out the form. Items for which no values are defined in the template will remain unchanged.</li>
  <li><strong>Requester's requests</strong> - displays a table with the existing requests of the applicant already filled in on the form. </li>
  </ul>
  </li>
  <li><strong>New request (select link type)</strong> - select which link type the new request should be linked to the request that is listed under the input field. This command only appears if the form was opened with the <a href="../requests">New linked request</a> command, see <a href="../../../alvao-service-desk/requests/relations">Request links</a>.</li>

  <li>
  <strong>Requester</strong> - enter at least part of the requester's name and then select the requester from the drop-down menu.  <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  If you <a href="../../../alvao-service-desk/requests/new-request-call-centre">connect Alvao to the switchboard</a>, the incoming call will automatically open this form on the main solver's screen and the corresponding requester will be automatically searched and filled in based on the caller's phone number.  </div>
  </li>

  <li><strong>Non-registered user</strong> -
	  enable this option if the Requester of the request is not a registered Alvao user (i.e. not registered in <em>Administration</em> - <a href="../administration/users">Users</a>).</li>
  <li><strong>Contact information</strong> - if the applicant is an unregistered user, please fill in their contact details. <ul>
  <li><em>Name and Surname</em></li>
  <li><em>Mobile phone</em></li>
  <li><em>E-mail, E-mail 2</em></li>
  <li><em>Work phone</em></li>
  <li><em>Organisation</em> - type part of the organisation name and select the organisation you are looking for in the drop down menu.</li>
  <li><em>Department</em>, <em>Position</em>, <em>Office</em></li>
  <li><em>Other Contacts</em></li>
  </ul>
  </li>
  <li><strong>Service</strong> - type the part of the service name you want to insert the new request into, then select the service you are looking for in the drop-down menu.  <ul><li><strong>...</strong> - or select the service in the service tree.</li></ul>
  </li>
  <li><strong>Requested for another user</strong> - enable this option if you want to create a request for another user, e.g. you are requesting equipment for your subordinate or colleague. Enter at least part of the name of the user for whom you are creating the request, and then select it from the drop-down menu. Only users who have an SLA to the service and are from the same organization as the Requester are offered. </li>
  <li><strong>Request Name</strong> - enter a concise name for the request.</li>
  <li><strong>Description</strong> - enter a detailed description of the request.</li>
  <li><strong>Attachments</strong> - list the attachments to the request<ul>
  <li><strong>Add attachment</strong> - select the file you want to attach as an attachment. You can also attach files by dragging and dropping them into the form.</li>
  </ul>
  </li>
  <li><strong>Objects</strong> - select the object to which the request relates from the drop-down menu. By default, the menu contains the assets entrusted to the requester. If you want to select a different object, enter part of its name or serial, inventory or registration number in the input line. You can also specify the type of object, e.g. by typing &quot;monitor: dell&quot; you can search for all objects of type <em>Monitor</em> whose name starts with the string <em>dell</em>.<ul>
  <li><strong>...</strong> - search for the object and select it in the object tree.</li>
  </ul>
  </li>
  <li><strong>SLA</strong> - select <a href="../../../alvao-service-desk/implementation/services/sla">SLA</a> from the drop-down menu. If the menu is empty, the requester has no SLA in the selected service and cannot submit requests for that service.  </li>
  <li><strong>Impact</strong> - select the impact of the request from the menu, e.g. <a href="../../../itil/incident-management">ITIL incident</a>.</li>
  <li><strong>Urgency</strong> - select the urgency of the request from the menu, e.g. <a href="../../../itil/incident-management">ITIL incident</a>.</li>
  <li><strong>Priority</strong> - if applicable, select an appropriate priority from the menu.<br />
  Priority can be determined automatically based on the selected <em>Impact</em>.
  and <em>Urgency</em>.</li>



  <li><strong>Related organisations</strong> - if applicable, type the part of the name of the organisation to which the request is related and then select the organisation you are looking for from the drop-down menu.</li>
  <li><strong>Device Number</strong> - if applicable, enter the number of the device to which the request relates.</li>
  <li><strong>Request Submission Method</strong> - select from the drop-down which communication channel the request was submitted through. This field only appears if you are making a request on behalf of another requester.</li>

  <li><strong>Assign to me</strong> - enable if you want to be the solver of the request.</li>
  <li><strong>Assign</strong> - turn on if you want to assign the request to a specific solver, or solver group. <ul>
  <li><strong>Solver Group</strong> - type part of the name of the solver group and then select the appropriate group from the drop-down menu. The field is only displayed if at least one group has the "Solution Group" option set on the service.</li>
  <li><strong>Request queue without solver</strong> - select this option if you want to return the request to the <a href="../../../alvao-service-desk/implementation/services/service-roles">main solvers</a> of the service (if the request is assigned to the <em>Main</em> solver group) or to all solvers of another solver group (if the request is assigned to a solver group other than <em>Main</em>).</li>
  <li><strong>Assign to solver</strong> - select this option if you want to assign the request to a specific solver. Then type part of the solver's name and select the appropriate solver from the drop-down menu.</li>
  <li><strong>Change the request status to</strong> - select the status to which the request should change when assigned to the solver from the drop-down menu.</li>
  <li><strong>Message for solver</strong>
  - Alternatively, write a message to the solver that will be sent to them in the email notification when the request has been assigned for resolution. If you have changed the status of the request, the message is pre-populated with instructions for the solver according to the <em>Solve Progress</em>.
  </li>
  </ul>
  </li>

  <li><strong>Cost Report</strong> - if applicable, <a href="../../../alvao-service-desk/requests/work-time">report the work time</a> spent creating the request.</li>

  </ul>
</asp:Content>

