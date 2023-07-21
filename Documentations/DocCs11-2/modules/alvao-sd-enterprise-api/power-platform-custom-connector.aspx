<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

   <h1 translate="no">Power Platform connector</h1>
    <p>
        Pomocí konektoru Power Platform můžete používat stránky <a href="https://powerautomate.microsoft.com" translate="no">Power Automate</a>, <a href="https://powerapps.microsoft.com" translate="no">Power Apps</a> nebo <a href="https://azure.microsoft.com/products/logic-apps" translate="no">Azure Logic Apps</a> k automatizaci akcí v aplikaci Alvao nebo k integraci aplikace Alvao s jinými aplikacemi    </p>
    <h2>Instalace</h2>
    <ol>
        <li>V aplikaci <strong>Alvao</strong> vytvořte aplikační účet reprezentující platformu Power Platform a přidělte mu potřebná oprávnění.<ol>
            <li>V nabídce <strong>Administrace - Uživatelé</strong> použijte příkaz <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">Nový uživatel</a>. Vyplňte následující pole:<ul>
                <li>Vyplňte následující položky:<strong>Jméno a příjmení</strong>, např</li>
                <li><strong>Uživatelské jméno</strong>, např. <em>Power Platform</em></li>
                <li>Zaškrtněte volbu <strong>Application account - Other applications (Účet aplikace - Ostatní aplikace</strong> ).</li>
            </ul>
            </li>
            <li>V tabulce vyberte vytvořeného uživatele a pomocí tlačítka .. <strong>.</strong> - <strong> Change password (Změnit heslo)</strong> nastavte heslo uživatele.</li>
            <li>Přiřaďte účtu oprávnění ke službám pomocí příkazu <strong>Upravit - Oprávnění</strong>. Pomocí role <a href="../../alvao-service-desk/implementation/services/service-roles">Čtenář nebo Správce</a> přidělte oprávnění ke čtení, resp. aktualizaci.</li>
        </ol>
        </li>
        <li>Pro instalaci konektoru v aplikaci <strong>Power Automate</strong> použijte následující postup. Pro <span translate="no"><em>Power Apps</em></span>
            a <span translate="no"><em>Azure Logic Apps</em></span>je postup podobný.<ol>
                <li>Stáhněte a rozbalte archiv <a href="ALVAO.PowerPlatform.CustomConnector.zip" translate="no">ALVAO.PowerPlatform.CustomConnector.zip</a>.</li>
                <li>Přihlaste se k webu <a href="https://powerautomate.microsoft.com" translate="no">Power Automate</a>.</li>
                <li>Použijte příkaz <strong>Data - Vlastní konektory - Nový vlastní konektor - Importovat soubor OpenAPI</strong>      <ol>
                        <li>Nastavte <strong>název Vlastní konektor</strong>, například ALVAO.</li>
                        <li>Zvolte <span translate="no"><strong>ALVAO.PowerPlatform.CustomConnector.swagger.yaml</strong></span> soubor ze staženého archivu a klikněte na tlačítko <strong>Pokračovat</strong>.</li>
                        <li>Na kartě <strong>Obecné</strong>      <ul>
                                <li><strong>Nahrát</strong> <span translate="no"><em>ALVAO.PowerPlatform.CustomConnector.icon.png</em></span> jako ikonu.</li>
                                <li>Nastavte <strong>barvu pozadí ikony</strong> na <span translate="no">#FFFFFF</span>.</li>
                                <li>Nastavte <strong>Hostitelskou</strong> a <strong>základní adresu URL</strong> na adresu <span translate="no">ALVAO REST API url</span>.</li>
                            </ul>
                            <div class="note">
                                <div class="icon">
                                </div>
                                <div class="title">
                            Poznámka         </div>
                        Pokud nemáte adresu <span translate="no">REST API</span> vystavenou internetu, musíte se připojit prostřednictvím lokální datové brány. 
                        Nastavení brány naleznete v části <a href="https://learn.microsoft.com/en-us/data-integration/gateway/service-gateway-install">Instalace lokální datové brány</a>     </div>
                        </li>
                        <li>Klikněte na tlačítko <strong>Vytvořit konektor</strong>. Další informace naleznete v části <a href="https://learn.microsoft.com/en-us/connectors/custom-connectors/define-openapi-definition">Vytvoření vlastního konektoru z definice OpenAPI</a>.</li>
                        <li>Na stránce <strong>Test </strong>   <ol>
                                <li>Vyberte možnost <strong>Nové připojení</strong>          <ul>
                                        <li>Zadejte uživatelské jméno a heslo účtu aplikace <span translate="no">Power Platform</span> v systému Alvao.</li>
                                        <li>Použijte základní ověření.</li>
                                        <li>Klikněte na tlačítko <strong>Vytvořit připojení</strong>.</li>
                                    </ul>
                                </li>
                                <li>Jako operaci vyberte <strong translate="no">GetRequest</strong>.</li>
                                <li>Zadejte ID existujícího požadavku.</li>
                                <li>Klikněte na tlačítko <strong>Testovací operace</strong>.</li>
                                <li>Měl by se vrátit stavový kód 200.</li>
                            </ol>
                        </li>
                        <li>Nyní se při přidávání operace do toku zobrazí konektor ALVAO na kartě <strong>Vlastní</strong> v návrháři.</li>
                    </ol>
                </li>
            </ol>
        </li>
    </ol>
    <h2>Akce</h2>
    <table>
        <thead>
            <tr>
                <th>Název akce</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">Create request</td>
                <td>Vytvoří nový požadavek.</td>
            </tr>
            <tr>
                <td translate="no">Get request</td>
                <td>Vrátí pole požadavku.</td>
            </tr>
            <tr>
                <td translate="no">Update request</td>
                <td>Aktualizuje pole požadavku.</td>
            </tr>
            <tr>
                <td translate="no">Create record in request log</td>
                <td>Vytvoří nový záznam v protokolu požadavků.</td>
            </tr>
            <tr>
                <td translate="no">Assign request to solver or solver team</td>
                <td>Přiřadí požadavek řešiteli nebo řešitelskému týmu.</td>
            </tr>
            <tr>
                <td translate="no">Change request state</td>
                <td>Převádí požadavek ve stavu požadavku.</td>
            </tr>
            <tr>
                <td translate="no">Move request to another service</td>
                <td>Přesune požadavek do služby.</td>
            </tr>
        </tbody>
    </table>
    <p>
        Další podrobnosti naleznete ve <a href="https://app.swaggerhub.com/apis-docs/A3555/ALVAO_PowerPlatform_CustomConnector/1.0.0">specifikaci rozhraní</a>.</p>
    <h3>Vlastní pole</h3>
    <p>
        Konektor podporuje také čtení a zápis hodnot z/do vlastních polí požadavků. 
        Vlastní pole nelze popsat v obecné definici konektoru, takže pro jejich zpracování je třeba použít následující techniky    </p>
    <p>
        Chcete-li <strong>přečíst</strong> hodnotu vlastního pole požadavku, použijte výrazy v poli <span translate="no"><em>Get request</em></span> akce. Např. pro načtení hodnoty pole <em>TicketCategory</em> použijte výraz:<br />
       <span class="console" translate="no">outputs('Get_request')?['body/customItems/TicketCategory/value']</span>
    </p>
    <p>
        Chcete-li <strong>zapsat</strong> hodnotu vlastního pole požadavku, použijte výraz <span translate="no"><em>Update request</em></span> akci s vlastní specifikací JSON. Např. pro zápis hodnoty <span translate="no">"monitor failure"</span> do pole <em>TicketCategory</em> použijte tuto specifikaci v poli <em>Vlastní položky</em>   </p>
    <span class="console" translate="no">
        <pre>{
  "TicketCategory": {
    "@@odata.type": "#Alvao.Rest.Api.Models.SD.CustomItem",
    "name": "TicketCategory",
    "value": "monitor failure"
  }
}</pre>
    </span>
    <div class="note">
        <div class="icon">
        </div>
        <div class="title">
            Poznámka        </div>
        Znak "@" je zdvojen z důvodu escapování    </div>
    <h2>Spouštěče</h2>
    <p>
        Pomocí modulu <a href="../alvao-sd-custom-apps.aspx" translate="no">ALVAO Service Desk Custom Apps</a> můžete spouštět tok Power Automate přímo z kódu libovolné <a href="../alvao-am-custom-apps/applications">aplikace</a> Alvao.</p>
    <h3>Příklad</h3>
    <p>
        Nastavení příkladu:</p>
    <ol>
        <li>Přihlaste se na <a href="https://powerautomate.microsoft.com" translate="no">Power Automate</a> a importujte balíček <strong translate="no">ALVAO.PowerPlatform.FlowTempate.zip</strong>, který je součástí balíčku konektoru.</li>
        <li>V nabídce <strong>Alvao - Administrace</strong> - <a href="../../list-of-windows/alvao-webapp/administration/applications">Aplikace</a> použijte příkaz <strong>Import</strong> a importujte soubor <strong translate="no">ALVAO.Application.RunFlowOnTicketStateChange.xml</strong>.</li>
        <li>V <strong>Administrace</strong> - <a href="../../list-of-windows/alvao-webapp/administration/custom-items">Vlastní pole</a> vytvořte nové vlastní pole entity Stav požadavku         <table>
                <thead>
                    <tr>
                        <th>Název</th>
                        <th>Typ</th>
                        <th>Délka</th>
                        <th>Tabulka</th>
                        <th>Sloupec</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Průběh (URL)</td>
                        <td translate="no">nvarchar</td>
                        <td>2048</td>
                        <td translate="no">TicketStateCust</td>
                        <td translate="no">RunFlowUrl</td>
                    </tr>
                </tbody>
            </table>
        </li>
        <li>V aplikaci Power Automate zkopírujte adresu <strong translate="no">HTTP POST URL</strong> z adresy <span translate="no">"When an HTTP request is received" trigger of the flow</span>.</li>
        <li>V nabídce <strong>Alvao - Správa</strong> - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process">Procesy</a> vyberte proces, pro jehož požadavky chcete, aby byl tok spuštěn. Použijte příkaz Upravit - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/workflow">Řešení procesu</a>, vyberte konkrétní stav, klikněte na ikonu <strong>Upravit stav</strong> a v sekci <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request">Ostatní</a> vložte URL adresu spouštěče do pole <strong>Spustit tok (URL)</strong>.</li>
        <li>V nabídce <strong>Administrace - Aplikace</strong> povolte ukázkovou aplikaci.</li>
    </ol>


    <p>
        Aplikace spustí tok vždy, když požadavek přejde do stavu požadavku s URL spouštěče v poli <em>Spustit tok (URL)</em>.<br />
        Tok nic nedělá, pouze odpovídá kódem 200 a tělem s číslem požadavku.<br />
        Poté aplikace zaznamená záznam <span translate="no">"Flow was triggered"</span> v podrobném protokolu požadavku.</p>
    

</asp:Content>
