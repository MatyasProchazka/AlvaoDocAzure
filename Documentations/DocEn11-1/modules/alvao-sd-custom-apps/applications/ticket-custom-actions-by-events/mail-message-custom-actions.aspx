<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IMailMessageAutoAction</h1>
    By implementing the <span translate="no">IMailMessageAutoAction</span> interface in the <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a> you can define custom actions when retrieving a message from the service mailbox before saving the message to the log of an existing request or before creating a new request.
In the newly created script, set the value of the Name property (the name of the automatic action) in the action class constructor.

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To store properties and action settings, we recommend defining the <em translate="no">Settings</em> class in a separate script that you create from the <em>Class Library</em> template.
        <br />
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
                <td translate="no"><a href="#OnMessageReceived">OnMessageReceived</a></td>
                <td>Read a new message from the service mailbox.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnMessageReceived" translate="no">OnMessageReceived</h2>
    The actual action can be performed when retrieving a message from the service mailbox before saving the message to the log of an existing request or before creating a new request.
In the implemented method, define both the conditions for executing the operations and the operations themselves.
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the message is not further processed after automatic actions, a warning is written to the event log.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If more than one of these automatic actions is implemented, they are called sequentially until one of them returns <span class="console" translate="no">false</span>,
	and the order in which they are called is not guaranteed.
    </div>

    <ul>
        <li>Syntax: <b translate="no">bool</b> OnMessageReceived(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, MailMessage <b translate="no">message</b>, int <b translate="no">sectionId</b>, int <b translate="no">ticketId</b>, int <b translate="no">fromPersonId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">message</strong> - message object.</li>
                <li><strong translate="no">sectionId</strong> - the service ID (tHdSection.iSectionId) in which the message was retrieved.</li>
                <li><strong translate="no">ticketId</strong> - ID of the request (tHdTicket.iHdTicketId) to which the message belongs according to the subject, or zero if it is a new request creation.</li>
                <li><strong translate="no">fromPersonId</strong> - message sender ID (tPerson.iPersonId),
 or <em>Host</em> account, if the message sender is not found among the users.</li>
            </ul>
        </li>
        <li>Return value:
            <ul>
                <li><strong translate="no">bool</strong> - return the return value <span class="console" translate="no">true</span> or <span class="console" translate="no">false</span>
                    indicating whether or not the message should continue to be processed by default.</li>
            </ul>
        </li>
    </ul>

    For an example use case, see the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">AssignToSolverByEmail</a> application template.

</asp:Content>
