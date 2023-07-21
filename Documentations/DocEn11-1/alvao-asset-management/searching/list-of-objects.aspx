<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Object Lists</h1>
    <p>You can view any objects in the object list instead of on the <a href="../../list-of-windows/alvao-asset-management-console/tab-view/objects">Objects</a> tab. <a href="../../list-of-windows/alvao-asset-management-console/view/list-of-objects">The list of objects</a> is displayed in a separate window and is therefore accessible at all times, and you can edit the properties of individual objects in the main AM Console window.Double-click an object in the <em>List of Objects</em> to display that object in the main AM Console window in a tree. The object in the <em>Object List</em> remains selected even if you select another object in the tree in the main window.</p>
    <h3>Creating a New Object List</h3>
    <ol>
        <li>Select a folder in the object tree (e.g. <em>Shopping Department</em>).</li>
        <li>Go to the <strong>Objects</strong> tab - a list of objects that lie below the selected object in the tree will be displayed.</li>
        <li>Adjust the view settings - filtering, sorting and displaying/hiding columns.</li>
        <li>From the local menu, use the <strong>Show in Object Lists</strong> command.</li>
        <li>The <em>Object Lists</em> window opens and the current view on the <em>Objects</em> tab is transferred to the <em>Object Lists</em> window as a new view.</li>
        <li>Click an object in the table with the mouse (or use <strong>Action - Select in tree,</strong> or press <strong>Enter</strong> on the object, or use the toolbar icon) and the object will be selected in the object tree in the main AM Console window.</li>
        <li>Show the details of the object - Properties, Diary, ...</li>
        <li>Switch back to the <em>Object Lists</em> window (e.g. by Alt+Tab keyboard shortcut) and double-click on another object - again it will be selected in the main window in the object tree</li>
    </ol>
    <h3>Viewing the Object Lists window</h3>
    <ol>
        <li>From the <strong>View</strong> main menu, select <strong>Object Lists...</strong>, or use the button from the main toolbar.</li>
        <li>The <em>Object Lists</em> window will appear, showing the status that was in the window before the last time the window was closed (views, view settings, ...).<br />
            The saved views are individual for each user and are stored in the database.</li>
    </ol>

</asp:Content>
