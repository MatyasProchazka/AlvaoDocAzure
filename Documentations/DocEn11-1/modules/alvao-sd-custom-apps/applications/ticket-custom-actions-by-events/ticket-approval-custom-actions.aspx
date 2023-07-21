<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ITicketApprovalAutoAction</h1>
    You can define custom actions by implementing the ITicketApprovalAutoAction interface in <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application scripts</a>.
    <br />
    Automatic actions are only called for manually triggered approvals with automatic status transition disabled.
    <br />
    In the newly created script, set the value of the Name property (the name of the automatic action) in the action class constructor.

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To store properties and action settings, we recommend defining the <em>Settings</em> class in a separate script that you create from the <em>Class Library</em> template.
        <br />
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If you want to use only some of the methods of the implemented interface in the automatic action, leave an exception in the body of the other methods from the interface: <span class="console" translate="no">throw new NotImplementedException();</span>.
    </div>

    <h2>Interface Methods</h2>
    <table>
        <thead>
            <tr>
                <th>Method</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="#OnApproved">OnApproved</a></td>
                <td>Approval of the request.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnRejected">OnRejected</a></td>
                <td>Reject request.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnApproverAdded">OnApproverAdded</a></td>
                <td>Adding an approver to the approval.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnApproverCanceled">OnApproverCanceled</a></td>
                <td>Cancellation of a specific approver.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnApproved" translate="no">OnApproved</h2>
    Custom action based on request approval.
    <br />
    In the implemented method, define both the conditions for executing the operations and the operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnApproved(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">approvalItemId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">ticketId</strong> - Request ID (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemId</strong> - approval step ID (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    For an example use case, see the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">OrderAfterApproval</a> application template.

    <h2 id="OnRejected" translate="no">OnRejected</h2>
    Custom action based on the approval of the request rejection.
    <br />
    In the implemented method, define both the conditions for executing the operations and the operations themselves.
    <ul>
        <li>Syntax: <b>void</b> OnRejected(SqlConnection <b>con</b>, SqlTransaction <b>trans</b>, int <b>ticketId</b>, int <b>approvalItemId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">ticketId</strong> - Request ID (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemId</strong> - approval step ID (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    <h2 id="OnApproverAdded" translate="no">OnApproverAdded</h2>
    Custom action based on adding a request approver.
    <br />
    In the implemented method, define both the conditions for executing the operations and the operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnApproverAdded(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, IEnumerable&lt;int&gt; <b translate="no">approvalItemIds</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">ticketId</strong> - Request ID (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemIds</strong> - List of approval step IDs (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    <h2 id="OnApproverCanceled">OnApproverCanceled</h2>
    Custom action based on the removal of the request approver.
    <br />
    In the implemented method, define both the conditions for executing the operations and the operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnApproverCanceled(SqlConnection <b translate="no">con,</b> SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, IEnumerable&lt;int&gt; <b translate="no">approvalItemIds</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">ticketId</strong> - Request ID (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">approvalItemIds</strong> - List of approval step IDs (tHdTicketApprovalItem.iHdTicketApprovalItemId).</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

</asp:Content>
