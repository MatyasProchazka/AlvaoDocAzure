<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object tree</h1>
    <p>
        Each tree item represents one <a href="../../alvao-asset-management/objects-and-properties">object</a> in Asset Management.<br />
        For more on the logic behind creating an object tree, see <a href="../../alvao-asset-management/implementation/tree-design">Tree Structure Design</a>.
    </p>

    <p>Local menu options in <strong>Object Tree</strong>:</p>
    <ul>
        <li><a href="edit/new-object">New object</a>
            - create a new object as a child of the object selected in the tree.</li>
        <li><a href="edit/new-computer">New computer</a>
            - create a new object of type computer as a child object selected in the tree.</li>
        <li><a href="../alvao-webapp/requests/new-request">New request</a> - create a new request in <a href="../../alvao-service-desk">ALVAO Service Desk</a> related to the selected objects.</li>
        <li><a href="add-objects-to-ticket">Add to request</a>
            - Add selected objects to the <a href="../alvao-webapp/requests/table-of-requests">Objects item</a> of an existing request in <a href="../../alvao-service-desk">ALVAO Service Desk</a>.</li>
        <li><b>Related Requests</b> - view requests in <a href="../../alvao-service-desk">ALVAO Service Desk</a> that are related to the selected object.</li>
        <li><strong>Remove</strong> - remove the selected object (which can then be inserted elsewhere).</li>
        <li><strong>Copy</strong> - copy the selected object.</li>
        <li><strong>Paste</strong> - paste an object from the clipboard as a child object of the selected object.</li>
        <li><strong>Delete</strong> - delete the selected object.</li>
        <li><a href="object/choose-object">Move</a> - move the selected object.</li>
        <li><a href="change-quantity">Change quantity</a>
            - allows you to change the <em>Quantity</em> property of objects that have this property.</li>
        <li><strong>Print</strong> - displays information about the selected object in the print preview. Select the one that suits you best from the offered <a href="../alvao-webapp/administration/asset-management/print-report-templates">templates</a>. For some, you will need <a href="file/query-parameters">Specify query parameters</a>.<br />
            If you select a report for the <strong>Transfer Protocol</strong>, the appropriate window will open to fill in the necessary handover information:
            <ul>
                <li><a href="../alvao-webapp/objects/object/print">Internal handover protocol</a></li>
                <li><a href="../alvao-webapp/objects/object/print">External handover protocol</a></li>
            </ul>
        </li>
        <li><a href="edit/object">Edit</a>
            - edit the data of the selected object.</li>
        <li><a href="admin-tools">Administrator Tools</a>
            - commands for object administration available only to the administrator.</li>
    </ul>
    <p>Local menu options in the <strong>Object Tree</strong> if the selected object is a <strong>computer</strong>:</p>
    <ul>
        <li><a href="edit/detection">Detect</a>
            - Detect the selected computer (can be detected using the saved settings for the computer, or edit the settings once).</li>
        <li><a href="edit/detection/detection-setup">Detection settings</a> - edit the detection settings for the selected computer.</li>
        <li><strong>Ping</strong> - determine if a computer at a given IP address responds.</li>
        <li><a href="computer-name">Rename computer</a>
            - rename the network name to the selected computer in the tree.</li>
        <li><a href="tab-view/detection/detail/hardware">Hardware</a> - view the hardware detection details of the selected computer.</li>
        <li><strong>Software</strong><ul>
            <li><a href="assign-licenses">Assign licenses</a>
                - bulk assign a license to a given computer.</li>
            <li>
                <a href="software/installation-registry">Installation registry</a> - view the installation registry for a given computer.</li>
            <li><a href="software/license-registry">License registry</a> - view the license registry for a given computer.</li>
            <li><a href="tab-view/detection/detail/software">Details</a> - view details of the software detection for the selected computer.</li>
        </ul>
        </li>

    </ul>
    <p>Local menu options in <strong>Object Tree</strong> if the selected object is a <strong>user</strong>:</p>
    <ul>
        <li><strong>Software</strong>
            <ul>
                <li><a href="assign-licenses">Assign licenses</a>
                    - bulk assignment of a license to a given user.</li>
                <li><a href="software/license-registry">License registry</a> - view the license registry for a given computer.</li>

            </ul>
        </li>
    </ul>

</asp:Content>
