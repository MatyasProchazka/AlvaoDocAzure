<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Removing an object</h1>
    <ol>
        <li>In the tree, right-click the object you want to delete.</li>
        <li>From the menu, select the command - Delete (or use the <span class="key">DEL</span> key).</li>
        <li>After confirming the control query, a window may appear on the screen <a href="../../list-of-windows/alvao-asset-management-console/date-time">Date and Time</a> to enter the actual date and time of the deletion if you are writing the change to the database after the fact.</li>
        <li>Then the object disappears from the tree.</li></ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        When in the <a href="../../list-of-windows/alvao-asset-management-console/date-time">Date and Time</a> to enter the date and time, if you enable the <strong>Don't show this window next time and use the current date and time</strong> option, the window will not open next time. You can enable it again by using <strong>Tools - Settings</strong>, where on the <strong>General</strong> tab, turn off the <strong>More
Create history records with current date and time</strong>.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If are enabled <a href="object-access-rights">Rights in the object tree</a>, objects for which the user does not have the rights to delete all child objects cannot be deleted.
    </div>


    <p>
        The object has not been completely deleted from the database, but has only been moved to the Trash. The Recycle Bin is not normally visible in the object tree. You can enable its display with the <strong>View - Hidden Objects</strong> (only a user with the <i>Asset Management administrators</i> role can do this).
    </p>
    <p>You can move an object removed from the Recycle Bin back into the tree.</p>
    <p>
        You can irreversibly remove the contents of the Recycle Bin from the database by right-clicking on the Recycle Bin object in the tree and selecting the command from the menu -
Empty Recycle Bin.
    </p>
    <p>Only a user with administrative rights can empty the Recycle Bin.</p>

</asp:Content>
