<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ICommand</h1>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        This interface is deprecated. Instead of this interface use the <a href="../../../alvao-am-custom-apps/applications/i-entity-command">IEntityCommand</a> interface.
    </div>

    <p>
    By implementing the ICommand interface in the <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom request commands.
    <br /> <br />

    In the <a href="../../applications">application</a>, create a new script using the <em>ICommand</em> template and name it appropriately according to the functionality of the custom command.
    <br />
    In the newly created script, set the id, name, position, and icon property values in the constructor of the command class:
    </p>
    <ul>
        <li>id - command number (unique)</li>
        <li>name - the name of the command that will be displayed in applications</li>
        <li>position - the position at which the command will be displayed in applications<ul>
            <li>1 = at the first position of the main request menu</li>
            <li>2 = at the last position of the main request menu</li>
            <li>3 = at the first position of the nested menu in the main request menu</li>
            <li>4 = the last position of the nested offer in the main offer of the request</li>
        </ul>
        </li>
        <li>icon - the name of the command icon
            <ul>
                <li>Use the icon name from the <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons" translate="no">Microsoft Fabric</a> library as the command icon name (the icon name will appear on the page when you hover over the selected icon). If you do not specify an icon, the <i>LightningBolt</i> icon is used.</li>
            </ul>
        </li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To store the properties and settings of the command, we recommend defining the <em>Settings</em> class in a separate script that you create from the <em>Class Library</em> template.
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
                <td>Display the command in the request menu.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#Run">Run</a></td>
                <td>Run command.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show">Show</h2>
    This method checks the defined conditions for displaying the command.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        By calling this method in the <em>Run</em> method, you can check if the conditions for displaying the query have changed between the time the query was displayed and the time the query was run.
    </div>

    <ul>
        <li>Syntax: <b translate="no">bool</b> <span translate="no">Show</span>(SqlConnection <b translate="no">con</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">ticketId</strong> - The request ID (tHdTicket.iHdTicketId) for which the command will be displayed.</li>
                <li><strong translate="no">personId</strong> - the ID of the user (tPerson.iPersonId) to whom the command should be displayed.</li>
            </ul>
        </li>
        <li>Return values:
            <ul>
                <li><strong translate="no">bool</strong> - the truth value of whether the command should be displayed to the user on the specified request.</li>
            </ul>
        </li>
    </ul>

    You can find an example use case in the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CostsCalculation</a> application template.

    <h2 id="Run" translate="no">Run</h2>
    This method runs the command itself.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the custom command is to open a different page from the ALVAO WebApp, use the <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> property from the <a href="../../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> interface to get the root URL.
    </div>

    <ul>
        <li>Syntax: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>, <b translate="no">string</b>&gt; Run(SqlConnection <b translate="no">con</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">ticketId</strong> - The request ID (tHdTicket.iHdTicketId) over which the command is run.</li>
                <li><strong translate="no">personId</strong> - The user ID (tPerson.iPersonId) that is running the command.</li>
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

    You can find an example use case in the <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CostsCalculation</a> application template.

</asp:Content>
