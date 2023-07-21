<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IPeriodicAction</h1>
    By implementing the IPeriodicAction interface in a <a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom periodic actions.
    <br />
    Custom actions can be run at a regular time interval.
    <br />
    The system runs periodic custom actions every hour.
    <br />
    <br />

    In the <a href="../applications">application</a>, create a new script using the <em translate="no">IPeriodicAction</em> template and name it appropriately according to the functionality that the action performs.
    <br />
    In the newly created script, set the value of the Name property (the name of the action itself) in the class constructor.

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Poor definition of a custom action can irreversibly damage the Alvao database, so always create and test actions in a test environment, e.g. on a copy of the production database.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        A prerequisite for creating a working automated action is a good knowledge of <a href="../../../alvao-asset-management/implementation/customization/database">Alvao database</a> and <a href="../../../alvao-asset-management/implementation/customization/alvao-api">Alvao.API</a>.
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
                <td translate="no"><a href="#OnPeriod">OnPeriod</a></td>
                <td>Periodic custom action.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnPeriod" translate="no">OnPeriod</h2>
    In the method, define both the conditions for performing the operations and the operations themselves.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnPeriod(SqlConnection <b translate="no">con</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    For an example use case, see the <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">AutoCloseInactiveTickets</a> application template.

</asp:Content>
