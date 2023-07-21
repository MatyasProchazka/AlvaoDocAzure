<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ITicketAutoAction</h1>
    By implementing the ITicketAutoAction interface in a <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom actions based on a change in the value of a request item or respond to a newly created request.
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
                <td translate="no"><a href="#OnTicketChanged">OnTicketChanged</a></td>
                <td>Change the request item.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnTicketCreated">OnTicketCreated</a></td>
                <td>Create a request.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnTicketChanged">OnTicketChanged</h2>
    Custom action based on a change in the value of a request item (custom/system).
    <br />
    In the implemented method, define both the conditions for performing the operations and the operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnTicketChanged(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>, <span translate="no">string</span> <b translate="no">properties</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the database transaction in progress.</li>
                <li><strong translate="no">ticketId</strong> - The ID of the request (tHdTicket.iHdTicketId) to which the custom action applies.</li>
                <li><strong translate="no">personId</strong> - The ID of the user (tPerson.iPersonId) who executed the event on the request. In some cases it could be the system, then the value is NULL.</li>
                <li><strong translate="no">properties</strong> - the changed request items separated by a comma (<em>table.column</em>).
 <table>
     <thead>
         <tr>
             <th>table.column</th>
             <th>Request item</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td translate="no">tHdTicket.TicketStateId</td>
             <td>Status</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketSlaId</td>
             <td>SLA</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.dHdTicketDeadline</td>
             <td>Deadline</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketHdSectionId</td>
             <td>Service</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.iHdTicketUser</td>
             <td>Requester</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketSolverPersonId</td>
             <td>Solver</td>
         </tr>

         <tr>
             <td translate="no">tHdTicket.SolverGroupRoleId</td>
             <td>Solver group</td>
         </tr>

         <tr>
             <td translate="no">tHdTicket.sHdTicket</td>
             <td>Request name</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.liHdTicketPriorityId</td>
             <td>Priority</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.Impact</td>
             <td>Impact</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.Urgency</td>
             <td>Urgency</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.mHdTicketNotice</td>
             <td>Notes</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.sHdTicketGroup</td>
             <td>Group</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.sHdTicketDeviceCode</td>
             <td>Device number</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackSolveSpeed</td>
             <td>Solve speed</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackProfessionality</td>
             <td>Professionality </td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackExpertise</td>
             <td>Expertise</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.FeedbackComment</td>
             <td>Comments and Notes</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.RelatedAccountId</td>
             <td>Related organization</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.Objects</td>
             <td>Objects</td>
         </tr>
         <tr>
             <td translate="no">tHdTicket.RequestedForPersonId</td>
             <td>Requested for</td>
         </tr>
         <tr>
             <td translate="no">tHdTicketCust.*</td>
             <td>Custom fields</td>
         </tr>
          
     </tbody>
 </table>
                </li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    For an example use case, see the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">AssignToTester</a> application template.

    <h2 id="OnTicketCreated" translate="no">OnTicketCreated</h2>
    Custom action based on the creation of a request.
    <br />
    In the implemented method, define both the conditions for executing the operations and the operations with the request itself.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnTicketCreated(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">ticketId</strong> - New request ID (tHdTicket.iHdTicketId).</li>
                <li><strong translate="no">personId</strong> - ID of the user (tPerson.iPersonId) who created the request (does not always have to be the requester).</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    For an example use case, see the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CreateAnalysis</a> application template.

</asp:Content>
