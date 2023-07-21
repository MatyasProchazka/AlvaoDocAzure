<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Retrieving a message from the applicant from MS Outlook</h1>

    <p>In the event that a requester sends an email message to your personal mailbox that contains additional information to an existing request, you can use the <a href="../../modules/alvao-outlook-addin">ALVAO Outlook Add-in</a> - <strong>Save to Request Log</strong> command to save the message to the request log in Alvao directly from Outlook.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the sent message does not have a subject, the placeholder text "(no title)" is used for the request title or "(no subject)" for the request's body message. Quotation marks in placeholder texts are not part of strings.
    </div>


</asp:Content>
