<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Upgrade z verze ALVAO 11.0 - ruční kroky</h1>

    <h2>Vlastní aplikace</h2>

    <p>
        Při upgradu z ALVAO 11.0 je třeba upravit stávající vlastní rozšíření, viz <a href="../modules/alvao-am-custom-apps">ALVAO Asset Management Custom Apps</a> nebo <a href="../modules/alvao-sd-custom-apps">ALVAO Service Desk Custom Apps</a>. Upravte zdrojové soubory a skripty podle popisu na této stránce. Pokud provádíte upgrade z verze ALVAO 10.4 nebo starší, nejprve <a href="../../11.0/upgrade/customization_upgrade">převeďte vlastní rozšíření na verzi ALVAO 11.0</a>   </p>

    <ol>
        <li>Ve všech <a href="../modules/alvao-am-custom-apps/applications">aplikacích</a> a <a href="../modules/alvao-sd-custom-apps/custom-form-template">vlastních formulářích</a>:<ul>
            <li>Místo jmenného prostoru <strong>System.Data.SqlClient</strong> použijte <em>Microsoft.Data.SqlClient</em>. Např:<br />Nahraďte řádek <span class="console">using System.Data.SqlClient;</span> na <span class="console">using Microsoft.Data.SqlClient; </span>       </li>
            <li>Odstraňte všechna použití jmenných prostorů <strong>Alvao.ServiceDesk.ServiceDeskWebApp.Infrastructure.WebService</strong> a <strong>Alvao.Apps.WebService</strong>.</li>
            </ul>
        </li>
        <li>Uložená databázová procedura <i>spReadAllComunication</i> byla přejmenována na <i>spReadAllCommunication</i>.</li>
        <li>Režim záznamu <i>Comunication</i> (logMode=Comunication) pro adresu URL požadavku byl přejmenován na <i>Communication</i> (logMode=Communication).</li>
        <li>Přejmenována hodnota v enumerátoru Alvao.API.SD.Act.TicketLogMode z <i>Comunication</i> na <i>Communication</i>.</li>
        <li>Změna slova &quot;licence&quot; na &quot;licence&quot;            <ul>
                <li>Tabulka dbo.PeriodicAlert, sloupce       <ul>
                        <li>Název licence -&gt; Název licence</li>
                        <li>Evidenční číslo licence -&gt; Evidenční číslo licence</li>
                    </ul></li>
                <li>Zobrazení <em>Query.SwInstallationEnu</em> sloupec <em>Počet přidělených licencí </em>-&gt; <em>Počet přidělených licencí</em></li>
            </ul>
        </li>
        <li>5.	Vlastní aplikační rozhraní <a href="../modules/alvao-sd-custom-apps/applications/custom-commands">ICommand</a> a <a href="../modules/alvao-sd-custom-apps/applications/ticket-custom-tabs">IView</a> byla zrušena. Místo nich používejte <a href="../modules/alvao-am-custom-apps/applications/i-entity-command">IEntityCommand</a> a <a href="../modules/alvao-am-custom-apps/applications/i-entity-tab">IEntityTab</a>.<ol>
            <li>Přidána definice entity příkazu (Entity.Request, Entity.Object)</li>
            <li>Změna návratových typů metody <em>Show</em> na objekt <em>EntityCommandShowResult/EntityTabShowResult</em>.</li>
            <li>Změňte návratové typy metody <em>Run</em> na objekt <em>CommandResult</em>.</li>
            <li>Změňte použití parametru <em>SqlConnection</em> na <em>AlvaoContext.GetConnectionScope()</em>. </li>
            </ol>
</li>
    </ol>

</asp:Content>
