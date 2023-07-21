<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Azure DevOps Connector</h1>

    <p>Tento modul propojuje služby ALVAO Service Desk a Azure DevOps. 
        Uživatel například odešle do ALVAO Service Desk požadavek na úpravu systému ERP. 
        Po schválení požadavku a vypracování podrobné specifikace úpravy nebo ihned po vytvoření požadavku se v Azure DevOps automaticky vytvoří pracovní položka pro realizaci úpravy. 
        Po provedení úpravy a přechodu pracovní položky v Azure DevOps do definovaného stavu přejde původní požadavek v Alvao do definovaného stavu, například "Synchronizace do DevOps".</p>

    <h2>Technické požadavky</h2>
    <ul>
        <li translate="no">Azure DevOps</li>
        <li translate="no">ALVAO Service Desk</li>
        <li><span translate="no">ALVAO Service Desk Custom Apps</span> modul</li>
        <li><span translate="no">ALVAO Service Desk Enterprise API</span> modul</li>
    </ul>

    <h2>Instalace</h2>
    <ol>
        <li>Ve stromu <b>WebApp - Administration - Service Desk -</b> <a href="../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a> vyberte složku, do které chcete importovat ukázkovou službu pro připojení k Azure DevOps, a pomocí příkazu <b>Import</b> načtěte soubor <b>AzureDevOpsConnectorService&lt;Enu/Csy</b><b>&gt;.xml</b>, který je součástí instalačního balíčku <b>AlvaoAzureDevOpsConnector.zip</b>       </li>
        <li>V nabídce <b>WebApp - Administration -</b> <a href="../list-of-windows/alvao-webapp/administration/applications">Applications</a>( <b>Webové aplikace - Správa -</b> <a href="../list-of-windows/alvao-webapp/administration/applications">Aplikace</a>) načtěte pomocí příkazu <b>Import</b> soubor <b>AzureDevOpsConnectorApp.xml</b>       </li>
    </ol>

    <h2>Osobní přístupový token Azure DevOps</h2>
    <ol>
        <li>V Azure DevOps vytvořte <a href="https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=preview-page">osobní přístupový token</a> (PAT) s oprávněním <b>Work Items - Read &amp; Write</b>.</li>
        <li>V části <b>WebApp - Administration -</b> <a href="../list-of-windows/alvao-webapp/administration/applications">Applications</a>( <b>Webové aplikace - Správa -</b> <a href="../list-of-windows/alvao-webapp/administration/applications">Aplikace</a>) vyberte aplikaci <b>ALVAO Azure DevOps Connector</b> a vložte vytvořený PAT do skriptu <b>Settings.cs</b> na místo označené příslušnými komentáři.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Alternativně můžete použít více přístupových tokenů - jednotlivé hodnoty tokenů oddělte čárkou - např. pokud potřebujete do Alvao integrovat Azure DevOps z různých organizací    </div>

    <h2>Nastavení Azure DevOps</h2>
    <ol>
        <li>V <b>Azure DevOps</b> v daném projektu použijte <b>Nastavení projektu - Háčky služeb - Vytvořit odběr.</b></li>
        <li>Jako typ služby vyberte <b>Web Hooks</b> a stiskněte tlačítko <b>Next</b>.</li>
        <li>V části <b>Trigger on this type of event</b> vyberte možnost <b>Work item updated</b>.</li>
        <li>V poli <b>Pole</b> vyberte možnost Stav. Stiskněte tlačítko <b>Další</b>.</li>
        <li>Do položky <b>URL</b> zadejte adresu URL aplikace AlvaoRestApi, za kterou následuje cesta "/Connectors/DevOpsCallback", například: <a href="https://contoso.alvao.com/AlvaoWebApi/Connectors/DevOpsCallback">https://contoso.alvao.com/AlvaoWebApi/Connectors/DevOpsCallback</a></li>
        <li>V části <b>Zprávy k odeslání</b> vyberte možnost <b>Žádné</b>.</li>
        <li>V části Podrobné <b>zprávy</b> k odeslání vyberte rovněž možnost <b>Žádné</b> a stiskněte tlačítko <b>Dokončit</b>.</li>
    </ol>

    <h2>Nastavení služby v systému Alvao</h2>
    <ol>
        <li>Ve <b>WebApp - Administration - Service Desk</b> - <a href="../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a> vyberte službu, kterou chcete připojit k Azure DevOps, a použijte <b>Edit - Properties</b>.</li>
        <li>V sekci <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/other">Ostatní</a> zadejte hodnotu vlastního pole <b>Externí aplikace - Nastavení konektoru</b>. Následující nastavení jsou zapsána v notaci JSON:</li>
        <ol>
            <li><b>ConnectorType</b> - zadejte text <b>AzureDevOps</b>.</li>
            <li><b>URL</b> - zadejte adresu URL projektu Azure DevOps ve tvaru <a href="https://dev.azure.com/{organization}/{project}">https://dev.azure.com/{organizace}/{projekt}</a> <br /> 
                Příklad: https: <a href="https://dev.azure.com/Alvao/Alvaoproject">//dev.azure.com/Alvao/Alvaoproject</a></li>
            <li><b>AccessToken</b> - zadejte číslo osobního přístupového tokenu (PAT) (id tokenu, který jste poprvé uložili ve skriptu <i>Settings.cs</i> ).<br />
                0 je první a výchozí hodnota indexu</li>
            <li><b>AttributeMap</b> - zadejte mapování položek požadavku, formát nastavení viz níže.</li>
            <li><b>BeginState -</b> zadejte název stavu požadavku v Alvao, ve kterém bude požadavek přenesen do Azure DevOps.<br />
                Příklad: V případě, že se jedná o aplikaci DevOv, můžete zadat hodnotu, která je v DevOv: Synchronizace do DevOps</li>
            <li><b>EndState-</b> zadejte název stavu požadavku, do kterého má požadavek přejít po uzavření příslušné pracovní položky v Azure DevOps.<br />
                Příklad: Návrat z DevOps</li>
            <li><strong>WorkItemEndState</strong> - zadejte název stavu v Azure DevOps, ve kterém by měl požadavek změnit svůj stav v Alvao.<br />
                Příklad: Uzavřeno         </li>
        </ol>
        <p>Příklad celého nastavení:</p>
        <p>
            {<br />
            "ConnectorType": "AzureDevOps",<br />
            "URL": "https://dev.azure.com/Alvao/Alvaoproject",<br />
            "AccessToken": "0",<br />
            "AttributeMap":"{"System.Title":"[$TicketTitle$]",<br />
            "System.Description":"[$LatestImportantMessage$]",<br />
            "System.WorkItemType": "Task"},<br />
            "BeginState": "Synchronizace s DevOps",<br />
            "EndState": "Návrat z DevOps",<br />
            "WorkItemEndState": "Closed"<br />
            } </p>
    </ol>
    <h2>Mapa atributů</h2>
    <p>
        Mapa atributů pro nastavení <b>AttributeMap</b> je zapsána ve formátu JSON jako seznam vlastností, kde název vlastnosti je název <a href="https://docs.microsoft.com/en-us/azure/devops/boards/work-items/guidance/work-item-field?view=azure-devops">položky v Azure DevOps</a> a hodnota je řetězcová konstanta. V hodnotách můžete použít proměnné, viz níže. např    </p>
    <p>{"System.Title":"[$TicketTitle$]", "System.Description":"[$LatestImportantMessage$]",<br />
        "System.WorkItemType": "Task"}</p>
    <p>
        Každé položce v Azure DevOps je přiřazena hodnota, která je zapsána jako statický text obsahující proměnné. Můžete použít stejné proměnné jako v šabloně oznámení o změně stavu žadateli, viz <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/message-template">Šablona zprávy</a>   </p>
</asp:Content>
