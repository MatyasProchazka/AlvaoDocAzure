<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Views</h1>
    <p>You can save different table settings, such as column widths and order, how to sort values and filter settings as views.</p>
    <p>To create a personal view, use the <strong>Create a copy of a view</strong> command found in the local menu on the table header. A bookmarks bar will appear above the table, with the new view as a new bookmark. The new view is a copy of the currently selected view. After you enter a name for the new view, you can edit the table settings. You can then switch between views by simply clicking on the appropriate tab above the table. If the table contains only one view, the view tab bar is not displayed.</p>
    <p>The tab bar displays pinned views. A new view is pinned by default. Using the <strong>Unpin</strong> command from the local menu will move its bookmark from the bookmark strip to the drop-down menu, which is accessible with the <strong>...</strong> command. You can view a maximum of one unpinned view in the bookmarks bar. You can then pin the unpinned view, either by using the <strong>Pin</strong> command from the local menu, or by moving its bookmark to a different position.</p>
    <p>To remove a view, simply right-click on the tab of the view you want to remove and select <strong>Delete</strong> from the local menu.</p>
    <p>
        Views can also be renamed again using the local menu above the bookmarks -
right-click on the tab of the view you want to rename and select <strong>Rename</strong> from the local menu. A box will appear in which you can change the name of the view.
    </p>
    <p>
        Views that have had their settings modified are displayed with the <strong>*</strong> at the end of the name, e.g. <strong>All*</strong>. If you want to keep the changes to the settings until the next time you open the window, save them with <strong>Save view settings</strong>
        from the local menu above the view tab or table header. If you do not save the settings before closing the table window, the next time you view the table, the original settings will be used. You can also restore unsaved view settings to their last saved state using the <strong>Restore View Settings</strong> command.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Also save the newly created views, otherwise they won't show up the next time you load the table. Deleting views does not need to be saved. 
    </div>


    <p>
        The order of views can be changed by grabbing the view tab with the mouse and dragging it to the appropriate location. If you drag a view with the mouse outside the bookmarks bar and drag it again to the bookmarks bar at a different location, the view you dragged and the view you hovered over will swap order. In the Alvao WebApp, use the <strong>Move</strong> command to change the order of the views,
available from the local menu. Enter a numeric value to move the view tab to the appropriate position.
    </p>

    <img src="views.PNG" alt="Views above table" />

    <h2>Shared Views</h2>
    <p>If several users are using one or more identically set views, each user does not have to set these views, but it is enough for one user to create and set the views and then provide them to the others as <strong>shared views</strong>. The user who created the shared views is the <strong>owner</strong> of those views, and can only edit those views and determine who can use them.</p>

    <h3>Shared View</h3>
    <ol>
        <li>In the menu of any view, display the <strong>Shared Views</strong> drop-down menu and select the view you wish to view.<br />
        </li>
        <li>The view will be displayed in the bookmarks bar and behaves just like an unpinned view. If you wish to pin it, select <strong>Pin</strong> from the view menu.
The pinned shared view is no longer displayed in the shared view menu.</li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the owner of a shared view changes the view, the changes will be reflected to all users who use the view. If you do not want to accept these changes, use the <strong>Create a copy of the view</strong> command to create a personal copy of the shared view.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        In the shared views menu, the owner of the view is listed after the title of the view.
    </div>

    <h3>Sharing the View</h3>
    <ol>
        <li>Show the view you want to share.</li>
        <li>Select <strong>Share</strong> from the view menu.</li>
        <li>Select one or more users or groups to share the view with.</li>
        <li>Confirm your selection with <strong>OK</strong>.</li>
    </ol>
    <p>All selected users, including members of the selected groups, will then see the view in their shared view menu from which they can use the view. The user who shared the view is the owner of the view and only they can edit the shared view.</p>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Sharing views is only possible with a group in which you are a member and which contains other users.
    </div>


    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Users who are just requesters cannot share views.
    </div>

    <h3>Changing the Shared View</h3>

    <p>A shared view can only be edited by its owner by editing the view in the normal way and saving the changes using the <strong>Save View Settings</strong> command. The changes made will be reflected for all users who use the shared view.</p>
    <p>
        If you are not the owner of the shared view, or if you want to create a new personal view from the shared view, create a copy of the selected view using the <strong>Create a copy of the view</strong> command and save it using the <strong>Save view settings</strong> command, if necessary.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The <strong>Save View Settings</strong> command for a shared view is only available to its owner and administrator.
    </div>

    <h3>Setting up sharing and changing the owner</h3>
    <ol>
        <li>If you wish to change the users or groups with whom the view is shared, or the owner of the view, select <strong>Share Settings</strong> from the menu.</li>
        <li>Make the desired changes and confirm with <strong>OK</strong>.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If you pass ownership of the view to another user, you will no longer be able to edit the view.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Only the owner and administrator can change the share and owner.
    </div>

    <h3>Cancel sharing</h3>
    <ol>
        <li>If you wish to cancel sharing with all users, use the <strong>Share Settings</strong> command in the shared view menu.</li>
        <li>In the sharing settings dialog, remove all people and groups to whom you are sharing the view and confirm with <strong>OK</strong>.</li>
        <li>The shared view will become your own (or the view of the last owner of the shared view) and will disappear from the shared view menu for other users. If a user had a view pinned, the view will remain but will be converted to their own.</li>
    </ol>


</asp:Content>
