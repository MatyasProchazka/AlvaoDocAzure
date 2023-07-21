<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Upgrade from ALVAO 11.0 – manual steps</h1>

    <h2 translate="no">Custom Apps</h2>

    <p>
        When upgrading from ALVAO 11.0, you need to modify you existing custom extensions, see <a href="../modules/alvao-am-custom-apps" translate="no">ALVAO Asset Management Custom Apps</a> or <a href="../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a>. Modify the source files and scripts as described on this page. If you are upgrading from ALVAO 10.4 or earlier, first <a href="../../11.0/upgrade/customization_upgrade">convert the custom extensions to ALVAO 11.0</a>.
    </p>

    <ol>
        <li>In all <a href="../modules/alvao-am-custom-apps/applications">Applications</a> and <a href="../modules/alvao-sd-custom-apps/custom-form-template">Custom Forms</a>:<ul>
            <li>Instead of the namespace <strong>System.Data.SqlClient</strong> use <em>Microsoft.Data.SqlClient</em>. E.g.:<br />
                Replace the line <span class="console" translate="no">using System.Data.SqlClient;</span> with <span class="console" translate="no">using Microsoft.Data.SqlClient;</span>.
            </li>
            <li>Delete all uses of namespaces <strong translate="no">Alvao.ServiceDesk.ServiceDeskWebApp.Infrastructure.WebService</strong> and <strong translate="no">Alvao.Apps.WebService</strong>.</li>
        </ul>
        </li>
        <li>Stored database procedure <i translate="no">spReadAllComunication</i> was renamed to <i translate="no">spReadAllCommunication</i>.</li>
        <li>Log mode <i translate="no">Comunication</i> <span translate="no">(logMode=Comunication)</span> for the request URL was renamed to <i translate="no">Communication</i> <span translate="no">(logMode=Communication)</span>.</li>
        <li>Renamed value in enumerator Alvao.API.SD.Act.TicketLogMode from <i translate="no">Comunication</i> to <i translate="no">Communication</i>.</li>
        <li>Change of word &quot;licence&quot; to &quot;license&quot;:
            <ul>
                <li>Table dbo.PeriodicAlert, columns:
                    <ul>
                        <li>Licence name –> License name</li>
                        <li>Licence inventory number –> License inventory number</li>
                    </ul>
                </li>
                <li>View <em translate="no">Query.SwInstallationEnu</em> column <em>Number of assigned licences</em> –> <em>Number of assigned licenses</em></li>
            </ul>
        </li>
        <li>The custom apps interfaces <a href="../modules/alvao-sd-custom-apps/applications/custom-commands" translate="no">ICommand</a> and <a href="../modules/alvao-sd-custom-apps/applications/ticket-custom-tabs" translate="no">IView</a> were deprecated. Use <a href="../modules/alvao-am-custom-apps/applications/i-entity-command" translate="no">IEntityCommand</a> and <a href="../modules/alvao-am-custom-apps/applications/i-entity-tab" translate="no">IEntityTab</a> instead.<ol>
            <li>Add definition of command entity (Entity.Request, Entity.Object)</li>
            <li>Change return types of the <em translate="no">Show</em> method to <em translate="no">EntityCommandShowResult/EntityTabShowResult</em> object.</li>
            <li>Change return types of the <em translate="no">Run</em> method to <em translate="no">CommandResult</em> object.</li>
            <li>Change the <em translate="no">SqlConnection</em> parameter uses to <em translate="no">AlvaoContext.GetConnectionScope()</em>. </li>
        </ol>
        </li>
    </ol>

</asp:Content>
