<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Message template</h1>
    <p>
        In this window, define a template for a custom <a href="../../../../../alvao-service-desk/implementation/services/notifications">notifications</a>.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Subject</strong> - enter the subject of the message.
            <ul>
                <li><strong>Insert variable</strong> - use the drop-down menu to select the variable you want to insert into the subject of the message at the current cursor position.</li>
            </ul>
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                At the beginning of the subject, use the <em>Insert Variable</em> button to insert a pair of variables <em>Request - Tag</em> and <em>Request - Name</em>, which will be replaced by the tag and name of the specific requirement in the message.
            </div>

        </li>
        <li><strong>Message body</strong>
            - enter the text of the message. You can use variables in the text, see the <em>Insert Variable</em> button below the input field.<br />
            The message text is formatted according to the same style used by standard system notifications. If you want to display any text in the message in bold, insert it between the &quot;&lt;b&gt;&quot; and &quot;&lt;/b&gt;&quot; tags.
  Other HTML tags are not supported.<ul>
                <li><strong>Insert variable</strong> - use the drop-down menu to select the variable you want to insert into the message text at the current cursor position.</li>
            </ul>
        </li>
    </ul>

    <p>You can use the following variables in the subject or body of the message:</p>
    <div class="wide">
        <table style="width: 1300px">
            <thead>
                <tr>
                    <th rowspan="2">Name</th>
                    <th rowspan="2">Variable</th>
                    <th rowspan="2">Description</th>
                    <th colspan="2">Custom Notification Template</th>
                    <th rowspan="2"><a href="../process/detail/status-request/requester-notification-template">Template of notifications to requester about the change of status</a></th>
                    <th rowspan="2"><a href="../process/detail/status-request/approval-message-template">Approval message template</a></th>
                </tr>
                <tr>
                    <th>Subject</th>
                    <th>Message body</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Message for applicants</td>
                    <td>[$MessageForRequester$]</td>
                    <td>The message to the requester that the solver fills in the field when the request is resolved, rescheduled, or reopened. This variable cannot be used in <a href="../../../../../alvao-service-desk/implementation/services/notifications">notifications</a> of type <em>Request created</em>.
  <br />
                        In the message template for the approver, this is the message to the requester that the solver wrote when resolving the request, including images and attachments. This variable can only be used for approvals in the Resolved status.  </td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>No</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Comments for applicants</td>
                    <td>[$CommentForRequester$]</td>
                    <td>Comment from the researcher to the requester. In place of this tag, the comment that the researcher provided in the <em>Go to status</em> form will be added. If the researcher does not provide any comment, the variable will contain a dash. In the template, we recommend that this variable be indicated by a line such as &quot;&lt;b&gt;Message to the requester:&lt;/b&gt;&quot;, or &quot;&lt;b&gt;Message from the investigator:&lt;/b&gt;&quot;.</td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>No</td>
                </tr>
                <tr>
                    <td>Approval result</td>
                    <td>[$ApprovalResultWithComment$]</td>
                    <td>The result of the last approval including the approver's comment. If there was no approval in the request, the variable contains a dash. You can use the variable in the <a href="../process/detail/status-request/requester-notification-template">status change notification to the requester</a> and in the request resolution notification. </td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>No</td>
                </tr>
                <tr>
                    <td>Approval - Commentary for approvers</td>
                    <td>[$CommentForApprover$]</td>
                    <td>In place of this tag, the comment that the user filled in when starting the approval in the <em>Go to status</em> or <em>Let Approval</em> form will be added.</td>
                    <td>No</td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Approval - Approve/Deny buttons (form)</td>
                    <td>[$ApprovalByForm$]</td>
                    <td>Approve or reject <em>Button</em> to open the form to approve or reject the request. This button will only be inserted in the notification to the approver. If used concurrently with the <span class="console">[$ApprovalByEmail$]</span> variable, the name of the button will be <em>Approve or Reject on Web</em>. </td>
                    <td>No</td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Approval - Approve/Deny buttons (e-mail)</td>
                    <td>[$ApprovalByEmail$]</td>
                    <td>Approve and Reject <em>buttons</em> for email approval. When the approver presses one of them, a window opens with a pre-populated new message, after which Alvao approves and rejects the request respectively. When used simultaneously with the <span class="console">[$ApprovalByForm$]</span> variable, the button names will be <em>Approve by Email</em> and <em>Decline by Email</em>.<br />
                        <div class="caution">
                            <div class="icon"></div>
                            <div class="title">Caution:</div>
                            Approving by email does not respect the eventual logic of <a href="../../../../../modules/alvao-sd-custom-apps/custom-form-approval-template">custom approval/rejection form</a>. If any of the approval schema steps use a custom form for approval/rejection that caters to additional logic, do not use email approval/rejection buttons in the approver message template or move the form logic to <a href="../../../../../modules/alvao-sd-custom-apps/applications/ticket-custom-actions-by-events">automated actions based on events on the request</a>.
                        </div>
                    </td>
                    <td>No</td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Approvals - Approvers of the current step</td>
                    <td>[$ApprovalStepCurrentApprovers$]</td>
                    <td>List of current approvers including email addresses in the form &quot;Name &lt;email address&gt;&quot. Individual approvers are separated by semicolons.</td>
                    <td>No</td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Approval - Expiration of current step</td>
                    <td>[$ApprovalStepExpirationTime$]</td>
                    <td>Expiration time of the current approval step.</td>
                    <td>No</td>
                    <td>No</td>
                    <td>No</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Number</td>
                    <td>[$TicketID$]</td>
                    <td>Request Number.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Brand</td>
                    <td>[$TicketMessageTag$]</td>
                    <td>Request tag in emails, e.g. &quot;T45412HD&quot;.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Name</td>
                    <td>[$TicketTitle$]</td>
                    <td>Request name.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - First Response Time</td>
                    <td>[$FirstReactionDeadline$]</td>
                    <td>First response deadline as per <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Resolution Date</td>
                    <td>[$TicketDeadline$]</td>
                    <td>The deadline set to resolve the request.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Foundation Report - Subject</td>
                    <td>[$OriginalMessageSubject$]</td>
                    <td>The subject of the original message that triggered the creation of the new request.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Foundational Message - Text</td>
                    <td>[$OriginalMessage$]</td>
                    <td>The text of the original message that triggered the creation of the new request.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Foundation Report - Annexes</td>
                    <td>[$OriginalMessageAttachments$]</td>
                    <td>The attachments of the original message that triggered the creation of the new request. If you want the notification to include these attachments, insert this variable in the message text in any location.
                        <br />
                        This variable can only be used for custom notifications to the solver.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>No</td>
                    <td>No</td>
                </tr>
                <tr>
                    <td>Request - Inception Report - List of Annex Titles</td>
                    <td>[$OriginalMessageAttachmentList$]</td>
                    <td>List of attachment names of the original message that triggered the creation of the new request, including the names of the images in the message text.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Latest important event</td>
                    <td>[$LatestImportantMessage$]</td>
                    <td>Text of the latest <a href="../../../../../alvao-service-desk/requests/important-communication">important event</a> in the request log, including images and attachments.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Link to request</td>
                    <td>[$TicketUrl$]</td>
                    <td>Request URL in <a href="../../../../../alvao-service-desk/webApp">ALVAO WebApp</a>.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Link to request with tag</td>
                    <td>[$TicketMessageTagLink$]</td>
                    <td>Request tag as a link to the request page in the <a href="../../../../../alvao-service-desk/webApp">ALVAO WebApp</a>.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Basic Information Table</td>
                    <td>[$TicketInfo$]</td>
                    <td>Request Basic Information Table.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Satisfaction Survey (URL)</td>
                    <td>[$FeedbackUrl$]</td>
                    <td>Link to the satisfaction questionnaire. This variable is part of the module <a href="../../../../../modules/alvao-satisfaction-feedback">ALVAO Satisfaction Feedback</a>.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Satisfaction Questionnaire</td>
                    <td>[$FeedbackGeneralForm$]</td>
                    <td>A graphical element that the requester can use directly in the notification to rate their overall satisfaction with the resolution of the request.  You can only use this variable in notifications sent to requesters. This variable is part of the module <a href="../../../../../modules/alvao-satisfaction-feedback">ALVAO Satisfaction Feedback</a>.</td>
                    <td>No</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Items - System</td>
                    <td>-</td>
                    <td>Request System Items. Only items that are assigned to the process of the service being modified are listed in the variable drop-down menu.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Request - Items - Custom</td>
                    <td>[$tHdTicketCust.<em>ColumnName</em>$]</td>
                    <td>Custom request item, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tHdTicketCust</em> table. Only items that are assigned to the process of the service being modified or are displayed on the new request form are listed in the variable drop-down menu.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Name</td>
                    <td>[$TicketRequesterName$]</td>
                    <td>Requester's first and last name.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Mobil</td>
                    <td>[$TicketRequesterMobile$]</td>
                    <td>Requester's Mobile.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - E-mail</td>
                    <td>[$TicketRequesterEmail$]</td>
                    <td>Requester's e-mail address.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - E-mail 2</td>
                    <td>[$TicketRequesterEmail2$]</td>
                    <td>Requester's second email.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Telephone number</td>
                    <td>[$TicketRequesterPhoneToWork$]</td>
                    <td>The applicant's phone to work.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Telephone number 2</td>
                    <td>[$TicketRequesterPhoneToWork2$]</td>
                    <td>Requester's second phone to work.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Other contacts</td>
                    <td>[$TicketRequesterOtherContacts$]</td>
                    <td>Other contacts of the requester.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Department</td>
                    <td>[$TicketRequesterDepartment$]</td>
                    <td>Requester's Department.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Requester - Function</td>
                    <td>[$TicketRequesterPosition$]</td>
                    <td>Requester function.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Office</td>
                    <td>[$TicketRequesterOffice$]</td>
                    <td>Requester's Office.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Name of supervisor</td>
                    <td>[$TicketRequesterManagerName$]</td>
                    <td>The name of the Requester's immediate supervisor.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Personal number</td>
                    <td>[$TicketRequesterPersonalNumber$]</td>
                    <td>Applicant's personal number.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Organisation - Name</td>
                    <td>[$TicketRequesterAccountName$]</td>
                    <td>Name of the applicant organization.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Organisation - Organisation's own items</td>
                    <td>[$TicketRequesterAccount.<br />
                        tAccountCust.<em>ColumnName</em> $]</td>
                    <td>The requester's custom organization entry, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tAccountCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Applicant - Other - Person's custom fields</td>
                    <td>[$TicketRequester.tPersonCust.<em><br />
                        ColumnName</em> $]</td>
                    <td>The requester's custom field, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tPersonCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Name</td>
                    <td>[$TicketRequestedForName$]</td>
                    <td>The first and last name of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Mobil</td>
                    <td>[$TicketRequestedForMobile$]</td>
                    <td>Mobile of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - E-mail</td>
                    <td>[$TicketRequestedForEmail$]</td>
                    <td>Email of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - E-mail 2</td>
                    <td>[$TicketRequestedForEmail2$]</td>
                    <td>The second email of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Telephone to work</td>
                    <td>[$TicketRequestedForPhoneToWork$]</td>
                    <td>The phone to work of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Telephone to work 2</td>
                    <td>[$TicketRequestedForPhoneToWork2$]</td>
                    <td>The second phone to work of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Other contacts</td>
                    <td>[$TicketRequestedForOtherContacts$]</td>
                    <td>Other contacts of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Department</td>
                    <td>[$TicketRequestedForDepartment$]</td>
                    <td>The department of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Functions</td>
                    <td>[$TicketRequestedForPosition$]</td>
                    <td>Function of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Office</td>
                    <td>[$TicketRequestedForOffice$]</td>
                    <td>The office of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Name of supervisor</td>
                    <td>[$TicketRequestedForManagerName$]</td>
                    <td>The name of the direct supervisor of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Personal number</td>
                    <td>[$TicketRequestedForPersonalNumber$]</td>
                    <td>The personal number of the user for whom the request is being made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Organisation - Name</td>
                    <td>[$TicketRequestedForAccountName$]</td>
                    <td>The organization name of the user for whom the request is made.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Organisation - Organisation's own items</td>
                    <td>[$TicketRequestedForAccount.<br />
                        tAccountCust.<em>ColumnName</em> $]</td>
                    <td>The custom organization entry of the user for whom the request is created, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tAccountCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Required for - Other - Person's own items</td>
                    <td>[$TicketRequestedFor.<br />
                        tPersonCust.<em>ColumnName</em> $]</td>
                    <td>The custom field of the user for whom the request is made, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tPersonCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Name</td>
                    <td>[$TicketSolverName$]</td>
                    <td>Solver's first and last name.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Mobile</td>
                    <td>[$TicketSolverMobile$]</td>
                    <td>Solver's Mobile.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - E-mail</td>
                    <td>[$TicketSolverEmail$]</td>
                    <td>E-mail of the solver.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - E-mail 2</td>
                    <td>[$TicketSolverEmail2$]</td>
                    <td>Solver's second email.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Telephone to work</td>
                    <td>[$TicketSolverPhoneToWork$]</td>
                    <td>Solver's phone to work.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Telephone to work 2</td>
                    <td>[$TicketSolverPhoneToWork2$]</td>
                    <td>Solver's second phone to work.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Other contacts</td>
                    <td>[$TicketSolverOtherContacts$]</td>
                    <td>Other contacts of the solver.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Director - Department</td>
                    <td>[$TicketSolverDepartment$]</td>
                    <td>Solver's Department.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Functions</td>
                    <td>[$TicketSolverPosition$]</td>
                    <td>Solver function.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Office</td>
                    <td>[$TicketSolverOffice$]</td>
                    <td>Solver's Office.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Name of supervisor</td>
                    <td>[$TicketSolverManagerName$]</td>
                    <td>Name of the solver's direct supervisor.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Personal number</td>
                    <td>[$TicketSolverPersonalNumber$]</td>
                    <td>Solver's personal number.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Organisation - Name</td>
                    <td>[$TicketSolverAccountName$]</td>
                    <td>Name of the solver's organization.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Organisation - Organisation's own items</td>
                    <td>[$TicketSolverAccount.<br />
                        tAccountCust.<em>ColumnName</em> $]</td>
                    <td>The solver's custom organization entry, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tAccountCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Solver - Other - Person's own items</td>
                    <td>[$TicketSolver.tPersonCust.<em><br />
                        ColumnName</em> $]</td>
                    <td>Solver's custom field, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tPersonCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Service Name</td>
                    <td>[$TicketService$]</td>
                    <td>Name of the <a href="../../../../../alvao-service-desk/implementation/services">service</a> including the path in the service tree.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Service - Telephone</td>
                    <td>[$TicketServicePhone$]</td>
                    <td>Service phone number.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Service - Process</td>
                    <td>[$TicketServiceProcess$]</td>
                    <td>Name of the <a href="../../../../../alvao-service-desk/implementation/services/processes">process</a> of the service.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>Service - Custom service items</td>
                    <td>[$TicketService.tHdSectionCust.<em><br />
                        ColumnName</em> $]</td>
                    <td>A custom service item where <em>ColumnName</em> represents the name of the corresponding column in the <em>tHdSectionCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>SLA - Name</td>
                    <td>[$TicketSLA$]</td>
                    <td>Name of the <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a> request.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
                <tr>
                    <td>SLA - Custom SLA items</td>
                    <td>[$TicketSLA.tSlaCust.<em>ColumnName</em>$]</td>
                    <td>Custom SLA item, where <em>ColumnName</em> represents the name of the corresponding column in the <em>tHdSectionCust</em> table.</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                    <td>Yes</td>
                </tr>
            </tbody>
        </table>
    </div>

</asp:Content>
