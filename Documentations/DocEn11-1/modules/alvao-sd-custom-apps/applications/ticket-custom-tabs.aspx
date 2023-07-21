<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IView</h1>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        This interface is deprecated. Instead of this interface use the <a href="../../alvao-am-custom-apps/applications/i-entity-tab" translate="no">IEntityTab</a> interface.
    </div>

    <p>
    By implementing the IView interface (custom tabs), you can use it to display custom content in the request detail.
    <br />
    This can be a custom page in the ALVAO WebApp or, for example, an external parameterized link.
    </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        A poorly defined custom bookmark can irreversibly damage the Alvao database, so always create and test on a copy of the database in a test environment.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Pages that have disabled iframe display cannot be displayed in bookmarks.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        A prerequisite for creating a functional bookmark is a good knowledge of <a href="../../../alvao-asset-management/implementation/customization/database">Alvao database</a> and <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a>.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the custom tab is to display a different page from the ALVAO WebApp, use the <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> property from the <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> interface to get the root URL.
    </div>
    <br />

    In the <a href="../applications">application</a> create a new script according to the <em>IView</em> template and name it appropriately according to the content that the tab displays.In the newly created script, set the values of the id and name properties in the constructor of the command class:<ul>
        <li>id - bookmark number (unique)</li>
        <li>name - the name of the bookmark that will be displayed in applications</li>
    </ul>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To store the properties and settings of the tab, we recommend defining the <em>Settings</em> class in a separate script that you create from the <em>Class Library</em> template.
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
                <td>Display the custom request tab.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show" translate="no">Show</h2>
    This method handles the display of the request's own page.
    <ul>
        <li>Syntax: <b translate="no">string</b> <span translate="no">Show</span>(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction of the database transaction in progress.</li>
                <li><strong translate="no">ticketId</strong> - The request ID (tHdTicket.iHdTicketId) for which the custom page will be displayed.</li>
                <li><strong translate="no">personId</strong> - the user ID (tPerson.iPersonId) for which the custom tab is to be displayed.</li>
            </ul>
        </li>
        <li>Return value:
            <ul>
                <li><strong translate="no">string</strong> - a text string containing the URL to display on the custom bookmark. If the URL is empty, the bookmark is not displayed to the user.</li>
            </ul>
        </li>
    </ul>

    For an example use case, see the <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ShowRequesterAddress</a> application template.

</asp:Content>
