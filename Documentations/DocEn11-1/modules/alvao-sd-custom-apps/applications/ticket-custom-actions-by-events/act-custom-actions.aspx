<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IActAutoAction</h1>
    By implementing the IActAutoAction interface in a <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom actions when creating an event on a request.
    <br />
    In the newly created script, set the value of the Name property (the name of the automatic action) in the constructor of the action class.

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
                <td translate="no"><a href="#OnActChanged">OnActChanged</a></td>
                <td>Edit Event.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnActCreated">OnActCreated</a></td>
                <td>Event creation.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnActRemoved">OnActRemoved</a></td>
                <td>Delete an event.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnActChanged" translate="no">OnActChanged</h2>
    Custom action based on event modification.
    <br />
    In the implemented method, define both the conditions for executing the operations and the event operations themselves.
    <ul>
        <li>Syntax: <b>void</b> OnActChanged(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">actId</b>, int <b translate="no">personId</b>, <span translate="no">string</span> <b translate="no">properties</b>)</li>
        <li>Parameters:
            <ul>
                <li translate="no"><strong>con</strong> - SqlConnection to the database.</li>
                <li translate="no"><strong>trans</strong> - SqlTransaction of the database transaction in progress.</li>
                <li translate="no"><strong>actId</strong> - The ID of the event (tAct.iActId) that was changed.</li>
                <li translate="no"><strong>personId</strong> - The ID of the user (tPerson.iPersonId) who changed the event.</li>
                <li translate="no"><strong>properties</strong> - the changed event items separated by a comma (<em>table.column</em>).
 <table>
     <thead>
         <tr>
             <th>table.column</th>
             <th>Event Item</th>
         </tr>
     </thead>
     <tbody>
         <tr>
             <td translate="no">tAct.dAct</td>
             <td>Date</td>
         </tr>
         <tr>
             <td translate="no">tAct.liActKindId</td>
             <td>To whom</td>
         </tr>
         <tr>
             <td translate="no">tAct.sActTo</td>
             <td>Date</td>
         </tr>
         <tr>
             <td translate="no">tAct.sAct</td>
             <td>Subject</td>
         </tr>
         <tr>
             <td translate="no">tAct.mActNotice</td>
             <td>Text</td>
         </tr>
         <tr>
             <td translate="no">tDocument.liDocumentActId</td>
             <td>Attachments</td>
         </tr>
         <tr>
             <td translate="no">tActHd.bActHdUserRead</td>
             <td>Show Requester</td>
         </tr>
         <tr>
             <td translate="no">tAct.bWaitingForUser</td>
             <td>Waiting for a requester</td>
         </tr>
         <tr>
             <td translate="no">tAct.nActWorkHours</td>
             <td>Work</td>
         </tr>
         <tr>
             <td translate="no">tAct.nActTravelHours</td>
             <td>Travel time</td>
         </tr>
         <tr>
             <td translate="no">tAct.nActTravelKm</td>
             <td>Distance</td>
         </tr>
         <tr>
             <td translate="no">tAct.bNoCharge</td>
             <td>NoCharge</td>
         </tr>
     </tbody>
 </table>
                </li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    <h2 id="OnActCreated" translate="no">OnActCreated</h2>
    Custom action based on event creation.
    <br />
    In the implemented method, define both the conditions for executing the operations and the event operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnActCreated(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">actId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">actId</strong> - ID of the newly created event (tAct.iActId).</li>
                <li><strong translate="no">personId</strong> - ID of the user (tPerson.iPersonId) who created the event.</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    Automatic actions can be performed in the following situations:<ul>
        <li>Manual creation of any event with <em>New Event</em> or <em>Note</em>.</li>
        <li>Sending a message with <em>Send Message</em>, <em>Reply</em>, etc.</li>
        <li>Read an email from the service mailbox using Alvao Service.</li>
        <li>Manually retrieve a message from Outlook using the <em>Outlook Add-in - Save to Request Log</em>.</li>
        <li>Creating a triggering event when a new request is created.</li>
        <li>Calling the <em>CreateAct</em> or <em>CreateTicket</em> web method to create the founding message.</li>
    </ul>

    You can find an example usage in the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">SendMailsAboutNewEvent</a> application template.

    <h2 id="OnActRemoved" translate="no">OnActRemoved</h2>
    Custom action based on event removal.
    <br />
    In the implemented method, define both the conditions for executing the operations and the event operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnActRemoved(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">actId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the ongoing database transaction.</li>
                <li><strong translate="no">actId</strong> - ID of the event being removed (tAct.iActId).</li>
                <li><strong translate="no">personId</strong> - ID of the user (tPerson.iPersonId) who deleted the event.</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

</asp:Content>
