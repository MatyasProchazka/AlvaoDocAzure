<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Unread events</h1>
    <p>Requests that have new events in their communication that you haven't read yet will show up in bold in the <a href="../../list-of-windows/alvao-webapp/requests/table-of-requests">request table</a>.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        By default, only unread requests that you have to resolve are highlighted in the request table. You can change the highlighting mode in <a href="../../list-of-windows/alvao-webapp/settings">Settings</a> - <em>View - Requests</em>.
    </div>

    <p>
        On the request page, on the <strong>Communications</strong> tab, individual unread events are displayed in bold and a blue vertical bar is displayed at their left edge. If you want to mark an event as read or unread, click on this blue bar with the mouse or in the area where the bar is displayed.
  If there are any older unread events in the request communication that are not visible on the page, the <strong>Unread Messages</strong> button appears at the top of the <em>Communications</em> tab, and when clicked, will roll up and expand the oldest unread event.
    </p>
    <p>
        When you view the <em>Communications</em> tab on the request page, after 5 seconds all unread events in the request are automatically marked as read. However, previously unread events will remain highlighted on the screen until you view the page or tab again.
    </p>
    <div class="tip">
        <div class="icon">
        </div>
        <div class="title">
            Tip:
        </div>
        <br />
        If you want an event to remain marked as unread, mark it with the mouse first as read and then as unread. The next time you view the communication, it will appear as unread.
    </div>
</asp:Content>
