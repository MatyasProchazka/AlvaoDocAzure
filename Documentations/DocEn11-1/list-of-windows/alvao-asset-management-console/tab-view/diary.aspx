<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Log</h1>

    The log contains all entries related to the object selected in the tree.<br />
    If the display including subtree is enabled, the records of all its subobjects are also displayed.<br />
    Types of entries in <em>Log</em>:
    <ul>
        <li><strong>History</strong> - automatically generated records about <a href="../../../alvao-asset-management/object-log">object moves</a> in the tree (i.e. computers and accessories between users or user moves in the organization structure).</li>
        <li><strong>Notes</strong> - user <a href="../../../alvao-asset-management/object-notes">notes</a>, e.g. about computer malfunctions, repairs, etc.</li>
        <li><strong>Detection</strong> - records of implementation <a href="../../../alvao-asset-management/implementation/detection">detections</a>
            computer data.
            <ul>
                <li><strong>Warning</strong> - a record of discrepancies between detection and records that could not be automatically updated.</li>
                <li><strong>Error</strong> - error in detection.</li>
            </ul>
        </li>
        <li><strong>Installation registry</strong> - records of detected software installs or uninstalls.</li>
        <li><strong>Documents</strong> - <a href="../../../alvao-asset-management/documents">documents</a> related to computers or other assets, such as invoices, delivery notes, handover protocols, etc. Records of <strong>unpaid documents</strong> are also displayed.</li>
        <li><strong>Information</strong> - records of changes to the values of <a href="../../../alvao-asset-management/objects-and-properties">properties</a>, object kind, and record updates according to detection.</li>
        <li><strong>License registry</strong> - records of the allocation or removal of <a href="../../../alvao-asset-management/software-management/licenses">license</a> to the selected object.</li>
        <li><strong>Missing License Notification</strong> - Records of sent <a href="../../../modules/alvao-sam-assistant/sam-alerting">SAM alerts</a>.</li>
        <li><strong>Asset Inventory</strong> - any records of actions taken during <a href="../../../modules/alvao-inventory-audits/stocktaking">asset inventory</a>.</li>
        <li><strong>Loan</strong> - records of the loan and return of <a href="../../../alvao-asset-management/software-management/licenses#media">media</a>.</li>
        <li><strong>Request</strong> - a record of a <a href="../../../alvao-service-desk/request-object-links">request</a> related to the object in the <a href="../../../alvao-service-desk">ALVAO Service Desk</a> (if you use it).</li>
        <li><strong>Links</strong> - records the addition and removal of <a href="links">links</a>.</li>
    </ul>
    <p>Local menu options of the <em>Diary</em> tab:</p>
    <ul>
        <li><strong>Add</strong>
            <ul>
                <li><a href="../edit/note">Note</a> - write a new note to the log of the object selected in the tree.</li>
                <li><a href="../tools/lists/documents/document-edit">New document</a> - create a new document and add a link to it in the log.</li>
                <li><a href="../tools/lists/documents">Link to document</a> - add a link to an existing document to a log object.</li>
            </ul>
        </li>
        <li><strong>Open Attachment</strong> - open the attachment of the selected log entry.</li>
        <li><strong>Find in tree</strong>
            <ul>
                <li><strong>Object</strong> - highlight in <a href="../object-tree">object tree</a> the object in whose log the record is written (it is listed in the <strong>Object</strong> column).</li>
                <li><strong>Related object</strong> - highlighted in <a href="../object-tree">object tree</a> the object to which the record relates (for example, the added monitor mentioned in the <strong>Message</strong> column).</li>
            </ul>
        </li>
        <li><a href="../../../alvao-service-desk">View in Service Desk</a> - display the selected record of type <a href="../../../alvao-service-desk/requests">Request</a>.</li>
        <li><a href="properties/table-options">Table</a>
            - menu allows <a href="../../../alvao-asset-management/working-with-tables">customize the table</a>. For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">views</a> or display multiple rows.</li>
        <li><a href="properties/find">Find</a> - search for text in the displayed table.</li>
        <li><strong>Delete</strong> - delete the selected record.</li>
        <li><strong>Edit</strong> - edit the selected record (depending on the record type, opens a window): <a href="../tools/lists/documents/document-edit">Document</a>, <a href="../software/installation-registry/alter-installation">Installation log</a> or <a href="../edit/note">Note</a>.
            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                <strong>Edit</strong> or <strong>Delete</strong> can only be performed on certain log entries, and these operations can only be performed by users with the <strong>Administrator</strong> or <strong>Asset Administrator</strong>.<br />
                The exceptions are <strong>Software License Manager</strong>, who can edit documents and entries from <a href="../software/installation-registry">Installation Records</a>, and <strong>Accountant</strong> who can edit documents (Invoices).<br />
                No records can be deleted absolutely, deleted records are displayed using the local table menu - <strong>Table</strong>   <strong>Show deleted entries</strong>.
            </div>
        </li>
    </ul>


</asp:Content>
