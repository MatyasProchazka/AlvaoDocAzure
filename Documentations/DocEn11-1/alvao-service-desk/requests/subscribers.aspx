<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request tracking</h1>
    <p>The request can be tracked by other users or other people who may not have access to the Alvao system. The following email notifications are automatically sent to the followers:</p>
    <ul>
        <li>Notification of an incoming request message</li>
        <li>Notification of a change in the request resolution date</li>
        <li>Request resolution notification</li>
        <li>Reopen request notification</li>
    </ul>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Notification is sent to the watcher of every incoming message for a request, including messages not addressed to the requester. Therefore, the followers receive more information (emails) than the requester of the request.
    </div>


    <div class="note">
        <div class="icon">


            <p>&nbsp;</p>
        </div>
        <div class="title">Note:</div>
        Followers who are direct recipients of a message are no longer sent notification of an incoming message. Similarly, notification is not sent to the follower whose action is to be the basis for sending the notification.
    </div>

    <h2>Tracking shutdown</h2>
    <p>If you want to track a request, use the <strong>Track Request</strong> command on the request page. The requester of a request cannot turn on request tracking themselves.</p>
    <p>If you want to enroll someone else to track a request, on the request page, on the <strong>General</strong> - <strong>Trackers</strong> tab, click the <strong>Add Trackers</strong> link and enter the trackers' names one by one. Followers must be registered users with a completed email, but do not need to have access to the Alvao applications, i.e. they do not need to have an assigned username. Followers who have access to the Alvao applications automatically gain the right to view the request and record events in their log.</p>
    <p>Tracking can only be enabled by members of the resolution team, readers of the service or current trackers of the request.</p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you want to see which requests you are tracking in the <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">request table</a>, view the <em>Request Tracking</em> column, which you can also filter requests by.
    </div>

    <h2>Tracking off</h2>
    <p>
        To disable request tracking, use the <strong>Stop tracking the request</strong>. You can also disable tracking by using the link provided at the end of each notification.
    </p>
    <p>If you want to disable tracking for someone else, use the <strong>General - Trackers</strong> tab to remove them from the <strong>tracking list</strong>.</p>



    <h2>Contents of the notification</h2>
    <p>The same notification is sent to followers as to requesters, but a link is added at the end to disable tracking. In system notifications, the phrase &quot;your request&quot; is replaced with &quot;request&quot;, as it is usually not the request of the watcher.</p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        In custom notifications, the phrase &quot;your request&quot; is not substituted, so the text can be confusing to the follower.
    </div>

</asp:Content>
