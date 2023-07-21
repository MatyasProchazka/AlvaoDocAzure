<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IEntityCommand</h1>
    <p>
        By implementing this interface, you can define custom commands for an object or a request. For an example, see the <a href="templates" translate="no">CostsCalculation</a> application template.
    </p>
    <p>
        In the <a href="../applications">application</a>, create a new script using the <em translate="no">IEntityCommand</em> template and name it appropriately according to the functionality of the custom command.
    <br />
        In the newly created script, set the following properties in the constructor of the class:
    </p>
    <ul>
        <li><span translate="no">Id</span> - a unique command identifier (<span translate="no">string</span>)</li>
        <li><span translate="no">Entity</span> - the type of entity for which the command will be displayed (Entity.Request or Entity.Object).</li>
    </ul>

    <h2>Interface methods</h2>
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
                <td>Display the command in the command menus.</td>
            </tr>
            <tr>
                <td translate="no"="no"><a href="#Run">Run</a></td>
                <td>Run the command.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show" translate="no">Show</h2>
    This method controls display of the command in command menus.
    
    <ul>
        <li>Syntax: <b translate="no">EntityCommandShowResult</b> <span translate="no">Show</span>(int <b translate="no">entityId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">entityId</strong> - the entity ID (tblNode.intNodeId or tHdTicket.iHdTicketId) for which the command should be displayed.</li>
                <li><strong translate="no">personId</strong> - the ID of the user (tPerson.iPersonId) to whom the command should be displayed.</li>
            </ul>
        </li>
        <li>Return values: an instance of the class <strong translate="no">EntityCommandShowResult</strong> with properties:<ul>
            <li>&nbsp;<strong translate="no">Name</strong> (<span translate="no">string</span>) - a display name of the command</li>
            <li><strong translate="no">Show</strong> (bool) - true = the command will be displayed, false = the command will not be displayed.</li>
            <li><strong translate="no">Position</strong> (int) - the position in UI at which the command will be displayed:<ul>
                <li>1 = first position of the entity main menu</li>
                <li>2 = last position of the entity main menu</li>
                <li>3 = first position of the nested menu in the entity main menu</li>
                <li>4 = last position of the nested menu in the entity main menu</li>
            </ul>
            </li>
            <li><strong translate="no">Icon</strong> (<span translate="no">string</span>) - a command icon name; See <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons" translate="no">Fluent UI Icons</a> - <em>Available icons</em> at the bottom of the page - hover over the icons to view icon names. If you do not specify any icon the <em translate="no">LightningBolt</em> icon will be used.</li>
        </ul>
        </li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        By calling this method in the <em translate="no">Run</em> method, you can check if the conditions for displaying the command haven&#39;t changed between the time of displaying the command and running it.
    </div>

    <h2 id="Run" translate="no">Run</h2>
    <p>
        This method implements the command itself.
    
    </p>

    <ul>
        <li>Syntax: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>, <b translate="no">string</b>&gt; Run(SqlConnection <b translate="no">con</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">entityId</strong> - the entity ID (tblNode.intNodeId or tHdTicket.iHdTicketId) for which the command was run.</li>
                <li><strong translate="no">personId</strong> - the user ID (tPerson.iPersonId) who ran the command.</li>
            </ul>
        </li>
        <li>Return values:
            an instance of the <strong translate="no">CommandResult</strong> class containing roperties:
            <ul>
                <li><strong translate="no">MessageType</strong> (MessageType) - specify whether a message should be displayed to the user as a result of the command execution:<ul>
                    <li><em translate="no">None</em> – no message will be displayed</li>
                    <li><em translate="no">Info</em> - an information message will be displayed</li>
                    <li><em translate="no">Warning</em> - a warning message will be displayed</li>
                    <li><em translate="no">Error</em> - an error message will be displayed</li>
                </ul>
                </li>
                <li><strong translate="no">MessageText</strong> (string) - specify a text of the message that will be displayed to the user.</li>
                <li><strong translate="no">NavigateToUrl</strong> (string) - optionally specify an URL to navigate to after the command execution.</li>
            </ul>
        </li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the custom command is to open another ALVAO WebApp page, use the <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> property from the <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> to get the root URL of the WebApp.</div>

</asp:Content>
