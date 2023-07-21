<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


    <h1>Notifications</h1>

    <p>Notifications are messages about a specific event (e.g. resolution, deadline change, etc.) related to a specific request that ALVAO Service Desk automatically sends to recipients.</p>
    <h2>Other Notifications</h2>

    <p>The signs are divided into two basic groups:</p>

    <ul>
        <li><strong>Notification to solver</strong> - the system automatically sends a message to the solver about the following events. If the request does not have a solver but is assigned to a solver group, then the message is sent to all members of that group. If the request has neither a solver nor a solver group, then the message is sent to all the main solvers of the service.
 <li><strong>Request created</strong></li>
            <li><strong>New message received</strong> - when a message is received for the request.
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    If a request is in the approval process, the approvers of the request also receive notification when a new message is received.
                </div>
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    No notification is sent to the recipients of the original message.
                </div>
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    If the message is an undeliverable email sent from the Service Desk or the sender's email is in the <a href="../../requests/new-request">MailerDaemons</a> list, the notification is not sent.
                </div>
            </li>
            <li><strong>Request Assigned</strong> - notification to the solver to whom the request was assigned and the previous solver of the request (if any).<br />
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    If the request is being assigned by its current solver, no notification is sent to that solver when the request is assigned to another solver.
                </div>
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    In case the solver has taken over the request for solving, the notification of the transfer of the request is not sent.
                </div>
            </li>
            <li><strong>Request reopened</strong> - when the request is reopened (for resolution after it has been closed).</li>
            <li><strong>Request moved to this service</strong><br />
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    In case the service change also changes the solver or the solver group, the notification will be sent to the new solver or the members of the solver group (or to the main solvers, if the solver has been removed from the request, for example due to insufficient rights).
                </div>
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    If an existing solver moves a request and the move does not remove the request, no notification is sent to the solver when the request is moved to another service.
                </div>


            </li>
            <li><strong>Request returned to Main solvers</strong>
        -
 Notification to all Main solvers of the service.
    </ul>
    </li>
  
 <li><strong>Notification to applicant</strong> - the system automatically sends a message to the applicant about the following events. 
     <ul>
         <li><strong>Request created</strong></li>
         <li><strong>Request deadline changed</strong> - when the deadline for resolving the request is changed.</li>
         <li><strong>Request resolved</strong> - notification with a message from the user who resolved the request.</li>
         <li><strong>Request reopened</strong> - when the request is reopened (to be resolved after it was closed).</li>
     </ul>
 </li>

    </ul>
  <h2>Notification levels</h2>
    <p>Notifications can be set at several levels. If notification is enabled or disabled on multiple levels simultaneously, the setting that is highest in the following table is used. If no notification is set at the top level, the setting from the lower level is used:</p>

    <table>
        <tbody>
            <tr>
                <td>User settings for a specific service</td>
                <td>
                    <p>
                        Each user can change it in:
                    </p>
                    <ul>
                        <li><strong>ALVAO WebApp - User Menu - Settings</strong> -
   <a href="../../../list-of-windows/alvao-webapp/settings/custom-notification-settings">Notifications</a></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>User settings common to all services</td>
                <td>Each user can change it by selecting <strong>&lt;All services&gt;</strong> in:
                    <ul>
                        <li><strong>ALVAO WebApp - User Menu - Settings</strong> -
   <a href="../../../list-of-windows/alvao-webapp/settings/custom-notification-settings">Notifications</a></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>Service specific settings</td>
                <td>This setting is done by the Alvao administrator in
 <strong>ALVAO WebApp - Administration - Service Desk - Services - Edit (properties)</strong>
                    -
 <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/notification">Notification</a>.</td>
            </tr>
            <tr>
                <td>Common settings for all services</td>
                <td>This setting is done by the Alvao administrator in
 <b>ALVAO WebApp - Administration - Service Desk - Settings</b> -
 <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/settings/notification">Notifications</a>.
 <table>
     <thead>
         <tr>
             <th>Notification to solver</th>
             <th>Default settings</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td>Request submitted</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>Request created</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>Request moved to this service</td>
             <td>Do not send</td>
         </tr>
         <tr>
             <td>Request opened</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>New message received</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>Request returned to main solvers</td>
             <td>Send</td>
         </tr>
         <tr>
             <th>Notification to applicant</th>
             <th>Default settings</th>
         </tr>
         <tr>
             <td>Request created</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>Request deadline changed</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>Request resolved</td>
             <td>Send</td>
         </tr>
         <tr>
             <td>Request opened</td>
             <td>Send</td>
         </tr>
     </tbody>
 </table>
                </td>
            </tr>
        </tbody>
    </table>

    <h2>Custom Notifications</h2>

    <p>
        You can replace the default notification texts with your own notifications. Custom notifications are set for each service in <strong>ALVAO WebApp - Administration - Service Desk - Services - Edit (properties) </strong>- section <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/notification">Notifications</a>.
    </p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip: </div>
        You can also define custom notifications in multiple <a href="../multi-languages">languages</a>.
    </div>


    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also set up custom notifications in bulk for multiple services at once as follows: v
	<strong>ALVAO WebApp - Manage</strong> in the service tree, select <strong>Show as table</strong> from the menu, select the services for which you want to set custom notifications from the list, and select <strong>Edit (properties)</strong> from the local menu. In the <strong>Notifications</strong> section, set up custom notifications.
    </div>

    <h3>Notification for members of the research team</h3>

    <p>You can add your own additional text to the subject line of the notifications addressed to members of the research team. The text is added after the original subject line with a hyphen. This modification is global for all services.</p>

    <p>
        To add text to the subject, use this SQL script:<br />
        <span class="console">UPDATE tProperty SET sPropertyValue = &#39;enter the additional text string here&#39; WHERE sProperty = &#39;ServiceDesk.OperatorsNotificationsSubject&#39;</span>
    </p>

    <p>The following variables can be used in a text string:</p>

    <table>
        <thead>
            <tr>
                <th>Variable</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>[$TicketID$]</td>
                <td>Request number.</td>
            </tr>
            <tr>
                <td>[$TicketDeadline$]</td>
                <td>Request resolution deadline</td>
            </tr>
            <tr>
                <td>[$TicketSLA$]</td>
                <td>Request SLA name</td>
            </tr>
            <tr>
                <td>[$TicketService$]</td>
                <td>Service Name</td>
            </tr>
            <tr>
                <td>[$TicketServicePhone$]</td>
                <td>Service Phone Number</td>
            </tr>
            <tr>
                <td>[$TicketUserCompany$]</td>
                <td>Requester's organization</td>
            </tr>
            <tr>
                <td>[$TicketUserOffice$]</td>
                <td>Requester's Requester Office</td>
            </tr>
        </tbody>
    </table>

    <p>
        To restore the default object, use this SQL script:<br />
        <span class="console">UPDATE tProperty SET sPropertyValue = NULL WHERE sProperty = &#39;ServiceDesk.OperatorsNotificationsSubject&#39;</span>
    </p>

</asp:Content>
