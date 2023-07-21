<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Important communication</h1>
    <p>To make it easier to navigate the request communication, the initiation message containing the request is marked with a "flag" icon and the resolution message is marked with a "pipe" icon. Other events in the communication can be flagged in the same way, either immediately when they are created or subsequently when they are edited with the <em>Edit</em> command. You can also deselect them afterwards.</p>
    <p>You can also mark events directly on the <em>Communications</em> tab with the <em>Mark with Important</em> or <em>Mark with Request Resolution</em> flags, or by clicking on the icons below the event author's portrait.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        Only those events in the communication that can be edited can be marked. Only members of the service's solution team can change the label.
    </div>

</asp:Content>
