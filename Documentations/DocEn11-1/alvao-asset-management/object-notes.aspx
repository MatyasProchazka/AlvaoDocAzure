<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object Notes</h1>
    Notes are used to record arbitrary text information, such as device driver settings, hardware failures, etc. A file or link may also be attached to the note.<p>
        Notes are displayed in <a href="../list-of-windows/alvao-asset-management-console">main window</a> on the Journal tab.
    </p>
    <p>Only <a href="object-log">authorized users</a> can work with notes.</p>

    <h2>Create a new note</h2>
    <ol>
        <li>Select a specific object in the object tree.</li>
        <li>Go to the Diary tab and use the "Add - Note".</li>
        <li>A window will appear <a href="../list-of-windows/alvao-asset-management-console/edit/note">new note</a>.</li>
        <li>Select a specific object in the object tree.</li>
    </ol>

    <h2>View / edit an existing note</h2>
    A note can only be edited by its author. Others can only read the text of the note.<ol>
        <li>Select a specific object in the object tree.</li>
        <li>Go to the Journal tab, select a specific note and use the "Edit" command from the local menu, or double-click on the journal entry with the mouse.</li>
        <li>A window will appear <a href="../list-of-windows/alvao-asset-management-console/edit/note">note</a>.</li>
        <li>If you are the author of the note, you can edit the information and save your changes by clicking OK.</li>
    </ol>

    <h2>Delete (hide) a note in the Diary</h2>

    <ol>
        <li>Select a specific object in the object tree.</li>
        <li>Go to the Journal tab, select a specific note and use the "Delete" command from the local menu.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The note will only be hidden and will be displayed after enabling the "Show deleted items" option in the local menu of the Diary tab table.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Administrators can restore deleted notes by using Tools - Database - <strong>Restore Deleted Items</strong>.
    </div>

</asp:Content>
