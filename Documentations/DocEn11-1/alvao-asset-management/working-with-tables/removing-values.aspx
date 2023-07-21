<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Removing values</h1>

    <p>Items in tables can be deleted in several ways, and only some of them can be supported at different places in the program.</p>
    <ol>
        <li>Menu: <strong>Edit - Delete</strong></li>
        <li>Context menu: right-click on an item to open the context menu and select the <strong>Delete</strong> or <strong>Table - Delete</strong> command from it.</li>
        <li>Use the <span class="key">Delete</span> key.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        In ServiceDesk, some tables allow deleted items to be recreated. You must first display the deleted items in the table using the <strong>Show - Deleted</strong> command. Then select the items you want to restore and use the <strong>Edit - Restore Deleted</strong> command. The administrator can delete items already deleted, this will cause a <strong>definitive deletion</strong> of the item (irreversible).</p>
    </div>

</asp:Content>
