<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Outlook Add-in</h1>
    <p><strong>ALVAO Outlook Addin</strong> is an add-in for Microsoft Outlook that allows you to work with requests in <strong>ALVAO Service Desk</strong> directly in the Microsoft Outlook environment.</p>

    <h2>Overview of terms used</h2>
    <table>
        <thead>
            <tr>
                <th>Concept</th>
                <th>Meaning</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Target request</td>
                <td>Request detail in ALVAO WebApp within <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a> regardless of the currently displayed tab (General, links, ...). </td>
            </tr>

            <tr>
                <td>Adjustment schedule</td>
                <td>In this mode, there is no <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a> is updated in any way by changing the selected item.</td>
            </tr>

        </tbody>
    </table>


    <h2>Requests display</h2>
    <ol>
        <li>In MS Outlook, select the item (email, event, meeting, task) that has a valid request tag in the subject from <strong>ALVAO Service Desk</strong>
            (e.g. T123ALVAO).</li>
        <li>In <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a>, the request log (<em>target request</em>) will be displayed.
        </li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tips:</div>
        The <em>target request</em> can be worked with directly in MS Outlook using the commands provided by the <strong>ALVAO WebApp</strong>.

        <br />
        To work with the request in a separate window outside of Outlook, use the <strong>View Request</strong> command from the local menu above the message to open the request in the <strong>ALVAO WebApp</strong>.
	  <br />
        Another option&nbsp;is to use the <strong>Open in separate window</strong> in the header of <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a>.
    </div>

    <h2>Creating a new request from a message</h2>
    <p>Use the following procedure to create requests in ALVAO Service Desk based on messages that are not yet related to any requests.</p>
    <ol>
        <li>1. In MS Outlook, select one or more messages from which you want to create requests in ALVAO Service Desk. One request will be created for each message.</li>
        <li>On the <strong>Home</strong> tab, select the <strong>New request from message</strong> command, or select this command from the local menu above the selected message.</li>
        <li>In the window <a href="../list-of-windows/alvao-outlook-addin/ticket-from-mail">New request from message</a>, select the requester, the service, edit the name of the request if necessary, and press the <strong>OK</strong> button.</li>
    </ol>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Notes:</div>
        The default requester of a newly created request is the sender of the message.  If the sender is not recognized, an unregistered user (Host) is selected. The request is created with the default SLA of the selected requester.<br />
        All initial prefixes RE: and FW: are removed from the message subject.<br />
        If only one request has been created and the ALVAO taskbar is not in edit mode, the taskbar will display the created request.  Otherwise, the contents of the taskbar will not change.<br />
        For each request, notifications are sent to the main solvers and Requesters of the request.
    </div>



    <h2>Save a message to the log of an existing request</h2>
    <p>Use the following procedure to save selected messages that are not related to any request (i.e., do not have a request marker in the subject line) or are not saved in the request log (e.g., because they were not sent in a copy to the service address) to the log of an existing request.</p>

    <ol>
        <li>In MS Outlook, select the message(s) you want to save to the log of an existing request.</li>
        <li>If you do not have displayed <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a>, display it using the <strong>View Taskbar</strong> on the <strong>Home</strong>.</li>
        <li>In the ALVAO Taskbar, search (e.g. with the <em>Search Requests</em> command) for the target request in whose journal you want to save the messages.</li>
        <li>On the <strong>Home</strong> tab, select the <strong>Save to request log</strong> command, or select this command from the local menu above the selected message.</li>
        <li>A window will appear on the screen prompting you to confirm the action. Check the request number in the prompt and confirm the action with the <strong>Yes</strong> button.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Notes:</div>

        The retrieved messages are saved in the request log with the time of sending, and therefore they may not be displayed immediately at the top of the log when sorted by <strong>Date</strong> column, they are placed chronologically after any more recent entries.<br />
        If the sender of the message is not recognized, the Host is listed as the sender (the sender's email address is displayed in the log).<br />
        If the retrieved message does not have a subject, the placeholder "(no subject)" is used. Quotation marks are not part of the string.
    </div>
    <h2>Create a new Outlook item based on a request</h2>
    <p>
        For a request that is currently displayed in the ALVAO taskbar, you can create a new Outlook item, i.e., an email message, event, appointment, or task, with a command in the taskbar <strong>New item from request</strong>.
        <br />
        In the form to create the item, the subject line is automatically populated with the tag and name of the selected request.
    </p>

    <h2>Finding the target request to process unrecognized items</h2>
    <p>
        If the selected item is without a valid request tag in the subject, users are
 <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a>
        request reports are available to the user, from which can quickly select a <em>target request</em>, which he can then use, for example, to save a message in the request log.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Notes:</div>
        Using any of the links will go <a href="../list-of-windows/ALVAO-Outlook-Addin/task-pane">ALVAO Task Panel</a>
        to <em>edit mode</em>.<br />
        Closed requests are also listed in the reports.
    </div>

    <h3>Last communication with sender</h3>
    <p>The section lists up to 5 requests in which the sender (or meeting organizer or task author) last communicated, i.e. is the sender (or author) or recipient of at least one journal entry.   </p>
    <p>
        The list is sorted by date column <strong>
  Person's last activity</strong>.
    </p>
    <p>
        To view all of a sender's communications, use the <strong>View more</strong> link at the end of the section.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Notes:</div>
        <br />
        <p>The section is not displayed if:</p>
        <ul>
            <li>no item is selected</li>
            <li>the email address of the sender (or meeting organizer or task creator) is not maintained in the <strong>ALVAO Service Desk</strong>.</li>
            <li>all items in the group of selected items do not have the same email address of the sender (or meeting organizer or task creator)</li>
            <li>user does not have permission to view requests</li>
        </ul>
    </div>

    <h3>Last viewed requests</h3>
    <p>
        No more than 5 recent <em>requests</em> are listed in the section. Target <em>requests</em> that are not listed in the <strong>Last Sender Communications</strong> section.
    </p>
    <p>
        To view all requests, use the <strong>Requests.</strong>
    </p>
    <h2>Setting up the ALVAO add-on</h2>

    <p>
        To set up the add-on, use the <strong>File - ALVAO Add-in Settings</strong>, which will display the <a href="../list-of-windows/ALVAO-Outlook-Addin/options">ALVAO Add-on Settings</a>.
    </p>

</asp:Content>
