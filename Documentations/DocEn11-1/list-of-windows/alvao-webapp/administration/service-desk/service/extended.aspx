<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Extended</h1>
<p>This section on the <a href="create-service">New Service</a> form contains additional service settings.</p>
<p>Options:</p>

	<ul>
 <li><p><strong>Show optional items to the requester</strong>
 - specify the optional request items that will be displayed on the request page to Requesters without any other user role.</p>
 <p>You can enter one or more comma-separated values, where each value corresponds to one request item:</p>
  <table>
 <thead>
 <tr>
 <th>Value</th>
 <th>Request item</th>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>tHdTicket.RelatedAccountId</td>
 <td>Related Organization</td>
 </tr>
 <tr>
 <td>tHdTicket.Impact</td>
 <td>Fall</td>
 </tr>
 <tr>
 <td>tHdTicket.Urgency</td>
 <td>Urgency</td>
 </tr>
 <tr>
 <td>tHdTicket.Priority</td>
 <td>Priority</td>
 </tr>
 <tr>
 <td>tHdTicket.sHdTicketDeviceCode</td>
 <td>Device number</td>
 </tr>
 <tr>
 <td>tHdTicket.Objects</td>
 <td>Objects - requesters will see the Objects tab on the request page.</td>
 </tr>
 <tr>
 <td>tHdTicket.liHdTicketSlaId</td>
 <td>SLA and its description</td>
 </tr>
 <tr>
 <td>tHdTicketCust.&lt;db column name of custom field&gt;</td>
 <td><a href="../../../../../alvao-service-desk/implementation/custom-items">Custom fields</a></td>
 </tr>

 </tbody>
  </table>

  <p>On the request page, requesters see only the items enabled in the <a href="../../../../../alvao-service-desk/implementation/services/processes">process</a> of the service.</p>

 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 On the <a href="detail/new-ticket-items">new-ticket-request form</a>, you can display items to the requester independently of this setting..
 </div>


 </li>
 <li><strong>Time limit for reopening the request by the requester (days)</strong>
  - Enter the number of days from resolution that the Requester can <a href="../../../../../alvao-service-desk/requests/reopen-for-further-resolution">reopen the request</a>. A value of 0 means that the Requester cannot reopen the resolved request.</li>
 <li><strong>In the case of attempted reopening after the expiry of the time limit, create a new request</strong> - if this option is disabled and after the deadline to reopen a resolved request has expired, the requester sends a message to the request (e.g., responds to a resolution notification), the system responds by notifying the requester that message has been rejected (message is saved in the request communication and the solver(s) or service operators are notified by a notification, but the request remains resolved). If you enable this option, the system then creates a new request based on the Requester's message and informs the Requester with the usual notification of request creation. A link is automatically created between the new request and the request to which the message was originally directed.</li>
 <li><strong>In the service</strong> - select the service in which the new request is to be created. The <em>&lt;This service&gt;</em> option represents the service being modified. You can also select a service from the tree by clicking [...] after the input field. The requester must have an SLA assigned to the selected service, otherwise the new request will not be created in that service.</li>
 </ul>
 <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 After enabling this option, we recommend setting the time limit for reopening a request above to more than 0 days, otherwise a new request will be created each time the requester responds after the request is resolved.</div>



<ul>
<li><strong>Applicants see the requests of other applicants</strong>
 - Enable if you want to allow applicants on this service to also view requests from other applicants from the same organization.</li>
 <li><strong>Supervisors can see requests from their subordinates</strong>
 - Enable if you want to allow supervisors of applicants on this service to view the requests of their subordinates.</li>
 <li><strong>Custom Workflow (URL)</strong>- specify the URL of the custom request page to be used instead of the default system request page, if desired.</li>
 <li><strong>Use satisfaction survey</strong> - enable if you want to use a satisfaction questionnaire. Add a short message to each standard request resolution notification with a link to <a href="../../../../../modules/alvao-satisfaction-feedback">
 this questionnaire</a>.</li>
 <li><strong>Custom survey (URL)</strong> - enter the URL <a href="../../../../../modules/alvao-satisfaction-feedback#special">
 custom satisfaction questionnaire</a> to use instead of the system questionnaire. <br />For example, <span class="console">Custom/&lt;company name&gt;/&lt;questionnaire name&gt;</span>.</li>
	</ul>


</asp:Content>
