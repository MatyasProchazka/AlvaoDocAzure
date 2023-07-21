<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Řízení zaměstnanců</h1>

    <p>Základní procesy v <em>řízení zaměstnanců</em> jsou:</p>

    <ul>
        <li>Nástup nového zaměstnance            <ul>
                <li>Cílem tohoto procesu je zajistit, aby byly pro nového zaměstnance včas připraveny všechny pracovní prostředky (např. stůl, počítač, přístupové karty, ...), aby mohl nový zaměstnanec od prvního dne plně pracovat. Kromě toho během několika prvních týdnů po příchodu nového zaměstnance (tj. během adaptačního období) zajistěte, aby byl nový zaměstnanec proškolen a aby byly splněny všechny zákonné povinnosti (kurzy bezpečnosti práce, zdravotní prohlídky atd.)     </li>
            </ul>
        </li>
        <li>Odchod zaměstnance            <ul>
                <li>Cílem tohoto procesu je vytvořit všechny dokumenty potřebné k formálnímu ukončení pracovního poměru se zaměstnancem, zrušit mu všechna přístupová práva k informačním systémům a fyzickým prostorám (klíče, přístupové karty) a převzít od zaměstnance všechny svěřené pracovní prostředky (počítač, mobilní telefon, ...)    </li>
            </ul>
        </li>
        <li>Změna údajů zaměstnance<ul>
            <li>Cílem procesu je včas aktualizovat všechny záznamy obsahující osobní údaje zaměstnance, např. při změně bankovního účtu zaměstnance pro zasílání mzdy apod.</li>
        </ul>
        </li>
    </ul>

    <p>
        Tyto procesy obvykle vyžadují koordinovanou spolupráci mnoha týmů, zejména HR, IT, Facilities Managementu atd. Ve společnosti Alvao vzniká požadavek nebo soubor požadavků na jednotlivé týmy, aby provedly konkrétní kroky v procesu, jako je příprava fyzického pracoviště, příprava počítače, provedení pravidelných hodnotících pohovorů se zaměstnancem během jeho nástupu atd. Každý požadavek má předpokládané datum vyřešení a je automaticky směrován na konkrétní realizační tým. 
    </p>

<h2>Nastavení procesu</h2>
    <ol>
        <li>V nabídce <strong>Správa - Service Desk</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Služby</a> přejděte na výchozí službu <strong>Lidské zdroje</strong> a zaškrtněte její podřízené služby.</li>
        <li>U daných služeb přiřaďte žadatelům SLA a nastavte oprávnění servisního týmu.</li>
        <li>Pro automatizaci rozpisu požadavků použijte modul <a href="../../../modules/alvao-sd-advanced-workflows">ALVAO Advanced Workflows</a>, konkrétně funkci <strong>Automatické vytvoření požadavku</strong>.</li>
    </ol>
    

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro pokročilejší automatizaci procesů použijte modul <a href="../../../modules/alvao-sd-custom-apps">ALVAO Service Desk Custom Apps</a>.<br />
    </div>

</asp:Content>
