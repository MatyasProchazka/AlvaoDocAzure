<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<%@ Import Namespace="DocEn.App_Code" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Application templates</h1>

    <p>
        Application templates are ready-made applications that you can use immediately (see <em>Application installation</em> below),
  or you can customize them and create your own apps with specific functionality. 
    </p>

    <table>
        <thead>
            <tr>
                <th>Template</th>
                <th>Description</th>
                <th>Prerequisites</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectIntune.xml" download>ObjectIntune.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/objects/object">Object</a> page, adds the <b translate="no">MS Intune</b> command that opens the MS Intune page representing 
                    the selected object based on the <i translate="no">Intune device id</i> property. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectManufacturerSupport.xml" download>ObjectManufacturerSupport.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/objects/object">Object</a> page, adds the <b>Manufacturer support</b> command that opens the manufacturer’s web page 
                    representing the selected object based on the object properties <i translate="no">Manufacturer</i>, and <i translate="no">Serial number</i> (or <i translate="no">BIOS serial number</i>). Works only for manufacturers 
                    Dell and Lenovo. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectChatWithUser.xml" download>ObjectChatWithUser.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/objects/object">Object</a> page, adds the <b translate="no">Chat with user</b> command that starts a Microsoft Teams chat with the 
                    user who is responsible for the object or has been entrusted with its use. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketCreateTaskInToDo.xml" download>TicketCreateTaskInToDo.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/requests/request">Request</a> page, adds the <b translate="no">Create task</b> command that creates a new task in MS To Do.
                    <br />
                    To view the command, the user must be a member of the of the solution team of the service and be imported from AAD. The <i translate="no">Microsoft Graph Tasks.ReadWrite</i> permission must be enabled to create a task.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketCreateOutlookMeeting.xml" download>TicketCreateOutlookMeeting.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/requests/request">Request</a> page, adds the <b translate="no">Create meeting</b> command that creates a new task in MS Outlook calendar.
                    <br />
                    To view the command, the user must be a member of the of the solution team of the service.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketCostsCalculation.xml" download>TicketCostsCalculation.xml</a></td>
                <td>The command will sum the values from the <em>SW Costs</em> and <em>HW Costs</em> custom fields for the request.
                    <br />
                    To execute the example, it requires adding custom fields <i translate="no">costSW</i>, <i translate="no">costHW</i> and <i translate="no">costTotal</i> of type <i translate="no">int</i> to the <i translate="no">tHdTicketCust</i> table.
                    <br />
                    Then with <i translate="no">StateId</i> and with <i translate="no">ServiceId</i> specify, where the request should be displayed.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketOpenAttachments.xml" download>TicketOpenAttachments.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/requests/request">Request</a> page, adds the <b>Open attachments</b> command for opening an attachment 
                    link saved in <i>Attachments</i> custom field of the request.
                    <br />
                    To execute the example, it requires adding <a href="../../../list-of-windows/alvao-webapp/administration/custom-items">custom field</a> named <i translate="no">Attachments</i> 
                    of type <i translate="no">nvarchar</i> to the <i translate="no">tHdTicketCust</i> table.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/MultilingualCommand.xml" download>MultilingualCommand.xml</a></td>
                <td>Example of a multilingual application. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/ticket-custom-commands" translate="no">IEntityCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ReportProblem.xml" download>ReportProblem.xml</a></td>
                <td>Adds <b translate="no">Report problem</b> command in the main menu. Using the command, the requester can report a problem via the <i>Service Catalog</i>.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/custom-commands/general-custom-commands" translate="no">IGeneralCommand</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/ApproveByGroupMember.xml" download>ApproveByGroupMember.xml</a></td>
                <td>When approval of a request gets started, this application automatically adds a member of a particular user group to the Approving tab of the request. 
                    The group member is chosen by the value of the Office field which must be equal to the value of the Office field of the request’s requester.
                    <br />
                    To run the example, a custom field <i translate="no">ApprovalGroupName</i> of type <i translate="no">nvarchar</i> is assumed to be added to the <i translate="no">TicketStateCust</i> table.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions" translate="no">ITicketAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/AssignToTester.xml" download>AssignToTester.xml</a></td>
                <td>This app automatically assigns a request to a solver from the Testers group if the request is in the <i translate="no">Program Modifications</i> service and in a state with ID 1.
                    <br />
                    To run the example, a custom field <i translate="no">solvedInVersion</i> of type <i translate="no">nvarchar</i> is assumed to be added to the <i translate="no">tHdTicketCust</i> table.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions" translate="no">ITicketAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CreateAnalysis.xml" download>CreateAnalysis.xml</a></td>
                <td>When a new request is created in the <em>Program modifications</em> service, a linked request is also created in the <i translate="no">Program modifications/Designs and analyses</i> service to create a design for the created request.
                    <br />
                    To run the example, a custom field <i translate="no">createAnalysis</i> of type <i translate="no">bool</i> is assumed to be added to the <i translate="no">tHdTicketCust</i> table.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-custom-actions" translate="no">ITicketAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/SendMailsAboutNewEvent.xml" download>SendMailsAboutNewEvent.xml</a></td>
                <td>When an event is created in a request in the <i translate="no">Program Modifications</i> service this event is forwarded by email to each service manager, 
                    unless they are the author or recipient of the event (or their account is disabled). 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/act-custom-actions" translate="no">IActAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/DeclineMessageSendCustomNotification.xml" download>DeclineMessageSendCustomNotification.xml</a></td>
                <td>Modifies the notification about a message rejection if the sender does not have any <i>SLA</i>.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/mail-message-custom-actions" translate="no">IMailMessageAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/AssignToSolverByEmail.xml" download>AssignToSolverByEmail.xml</a></td>
                <td>When a message is retrieved, the message text for an existing request is examined for a command to pass to the solver <i translate="no">ASSIGNTO: solver name</i>. If the command is found 
                    and the solver is found by name, the request is automatically assigned to the solver and the message is not logged in the request log.  Otherwise, the message is processed 
                    in the standard way. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/mail-message-custom-actions" translate="no">IMailMessageAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/OrderAfterApproval.xml" download>OrderAfterApproval.xml</a></td>
                <td>When a request is approved in <i translate="no">Purchase</i> service by all approvers, the request goes into the <i translate="no">Order</i> state.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-actions-by-events/ticket-approval-custom-actions" translate="no">ITicketApprovalAutoAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td><a href="/<% Page.RenderVersion(); %>/apps/templates/ObjectKnowledgeBase.xml" download>ObjectKnowledgeBase.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/objects/object">Object</a> page, adds the <b>Knowledge base</b> tab displaying knowledge base articles that 
                    contain the manufacturer and model of the object. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IEntityTab</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketKnowledgeBase.xml" download>TicketKnowledgeBase.xml</a></td>
                <td>To the <a href="../../../list-of-windows/alvao-webapp/requests/request">Request</a> page, adds the <b>Knowledge base</b> tab displaying a list of the relevant 
                    knowledge base articles (assigned to the request service) to the members of the solution team of the service.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IEntityTab</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketShowRequesterAddress.xml" download>TicketShowRequesterAddress.xml</a></td>
                <td>If the selected request is in the defined service and status, the <a href="../../../list-of-windows/alvao-webapp/requests/request">Request</a> page will display
                    the <b>Show requester's address</b> tab with the requester's address (by organization) in the map.
                    <br />
                    <br />

                    The example works with classes whose libraries are not part of the default <em translate="no">CodeExtension_Template.cs</em> file.
                    <br />
                    These are the <span translate="no">WebClient</span>WebClient, <span translate="no">XmlDocument</span> and <span translate="no">StringBuilder</span> classes.
                    <br />
                    For the correct functionality of the example, the following libraries were added to the beginning of the file: System.Net, System.Xml, System.Text.<br />

                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IEntityTab</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/TicketAutoClose.xml" download>TicketAutoClose.xml</a></td>
                <td>This app automatically closes a resolved request after the deadline for the requester to reopen the request has passed. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/AutoCloseInactiveTickets.xml" download>AutoCloseInactiveTickets.xml</a></td>
                <td>The resolved requests are checked to see if they have passed the time limit for the requester to reopen the request (days) and have the automatic transition to the <em>Closed</em> status turned off. If these requests are not closed within 14 days, they are closed automatically. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/UpdateSuperiorGroup.xml" download>UpdateSuperiorGroup.xml</a></td>
                <td>This app automatically fills a particular user group with all superiors of users from a particular organization. The user group can then be used for instance in a definition of a custom field of the type User. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-sd-custom-apps/applications/periodic-custom-actions" translate="no">IPeriodicAction</a>
                </td>
                <td translate="no">SD</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CheckObjectMandatoryProperties.xml" download>CheckObjectMandatoryProperties.xml</a></td>
                <td>Objects that do not have all mandatory properties filled in cannot be moved from a <i>warehouse</i> to another location in the object tree.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-object-move" translate="no">IObjectMoveAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td><a href="/<% Page.RenderVersion(); %>/apps/templates/SetComputerDetectionProfile.xml" download>SetComputerDetectionProfile.xml</a></td>
                <td>When you move a computer out of a <i>Warehouse</i>, the detection profile named <i translate="no">Standard</i> is automatically assigned to the computer.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-object-move" translate="no">IObjectMoveAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CheckPhoneNumberFormat.xml" download>CheckPhoneNumberFormat.xml</a></td>
                <td>This app checks the format of the new <i translate="no">Phone number</i> object property value.
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-property-change" translate="no">IObjectPropertyAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
            <tr>
                <td translate="no"><a href="/<% Page.RenderVersion(); %>/apps/templates/CopyNewPropertyValueToAnotherProperty.xml" download>CopyNewPropertyValueToAnotherProperty.xml</a></td>
                <td>This app writes the new value of the <i translate="no">Phone number</i> property to the <i translate="no">Phone</i> property of the same object if it is empty. 
                    <br />
                    The template contains the following types of program extensions: <a href="../../alvao-am-custom-apps/applications/object-custom-actions-by-property-change" translate="no">IObjectPropertyAutoAction</a>
                </td>
                <td translate="no">AM</td>
            </tr>
        </tbody>
    </table>

    <h2>Application installation</h2>

    <ol>
        <li>Download the file with the selected template to your computer.</li>
        <li>In <strong>WebApp - Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/applications">Applications</a>
            Use the <strong>Import</strong> command to import the downloaded file.  </li>
        <li>Use <strong>Edit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">Scripts</a>
            Edit the <strong>Settings</strong> script according to the instructions therein so that the application settings match your Alvao settings.  Save your changes using the <strong>Compile and Save</strong> command.
        </li>
        <li>Finally, in <strong>WebApp - Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/applications">Applications</a>
            Use the <strong>Allow</strong> command to allow the application to run.  </li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Full backward compatibility of scripts is not guaranteed.  It is possible that when upgrading Alvao to the next version, application scripts may need to be updated with templates for the current version of Alvao. 
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContentPlaceHolder">
</asp:Content>

