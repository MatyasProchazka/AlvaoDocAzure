<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Checking</h1>
    <p>This section of the <a href="../status-request">New Request Status</a> form is used to set the behavior of the request status within the process.</p>
    <p>Options:</p>
    <ul>
        <li><b>Approval status</b> - select this option if you want the status you are editing to be approved. Enabling this option will display the <i>Approval</i> tab on the request page.
  <ul>
      <li><strong>Approval Run</strong> - select how the approval will be run and how it will proceed.
 <ul>
     <li><strong>Manually</strong> - the approval can be triggered manually by a member of the service's solution team with the <em>Let approve</em> command.
     </li>
     <li><strong>Automatically</strong> - approval is triggered automatically when the request transitions to the edited status.&nbsp;
         <ul>
             <li><strong>Approve by schema</strong> - select the appropriate <a href="../../../../../../../alvao-service-desk/implementation/services/processes/request-approval">approval scheme</a> from the menu.  </li>
             <li><strong>Approve by person</strong> - select a specific person to be the approver. 
                 <ul>
                     <li><strong>Expires in (hours)</strong> - specify how many hours from the time the approval is started, this approval will end with the result <em>Expired</em> if the approver has neither approved nor rejected the request by that time. A value of 0 represents an unlimited time limit.</li>
                 </ul>
             </li>
         </ul>
     </li>
 </ul>
      </li>
      <li><strong>Message template for approvers</strong><ul>
          <li><strong>Edit</strong> - opens the <a href="approval-message-template">window</a> to edit the message template for the approver.</li>
      </ul>
      </li>
  </ul>
        </li>
        <li><strong>From this status are allowed transitions</strong>
            <ul>
                <li><strong>To all statuses</strong> - select this option if the request in the edited status can transition to any other status.</li>
                <li><strong>Only to permitted statuses</strong> - select this option if you want to limit the set of statuses that a request in the edited status can go to. 
                    <ul>
                        <li><strong>Permitted statuses</strong> - list the statuses that the request can go to. 
                            <ul>
                                <li><strong>Edit</strong> - open the <em>Permitted statuses</em> window to enable the option for the statuses you want to allow the transition to. </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><strong>Automatically to statuses according to approval result</strong> - if you select this option for the approval status, the request will automatically go to one of the defined end statuses after the approval is complete (by the schema or by the selected person). In this mode, the solver cannot add additional approvers to an approval in progress.
                    <ul>
                        <li><strong>End statuses</strong> - for individual approval results (<em>Approved</em>, <em>Rejected</em>, <em>Cancelled</em>, <em>Expired</em>)
 select from the menu the status to which the request should automatically transition if the approval in the edited status ends with the given result.
                            <div class="tooltip">
                                <div class="icon"></div>
                                <div class="title">Tip:</div>
                                You can also select the edited status as the ending approval status. In this case, the request status will not change after the approval is complete. 
                            </div>
                            <div class="tip">
                                <div class="icon"></div>
                                <div class="title">Tip:</div>
                                Select the <em>Closed</em> status as the ending approval status only for approvals running between the separate <em>Solved</em> and <em>Closed</em> statuses.
                            </div>


                            <div class="note">
                                <div class="icon"></div>
                                <div class="title">Note:</div>
                                If you select <em>Resolved</em> as the ending approval status, the request will be resolved when the approval is complete, including sending a notification to the requester and possibly automatically transitioning to the <em>Closed</em> status.
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    <ul>
        <li>
            <strong>Switch to this status automatically following the first assignment to solver</strong> - a request in the <em>New</em> status will automatically transition to this status when passed to the solver.
        </li>
        <li>
            <strong>Assign request to a solver group during transition to this status</strong> - select the resolution group to which the request should be automatically forwarded.  This setting is part of the <a href="../../../../../../../modules/alvao-sd-advanced-workflows">ALVAO Advanced Workflows</a> module.
        </li>
        <li><strong>Send notification to requester when moving to this status</strong> - when moving to this status, a notification of the status change is automatically sent to the requester via email. You can edit the notification text via the <strong>edit notification template</strong> link.
          <div class="note">
              <div class="icon"></div>
              <div class="title">Note:</div>
              For the system statuses <em>New</em>, <em>Solved</em>, <em>Closed</em> and <em>Reopened</em>, this option is inactive. 
          </div>
        </li>
        <li><strong>Delay for reverse resolution (hours in business hours)</strong> - specify the maximum delay in hours with which a request can be retroactively written to be resolved, see <em>Request - </em><a href="../../../../../requests/request/resolve">Resolve</a> - <em>Resolve retroactively to</em>.
  A value of 0 means that resolve backwards cannot be written to requests.
 The time limit is calculated in the operating hours according to the SLA. This field is only available for the <em>Resolved</em> status.</li>
        <li><strong>Change automatically to Closed status</strong> - When the request is resolved, the request will go directly to the <em>Closed</em> status. This option is only available for the <em>Resolved</em> status. It is recommended to disable this option only if there are still some steps to be taken after the request is resolved, such as internal evaluation in the solution team, release of temporarily used resources, etc.</li>
        <li><strong>Show the “Transfer To Another Service” command</strong> command <em>Move to another service</em> - the request solver in this status will see the <em>Move to another service</em> command in the command bar at the first position. If the request does not have a solver, the command is displayed in the first position to the main solvers of the service. At the same time, the <em>Receive for Resolution</em> and <em>Forward</em> commands will move from the command bar to the &quot;...&quot; drop-down menu.</li>
        <li><strong>Show the Assign command</strong> - the solver of the request in this status will see the <em>Forward</em> command first in the command bar. If the request does not have a solver, the command is displayed in the first position to the main solvers of the service.</li>
        <li><strong>Pause SLA</strong> - The time the request spends in this status will not count towards the time to first response or the time to resolution. The first response and resolution dates set by SLA will automatically be delayed by the time spent in this status.</li>
        <li>
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                Since the application displays the name of the status as the cause of the pause in requests with a paused SLA, name the paused SLA statuses so that the name describes the cause of the pause, e.g., Approving, Waiting for Solution Acceptance, etc. Do not use generic names such as New. 
            </div>
        </li>
    </ul>

    <ul>
        <li><b>Automatic request creation</b> - a list of rules that automatically create new linked (e.g., child) requests when a request transitions to this status. This setting is part of the <a href="../../../../../../../modules/alvao-sd-advanced-workflows">ALVAO Advanced Workflows</a> module.
            <ul>
                <li><a href="automatic-request-creation">Edit</a> - edit template list</li>
            </ul>
        </li>
    </ul>


</asp:Content>
