<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request Approval</h1>

    <p>Requests may be subject to the approval of responsible persons. You can enable approval for individual request statuses in <em>WebApp - Administration - Service Desk - Processes - Solving process - Edit</em> - the <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">Approval</a> section - by selecting <em>From this status, you can move - To statuses based on approval result</em>.</p>
    <p>For the initiation and progress of request approval from the perspective of the solver and approver, see <a href="../../../requests/request-approval">Request Approval</a>.</p>
    <h2>Approval Schemes</h2>
    <p>Request approval can be automated according to a specific approval scheme. You can edit approval schemes in <em>ALVAO WebApp - Administration - Service Desk</em> - <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/approval-scheme">Approval Schemes</a>.</p>
    <h2>Email Approval</h2>

    <p>Approvers can conveniently approve and reject requests via email without the need to use Alvao. Simply insert the <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/approval-message-template">approval message template</a> into the <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/service/message-template">[$ApprovalByEmail$]</a>.</p>


    <h2>Approval use cases</h2>
    <p>We will show the possibilities of approvals at different stages of the request lifecycle with the example of a simple <em>Change Management</em> process in an ERP system. A requester submits a request that progresses through the following statuses: </p>
    <table>
        <thead>
            <tr>
                <th>Request status</th>
                <th>Approval</th>
            </tr>
        </thead>
        <tr>
            <td>Request Approval</td>
            <td><strong>Approval Status</strong>- When a new request is created, approval is automatically triggered according to the <em>Approval of Change Request in ERP</em> scheme (Step 1 = Requester's Direct Supervisor, Step 2 = <em>Key ERP Users Group</em>). Once approved, the request will automatically move to the following status. If rejected, it will go to the <em>Closed</em> status.<br />
                <br />
                Note: Requests in Request Management processes start in a similar way. However, there the request is usually only approved by the Requester's direct supervisor.</td>
        </tr>
        <tr>
            <td>Analysis and Solution Proposal</td>
            <td>Analysis and creation of a solution proposal. This is not an approval status.</td>
        </tr>
        <tr>
            <td>Solution design approval</td>
            <td><strong>Approval Status</strong> - The request solver, with the <em>Make Approval</em> command, forwards the proposal to the appropriate persons appropriate to the nature of the change for approval. After approval, the solver shall switch the request to the following status. After rejection, it is returned to the <em>Analysis and Solution Proposal</em> status.</td>
        </tr>
        <tr>
            <td>Implementation</td>
            <td>Realize the change as proposed. This is not an approval status.</td>
        </tr>
        <tr>
            <td>Solved</td>
            <td><strong>Approval status</strong> - when a request enters this status, it automatically triggers approval according to the <em>Approval by Requester</em> scheme (1 step = Requester).<br />
                If the Requester approves the implementation, the request will automatically move to the <em>Closed</em> status. Otherwise, it will return to the <em>Realization</em> status.<br />
                In the <em>Resolved</em> status, the <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">automatically go to the Closed status</a> option is disabled.<br />

                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                The requester does not gain any additional permissions to work with the request beyond approval or rejection during the approval process.

            </td>
        </tr>
        <tr>
            <td>Closed</td>
            <td>Request resolved and closed. This is not an approval status.</td>
        </tr>
    </table>
    <p>A process may contain a continuous sequence of approval statuses, e.g., a <em>Department Head Approval</em> status followed by a <em>CFO Approval</em> status. Approval by the department head may automatically transition the request to the next status, which may automatically trigger approval by the CFO.</p>
    <p>
        If you are using a multi-step approval scheme in which the subject matter of the approval changes at each step (for example, the CFO approves the price in one step and the development manager approves the program content in the next step),
 we recommend that you divide such approvals into multiple process statuses, with one status for each subject of approval. You can then describe the subject of approval more precisely at each step in your report to the approver.
    </p>

    <h2>Approval notifications sent</h2>
    <ul>
        <li><b>Notification to Approvers of New Request for Approval</b> - If an approval step is initiated, Approvers will be notified of the new request for approval. The notification includes a message for approvers generated by <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/approval-message-template">template</a>, which you can change in the approval status settings. </li>
        <li><b>Notification to Approvers of Completion of Approval Step</b> - If an approval step is completed with an approval or rejection by one of the current approvers, a notification is sent to the others. If the approval is cancelled or expires, a notification is sent to all current approvers.</li>
        <li><b>Notification to solvers</b> - Notification is sent to solvers when the request is approved and when the approval is cancelled or expires. Notification of rejection is sent to the investigators only if the rejection does not resolve the request. If the request has no solvers, these notifications are sent to the <a href="../service-roles">main solvers</a> of the service, or to all members of the current <a href="../service-roles">solver group</a>.</li>
    </ul>

    <h2>Alternative approval methods</h2>
    <p>Approval can also be handled simply by having the solver send an approval request to an approver, or multiple approvers, using the <em>Send Message</em> command. The approvers respond to the message and the response is recorded in the request communication. The solver then evaluates the responses and, based on the responses, switches the request to a status corresponding to approval or rejection.</p>
    <p>Another option is to assign the request to the approver using the <em>Assign</em> command. The approver then becomes the solver of the request (the approver must be the solver of the service) and then switches the request to either the approve or reject status. This method of &quot;approval&quot; can be used e.g. for final quality control of changes where the tester is the approver.</p>

</asp:Content>
