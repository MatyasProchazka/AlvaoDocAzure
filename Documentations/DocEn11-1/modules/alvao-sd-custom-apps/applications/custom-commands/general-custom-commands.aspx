<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IGeneralCommand</h1>
    By implementing the IGeneralCommand interface in a <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom main menu commands.
    <br />
    <br />

    By placing a command in the main menu, you can give users access to frequently used pages and operations that are not tied to a specific request in ALVAO Service Desk.
    <br />
    Commands are displayed in the main menu of ALVAO WebAp applications.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To replace the system command in the ALVAO WebApp main menu with a custom one, <a href="../../../../alvao-service-desk/implementation/customization/links">hide the system command</a>.
    </div>
    <br />

    In the <a href="../../applications">application</a>, create a new script using the <em>IGeneralCommand</em> template and name it appropriately according to the functionality of the custom command.
    <br />
    In the newly created script, set the id, name, position, and icon property values in the constructor of the command class:
    <ul>
        <li>id - command number (unique)</li>
        <li>name - the name of the command that will be displayed in applications</li>
        <li>position - the position at which the command will be displayed in applications<ul>
            <li>1 = in main menu under system commands</li>
            <li>2 = in the main menu above the <i>More</i> menu</li>
            <li>3 = in the main menu in the <i>More</i> menu above the <i>Administration</i> system command</li>
            <li>4 = in the user menu above the <i>Settings</i> system command</li>
        </ul>
        </li>
        <li>icon - the name of the command icon
            <ul>
                <li>Use the icon name from the <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons">Microsoft Fabric</a> library as the command icon name (the icon name will appear on the page when you hover over the selected icon). If you do not specify an icon, the <i>LightningBolt</i> icon is used.</li>
            </ul>
        </li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To store the properties and settings of the command, we recommend defining the <em>Settings</em> class in a separate script that you create from the <em>Class Library</em> template.
        <br />
    </div>

    <h2>Interface Methods</h2>
    <table>
        <thead>
            <tr>
                <th>Method</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="#Show">Show</a></td>
                <td>Show command in the main menu of the application.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#Run">Run</a></td>
                <td>Run command.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show" translate="no">Show</h2>
    This method checks the defined conditions for displaying the command.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        By calling this method in the <em>Run</em> method, you can check before running the command that the conditions for displaying it have not changed between the time the command was displayed and the time it was run.
    </div>

    <ul>
        <li>Syntax: <b translate="no">bool</b> <span translate="no">Show</span>(SqlConnection <b translate="no">con</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">personId</strong> - User ID (tPerson.iPersonId) to which the command should be displayed.</li>
            </ul>
        </li>
        <li>Return values:
            <ul>
                <li><strong translate="no">bool</strong> - the true value of whether the command should be displayed to the user in the main menu of the application.</li>
            </ul>
        </li>
    </ul>

    For an example use case, see the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ProblemReporting</a> application template.

    <h2 id="Run" translate="no">Run</h2>
    This method runs the command itself.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the custom command is to open a different page from the ALVAO WebApp, use the <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> property from the <a href="../../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> interface to get the root URL.
    </div>

    <ul>
        <li>Syntax: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>, <b translate="no">string</b>&gt; Run(SqlConnection <b translate="no">con</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">personId</strong> - The user ID (tPerson.iPersonId) that runs the command.</li>
            </ul>
        </li>
        <li>Return values:
            <ul>
                <li><strong translate="no">bool</strong> - the truth value of whether the command was executed.</li>
                <li><strong translate="no">string</strong> - text that can be displayed in the message to the user.</li>
                <li><strong translate="no">string</strong> - URL to open in the browser.</li>
            </ul>
        </li>
    </ul>

    For an example use case, see the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ProblemReporting</a> application template.

</asp:Content>
