<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Log</h1>
    <p>On this page you can see a summary of all the events in the request logs (see the Request - <a href="requests/request">Communications</a> tab) that you have created today. To view older events or events created by other users, create new <a href="../../alvao-asset-management/working-with-tables">views</a> in the table.</p>
    <p>The page is only displayed to members of the service's solution teams.</p>
    <p>&nbsp;Options:</p>
    <ul>
        <li><strong>Command Panel</strong><ul>
            <li><a href="requests/new-request">New request</a> - create a new request</li>
            <li><a href="diary/edit">Edit</a> - edit selected event</li>
            <li><a href="requests/request/message">Reply</a> - send an email message in response to the selected event in the table<ul>
                <li><a href="requests/request/message">Forward</a> - forward the selected event by email</li>
            </ul>
            </li>
            <li><strong>...</strong><ul>
                <li><strong>Delete</strong> - delete the selected event. The event will no longer be displayed normally, but will remain stored in the database. Use the command in the view menu - <em>View Options</em> - <em>View Deleted</em> to view the deleted events in a table.</li>
            </ul>
            </li>
            <li><strong>Request tag of the selected event</strong> - menu of the request commands in whose log the selected event is stored.</li>
        </ul>
        </li>
        <li><strong>Event Table</strong> - the table displays all events from all requests that you have the right to see. You can <a href="../../alvao-asset-management/working-with-tables">customize the table</a> as needed.
  <div class="note">
      <div class="icon"></div>
      <div class="title">Note:</div>
      <br />
      The table shows activities created in the last 3 months. Older activities are automatically moved to the archive. You can view the archive by using the command in the view menu - <em>View Options</em> - <em>View Archive</em>.
  </div>
        </li>

        <li><strong>Selected Event</strong> - select an event in the table and the selected event will be displayed in the right part of the page.</li>
    </ul>


</asp:Content>
