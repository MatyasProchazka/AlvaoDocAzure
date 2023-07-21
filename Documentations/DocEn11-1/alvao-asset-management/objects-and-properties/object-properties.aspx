<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Edit object properties</h1>
    <p>
        You can edit object properties on the <strong>Properties</strong> tab.
in the <a href="../../list-of-windows/alvao-asset-management-console">main window</a>.
    </p>
    <p>Only the administrator can add and remove properties to/from objects in <a href="../implementation/object-templates">Object Templates</a>. </p>
    <h2>Edit property value</h2>
    <ol>
        <li>Select the property whose value you want to change and double-click it with the mouse, or press <span class="key">Enter</span> or <span class="key">F2</span>.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Some property values cannot be edited. For example, if the property value is set by detection or from AD, or if you do not have the right to change the property value.
            </div>
        </li>
        <li>The value property is switched to edit mode. Write the new value or select it from the drop-down list (dial).

            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Press <span class="key">Alt</span>+<span class="key">Down</span> or <span class="key">F4</span> to open the drop-down list.
            </div>
        </li>
        <li>Press <span class="key">Enter</span> or <span class="key">Tab</span>
            to save the change. <span class="key">Tab</span> will immediately start editing the following property. Alternatively, you can use <span class="key">Shift</span>+<span class="key">Tab</span> to save the change and start editing the previous property. Clicking the mouse outside the input field will also save the change.<div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                If you do not want to save the change, press <span class="key">Esc</span>.
            </div>
        </li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        When you enter a URL or disk path into the property, the value will be displayed as a link that you can click on with your mouse.
        <br />
        Supported link types:<ul>
            .
  <li>Web URLs (e.g.: http://, ftp://, file://)</li>
            <li>Path to local disks (e.g.: C:\...)</li>
            <li>UNC path (\\server\...)</li>
        </ul>
        If the disk path contains spaces, replace them with the string &quot;<i>%20</i>&quot; and write the path as a URL.<br />
        For example, the path:
        <br />
        <i>D:\file with space.jpg</i><br />
        write it like this:<br />
        <i>file:///D:/File%20with%20gap.jpg</i>
    </div>

    <h2>Insert barcode into value</h2>
    <ol>
        <li>Select the property into which you want to insert the barcode value from the reader.</li>
        <li>Right-click on the property and select <strong>Insert Barcode</strong>.</li>
        <li>The CS1504 reader manager will open, where you select one barcode and confirm with <strong>Select</strong>. The value will be inserted into the currently selected property in the table and the entry in the Reader Manager will be marked as used.<div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            Code cannot be inserted into some properties. For example, if the property value is set by detection or from AD, or if you do not have the right to change the property value.
            </div>
        </li>
    </ol>

    <h2>Additional property value generation according to the number series</h2>
    <p>A property can have an automatic number line set to generate property values automatically. Sometimes the value needs to be generated additionally.</p>
    <ol>
        <li>Right-click on the property and select <strong>Generate Value</strong> from the local menu.</li>
        <li>If a numeric series is defined for the property after the control query, a new value is generated according to the numeric series.</li>
    </ol>

</asp:Content>
