<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object History</h1>
    <p>
        Changes made to the object tree can be automatically recorded in the object history. The history is visible in the <a href="../list-of-windows/alvao-asset-management-console">main window</a> on the right on the <strong>Journal</strong> tab, or in the journal at the bottom of the window on the <strong>Properties</strong> and <strong>Objects</strong>. The <strong>Diary</strong> and <strong>Properties</strong> tabs display only the records related to the object that is currently selected in the tree. On the <strong>Objects</strong> tab

the journal displays entries related to all objects that are selected in the top part of the window on the <strong>Objects</strong> tab.
    </p>
    <p>When a new object is created or an object is copied, an entry is made in the history of both the created object and the object in which the new object was created.</p>
    <p>When moving object A to another location in the tree, a history entry is created for the following objects:</p>
    <ul>
        <li>in object A</li>
        <li>in its parent object (i.e. where it was removed from)</li>
        <li>in the object to which object A was moved</li>
    </ul>

    <p>
        Some records contain information about the related object, e.g. when an object is moved to another location, the record &quot;Moved to <em>name of the target object</em>&quot;. You can find the target object in the tree by right-clicking on the record and selecting <strong>Mark in tree</strong>. This will display the object in the tree in bold font.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        History entries older than 3 months are automatically moved to the archive. Archived records do not appear in the object history. If you want to view the archive as well, enable the <strong>Table - View Archive</strong> option in the local menu, or press the button in the bottom right of the table.
    </div>



    <h2>Working with Journal entries</h2>
    <p>
        Most Journal entries are created automatically.<br />
        Only authorized users are allowed to manually create, edit and delete individual journal entries, see the following table:
    </p>

    <table class="wide">
        <thead>
            <tr>
                <th>Record type</th>
                <th>Administrator</th>
                <th>SW lic.</th>
                <th>Reader</th>
                <th>Asset Manager</th>
                <th>Detection Report</th>
                <th>Accountant</th>
                <th>Linkage Lawyers</th>
                <th>Bond Readers</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Document, invalidated document<sup>1</sup></td>
                <td>Add<br />
                    Edit<br />
                    Delete</td>
                <td>Add<br />
                    Edit<br />
                    Delete</td>
                <td></td>
                <td>Add<br />
                    Edit<br />
                    Delete</td>
                <td></td>
                <td>Add<br />
                    Edit</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Installation registry</td>
                <td>Edit</td>
                <td>Edit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>License registry</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Object History</td>
                <td>Remove</td>
                <td></td>
                <td></td>
                <td>Delete</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Fault (detection)</td>
                <td>Remove</td>
                <td></td>
                <td></td>
                <td>Remove</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Information</td>
                <td>Delete</td>
                <td></td>
                <td></td>
                <td>Delete</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Asset inventory</td>
                <td>Remove</td>
                <td></td>
                <td></td>
                <td>Delete</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Note<sup>2</sup></td>
                <td>Add<br />
                    Edit<br />
                    Delete</td>
                <td></td>
                <td></td>
                <td>Add<br />
                    Edit<br />
                    Delete</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Request</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Lending Library</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Warning (detection)</td>
                <td>Remove</td>
                <td></td>
                <td></td>
                <td>Delete</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>SAM alert</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="9"><sup>1</sup>Only the Document link is created and removed.<br />
                    <sup>2</sup>Only the author can edit the note, others can only view the text of the note and open its attachments.<br />
                    The note can be deleted by its author and by users with the <i>Asset Management administrators</i> role.</td>
            </tr>
        </tfoot>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        No records can be permanently deleted, they can only be "hidden".
    </div>

    <h2>Display deleted (hidden) Journal entries</h2>

    <p>
        To view deleted Journal entries, enable the option located on the <strong>Journal</strong> tab in the local <strong>Table - Show deleted entries</strong> menu.<br />
        The user can then also see in the journal the deleted entries that is the author of or had the right to delete (see table above).<br />
        Deleted entries are shown in grey.<br />
        You can view the "Deleted" and "Deleted" columns in the Journal. For deleted (hidden) records, this shows the name of the person who deleted the record and the date the record was deleted.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The "Show Deleted Items" option is also found in the local Diaries menu on the <strong>Properties</strong>, <strong>Objects</strong> and <strong>Detections</strong> tabs.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If an entry is deleted in one of the logs, the changes will be reflected in all other logs.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Administrators can recreate deleted entries using the Tools - Database -
	<strong>Restore Deleted Entries</strong>.
    </div>

</asp:Content>
