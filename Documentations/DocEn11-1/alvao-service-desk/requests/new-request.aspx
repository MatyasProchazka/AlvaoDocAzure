<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request creation</h1>
    <p>A request can be created in one of the following ways:</p>
    <ul>
        <li>The requester sends request by e-mail to the address of one of the Service Desk services, where it is automatically loaded into the database.</li>
        <li>The requester enters  request via the ALVAO WebApp.</li>
        <li>The requester sends their request by email to the solver. The Requester receives the message in MS Outlook and forwards it to the mailbox of the service for automatic retrieval or retrieves it themself, see <a href="new-request-outlook">Reading a request from MS Outlook</a>.</li>
        <li>The requester communicates their request to the solver in person or <a href="new-request-call-centre">by phone</a>. The latter manually writes the request, see <a href="new-request-manual">Manual entry of a new request</a>.</li>
    </ul>
    <p>
        If the request is in a status where automatic approval is defined after creation, the request enters approval. After approval is complete, the request status automatically changes to the end status defined in the approval status.<br />
        If the request does not need to be approved, it appears to the main solvers in the request table in the <strong>Unassigned</strong> view.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the submitted message does not have a subject, the placeholder text "(no title)" is used for the request title and "(no subject)" is used for the request's originating message. Quotation marks in placeholder texts are not part of strings.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When retrieving a service mailbox, the system does not create new requests from messages that relate to the undeliverability of a previously sent message from the Service Desk.<br />
        Undeliverable messages (MAILER-DAEMONS) from MS Exchange and Office365 are automatically ignored. These messages are identified based on the sender.<br />
        To edit the list of email addresses that will be ignored by the system, run this SQL query on the Alvao database:<br />
        <br />
        <span class="style1">UPDATE dbo.tProperty SET sPropertyValue = 'address1@domain;address2;address3@domain' WHERE sProperty = 'MailerDaemons'</span><br />
        <br />

        Possible ways of writing the address:<br />
        <ul>
            <li>'address@domain' - the system ignores a specific address (e.g. MAILER-DAEMON@MAILER-DAEMON)</li>
            <li>'address' - the system ignores all addresses whose left side (up to the "@" character) is equal to the specified string (e.g. postmaster)</li>
        </ul>
    </div>



</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 {
            font-family: "Courier New", Courier, monospace;
        }
    </style>

</asp:Content>