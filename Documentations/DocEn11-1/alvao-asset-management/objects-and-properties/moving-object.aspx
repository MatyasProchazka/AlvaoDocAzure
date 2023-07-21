<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Move object</h1>
    <p>
        You can easily move objects in the tree by drag & drop or using the windows clipboard (<span class="key">Ctrl</span>+<span class="key">X</span>
        and <span class="key">Ctrl</span>+<span class="key">V</span>). If the tree is larger, dragging objects with the mouse or clipboard may be inconvenient. In that case, do the following:
    </p>
    <ol>
        <li>In the tree, right-click the object you want to move.<br />
            Note: You can also select multiple objects at once by holding down the Ctrl or Shift keys.</li>
        <li>From the local menu, select the command - <strong>Move</strong>.</li>
        <li>A window will appear <a href="../../list-of-windows/alvao-asset-management-console/object/choose-object">Select the target object</a>, in which you select the object to which you want to move the first object and press the <strong>OK</strong> button.</li>
        <li>You can display the <a href="../../list-of-windows/alvao-asset-management-console/date-time">Date and Time</a> to enter the actual date and time of the move if you are backdating the move.</li>
        <li>The object will be displayed in the new location. 
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                When in the <a href="../../list-of-windows/alvao-asset-management-console/date-time">Date and Time</a> to enter the date and time, if you enable the <strong>Don't show this window next time and use the current date and time</strong> option, the window will not open next time. You can enable it again with <strong>Tools - Settings</strong>, where on the <strong>General</strong> tab
 disable the <strong>Create history records with current date and time</strong> option.
            </div>
        </li>

        <li>After moving the object, you can print the <a href="../documents/transfer-protocols">transfer protocol</a>.</li>
    </ol>

    <h2>Return last moved object</h2>

    <p>To return the last moved object to its original position, do the following:</p>
    <ol>
        <li>Use the <strong>Edit-Return Last Moved</strong> main menu command (<span class="key">Ctrl</span>+<span class="key">Z</span>).</li>
        <li>The object is returned to its original position in the object tree.</li>
        <li>The history displays both back and forth moves.</li>
    </ol>
    <div class="tooltip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        When moving back, the rights in the object tree are ignored. So even objects that were accidentally deleted (moved to the trash) can be returned.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Permanently removed objects (deleted objects from the trash) cannot be moved back.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Last move history properties:<ul>
            <li>History is kept only about the last move</li>
            <li>History is only kept while the active AM Console window is running</li>
            <li>History is deleted:<ul>
                <li>by permanently deleting an object</li>
                <li>by switching to another database</li>
            </ul>
            </li>
        </ul>
    </div>
</asp:Content>
