<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Loading the request from MS Outlook</h1>

    <p>You can create a new request from a message delivered to your personal mailbox using <a href="../../modules/alvao-outlook-addin">Outlook Add-in</a> - <strong>New Request from Message</strong>.</p>

    <p>
        In the log of requests retrieved in this way, you will find the full text of the retrieved message including attachments.<br />
        One new request is created for each message. For each request, notifications are sent to the main solver and the Requester of the request. To retrieve a message for an existing request, see <a href="import-messages-from-outlook">Retrieving a message from a requester from MS Outlook</a>
    </p>


</asp:Content>
