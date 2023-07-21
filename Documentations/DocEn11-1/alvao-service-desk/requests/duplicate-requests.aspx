<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Duplicate requests</h1>

    <p>If two or more identical requests from the same requester happen to exist on the system, you can merge these requests into one of the duplicate requests by using the <a href="../../list-of-windows/alvao-webapp/requests">Merge Requests</a> command. The information from the duplicate requests (logs, links to other requests and objects, trackers) is transferred into a single successor, and the other duplicate requests are permanently removed. </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Merging requests is an irreversible operation.
    </div>

    <p>When merging requests, do the following:</p>

    <ol>
        <li>On the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> page, select the requests you want to merge and use the <strong>Merge Requests</strong> command.</li>
        <li>In the <a href="../../list-of-windows/alvao-webapp/requests/request/merge-request">merge requests</a> form, review the information you entered and edit it if necessary.</li>
        <li>Confirm the form content with the <strong>OK</strong> button.</li>
    </ol>

</asp:Content>
