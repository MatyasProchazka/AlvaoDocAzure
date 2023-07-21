<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IEntityTab</h1>
    <p>
    By implementing this interface, you can define custom tabs on the object or request page. A custom tab can view any web content displayable in an iframe tag.

    For an example, see the <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ShowRequesterAddress</a> application template.</p>
    <p>

    In the <a href="../applications">application</a> create a new script using the <em translate="no">IElementTab</em> template and name it appropriately according to the content of the tab. In the newly created script, set the following properties in the constructor of the class:</p>
    <ul>
        <li>Id - a unique tab identifier (<span translate="no">string</span>)</li>
        <li>Entity - the type of entity for which the tab will be displayed (Entity.Request or Entity.Object).</li>
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
                <td>Displays the custom tab.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show" translate="no">Show</h2>
    <p>
    This method handles the display of the entity custom tab.
    </p>
    <ul>
        <li>Syntax: <strong translate="no">EntityTabShowResult</strong> <span translate="no">Show</span>(int <b translate="no">entityId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">entityId</strong> - the entity ID (tblNode.intNodeId or tHdTicket.iHdTicketId) for which the custom tab should be displayed.</li>
                <li><strong translate="no">personId</strong> - the ID of the user (tPerson.iPersonId) to whom the custom tab should be displayed.</li>
            </ul>
        </li>
        <li>Return value: an instance of the class <em>EntityTabShowResult</em> with properties:<ul>
            <li><strong translate="no">Show</strong> (bool) - true = the tab will be displayed; false = the tab will not be displayed.</li>
            <li><strong translate="no">Name</strong> (<span translate="no">string</span>) - a display name of the tab</li>
            <li><strong translate="no">Url</strong> (<span translate="no">string</span>) - an URL of a content of the tab. </li>
            </ul>
        </li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the custom tab is to display a different page from the ALVAO WebApp, use the <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> property from the <a href="../../../alvao-asset-management/implementation/customization/alvao-api">Alvao.API</a> interface to get the root URL.
    </div>
    
</asp:Content>
