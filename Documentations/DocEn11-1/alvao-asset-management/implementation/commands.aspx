<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Commands</h1>

    <p>When you right-click on a computer in the object tree, a menu opens on the screen with a list of user-defined commands under Admin Tools.</p>
    <p>
        If you want to add your own command or a command to the menu
  To edit, select <strong>Tools - Lists - Commands </strong>from the AM Console main menu. The <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/commands">Commands</a> window opens on the screen with a list of commands that you can edit.
    </p>
    <p>When creating user commands, you can use the following parameters passed by the program:</p>
    <p>In addition to operating system variables such as %SystemRoot%, %ProgramFiles%, etc., the following parameters can also be used in a command:</p>
    <p><strong>Table 1. User command parameters</strong></p>
    <table>
        <thead>
            <tr>
                <th>Parameter</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td trasnlate="no">%epcomputer%</td>
                <td>The value of the <em>Network Name</em> property that is selected in the object tree (i.e., the computer to which the user command is &quot;applied&quot;).</td>
            </tr>
            <tr>
                <td trasnlate="no">%ephostname%</td>
                <td><em>Network name</em> of the selected object in the tree.</td>
            </tr>
            <tr>
                <td trasnlate="no">%epip%</td>
                <td>The value of the <em>IP address</em> property of the client computer.  If the <em>Computer</em> object does not contain this property, the property is automatically taken from a child object of type <em>Network Card</em>.</td>
            </tr>
            <tr>
                <td trasnlate="no">%ephostname_or_ip%</td>
                <td><em>Network Name</em> or <em>IP Address</em> of the selected object in the tree. If <em>Network Name</em> is empty, <em>IP Address</em> is used.</td>
            </tr>
            <tr>
                <td trasnlate="no">%epmac%</td>
                <td>The value of the <em>MAC address</em> property of the client computer.  If the <em>Computer</em> object does not contain this property, the property is automatically taken from a child object of type <em>Network Card</em>.</td>
            </tr>
            <tr>
                <td trasnlate="no">%epmycomputer%</td>
                <td>The value of the <em>Network Name</em> property of the <span translate="no">ALVAO Asset Management Console</span> operator computer.</td>
            </tr>
            <tr>
                <td trasnlate="no">%epmyip%</td>
                <td>The IP address of the <span translate="no">ALVAO Asset Management Console</span> operator computer. If the Computer object does not contain this property, the property is automatically taken from a child object of type <em>Network Card</em>.</td>
            </tr>
        </tbody>
    </table>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        It is also possible to use any object property value as a command parameter.
    </div>

    <h2>Creating a statement with the object property value parameter</h2>
    <ol>
        <li>From the AM Console main menu, use the <strong>Tools -
  Lists - Commands</strong>.</li>
        <li>The window will appear <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/commands">Commands</a>.</li>
        <li>Press the <strong>Add</strong> button.</li>
        <li>The window will appear <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/command">New command</a><br />
            Fill in the name of the command and the directory where the command should be run.<br />
            Enter the command.</li>
        <li>To use a property as a command parameter, press the <strong>Insert Variable</strong> button.<br />
            A list of supported variables will be displayed.<br />
            Select <strong>Object Property...</strong></li>
        from the button menu.
  <li>The window will appear <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/properties-definition">Property definitions</a>.<br />
      Select a property and press the <strong>OK</strong> button, or click on the property with the mouse.</li>
        <li>In the window <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/command">New command</a> will add the value of the property as a command parameter.</li>
    </ol>

</asp:Content>
