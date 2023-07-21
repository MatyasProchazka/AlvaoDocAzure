<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Request</h1>


    <p>On this page you can see one specific <a href="../../../alvao-service-desk/requests">request</a> in ALVAO Service Desk.</p>
    <p>Options:</p>
    <ul>
        <li>Commands panel - the commands displayed in the commands panel are the same commands displayed on the <a href="../requests">Requests</a> page.</li>
        <li>Request header<ul>
            <li>Requester portrait with service icon and user presence. The user's presence is displayed next to the requester's and other participants' names.</li>
            <li><em>Request Tag</em> - a request identifier consisting of a prefix, request number and suffix, e.g. <em>T123ALVAO</em>.</li>
            <li><em>Request Name</em> - the short name of the request</li>
            <li><strong>Requester</strong> - the user who submitted the request.</li>
            <li><strong>Requested for</strong>- the user for whom the request was created. Only displayed if different from the requester.</li>
            <li><strong>Solver</strong>- the member of the resolution team who is currently assigned to solve the request.</li>
            <li><strong>Status</strong> - the status of the request, see the <em>Solving process</em> tab.</li>
            <li><strong>Current target/due date</strong> - the target that the solver is currently supposed to achieve in the request, see <a href="table-of-requests">requests table</a> - column <em>Current target</em>.</li>
        </ul>
        </li>
        <li>Tabs<ul>
            <li><strong>Communication<br />
            </strong>This tab displays the request log, i.e. sent and received email messages, internal notes of the solution team, minutes of phone calls and personal meetings, records of changes in the values of request data items, etc. The name of the tab changes according to the view you can select in the drop-down menu:&nbsp;
                <ul>
                    <li><strong>Communications</strong> (default view) - this view displays only records that contain some message or attachment from users. The requester of a request only has this view available and can only see records with the <a href="request/note">Show to requester</a> option enabled.</li>
                    <li><strong>Important</strong> - the view only displays events marked as <a href="../../../alvao-service-desk/requests/important-communication">important or as resolving a request</a>.</li>
                    <li><strong>Requester</strong> - displays only communication involving the requester of the request.</li>
                    <li><strong>Attachments</strong> - displays all communication containing any attachment.</li>
                    <li><strong>Detailed log</strong> - view all request log entries.</li>
                    <li><strong>Expand All</strong> - expand all records displayed on this tab.</li>
                    <li><strong>Find in log</strong> - a search input box shows up at the top of the tab. Enter at least part of the author’s name, recipient’s name, subject, text, or attachment name, press Enter, and then the found log records appear on the tab.</li>


                </ul>

            </li>
            <li><strong>General<br />
            </strong>This tab displays the values of the request items, see the columns in the <a href="table-of-requests">requests table</a>.<br />
                <br />
            </li>

            <li><strong>Solving process</strong><br />
                On this tab you see a diagram showing the current status of the request in the context of the entire solving process, i.e. the sequence of request statuses from creation to closure. The solving process is determined by service <a href="../../../alvao-service-desk/implementation/services/processes">process</a>.<div class="tip">
                    <div class="icon"></div>
                    <div class="title">
                        Tip:
                    </div>
                    Click on a particular status in the diagram to easily invoke the <a href="request/transit-to-state">Transit to status</a> command.<br />
                    <br />
                </div>


            <li><strong>Links</strong><br />
                This tab displays the requests that are <a href="../../../alvao-service-desk/requests/relations">linked to this request</a> in a table. After the tab name, you can see the number of requests linked.<br />
                In the command bar, you will also find the following commands.
                <ul>
                    <li><a href="request/edit-link">Add link</a>
                        - add a new link to another request</li>
                    <li><a href="request/edit-link">Edit link</a>
                        - edit selected link</li>
                    <li><strong>Delete link</strong> - remove selected link</li>
                </ul>
                <p>The table contains the same columns as the <a href="table-of-requests">requests table</a> and you can also enable the display of nested links in it.</p>
                <p>The tab is only displayed to members of the request service resolution team.</p>

            </li>


            </li>
            <li><strong>Objects</strong><br />
                On this tab, you will find the objects from <a href="../../../alvao-asset-management">ALVAO Asset Management</a> that are linked to this request (see the <a href="table-of-requests">Objects</a> request entry). The number of linked objects is displayed after the tab name.<br />
                In the command panel you will also find the following commands:
            <ul>
                <li><a href="request/add-object">Add object</a> - bind another object to this request</li>
                <li><strong>Remove Object</strong> - remove the link to the selected object</li>
                <li>
                    <a href="../../../alvao-asset-management/searching/list-of-objects">Display in AM Console</a> - view linked objects in the <a href="../../../alvao-asset-management/console">AM Console.</a>
                    You must have the AM Console application installed on your computer to use this command.</li>
            </ul>
            </li>
             
            <li><b>Approving</b><br />
                On this tab, you can monitor and control the approval of the request. After the tab name, you can see the number of active approval steps. The approval steps and their details are displayed in a table.<br />
                In addition, you can find the following commands in the command panel:
            <ul>
                <li><b>Cancel approval process</b> - cancel the selected approval step.</li>
            </ul>
            </li>
        </ul>
        </li>
    </ul>

</asp:Content>
