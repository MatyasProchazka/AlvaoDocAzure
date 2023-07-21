<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vazby mezi objekty</h1>
    <p>
        Mezi objekty v ALVAO Asset Management lze vytvářet vazby, které popisují různé vztahy mezi objekty (konfiguračními položkami). Vazby mohou například definovat, které prvky IT infrastruktury se podílejí na poskytování určité IT služby. Výsledný graf pak můžete použít k posouzení dopadu (analýze dopadu) incidentů, problémů a změn v IT infrastruktuře    </p>
    <p>
        Přehled vazeb mezi objektem a ostatními objekty najdete v grafickém diagramu na stránce <b>WebApp - Objects - Object - </b><a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">Link Diagram</a> nebo <b>AM Console - Object - Link Diagram</b>   </p>
    <p>Vazby můžete vytvářet a upravovat přímo v <a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">diagramu</a> a také v hlavním okně <b>konzoly AM</b> na stránce <a href="../../list-of-windows/alvao-asset-management-console/tab-view/links">Vazby </a> nebo automatizovaně prostřednictvím rozhraní REST API, které je součástí modulu <a href="../../modules/alvao-am-enterprise-api">ALVAO Asset Management Enterprise API</a>.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při přesunu objektu do <em>koše</em> nebo do složky <em>Vyřazený majetek</em> se všechny jeho vazby  automaticky odstraní    </div>

    <h2>Typy odkazů</h2>
    <p>Typ odkazu určuje povahu vztahu mezi dvěma propojenými objekty. K dispozici jsou následující systémové typy vazeb:</p>
    <table>
        <thead>
            <tr>
                <th>Typ odkazu</th>
                <th>Popis</th>
                <th>Kategorie (systém nelze odstranit)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Související s - Související s</td>
                <td>Obecný odkaz - objekt A <i>souvisí s</i> objektem B.</td>
                <td>systém</td>
            </tr>
            <tr>
                <td>Is used - Používá</td>
                <td>Například UPS "UPS1" <i>používá</i> server "SERVER1". Při pohledu z druhé strany: server <i>používá</i> UPS. Správná funkčnost serveru tedy závisí na funkčnosti UPS   <br />
                    Tento typ propojení použijte k definování řetězců závislostí mezi prvky infrastruktury, které jdou od základních prvků až po komplexní koncové služby IT. Tento typ vazeb se doporučuje pro analýzu dopadů výpadků a změn v IT infrastruktuře.</td>
                <td>systém</td>
            </tr>
            <tr>
                <td>Je nadřazený - Je podřazený</td>
                <td>Vazby tohoto typu jsou určeny pozicí objektu ve stromu objektů a nezobrazují se na kartě <i>Vazby </i>.</td>
                <td>systém</td>
            </tr>
            <tr>
               <td>Hostovaný - Je hostován</td>Například <td>fyzický server "SERVER1</td>" <td> <i>hostuje</i> virtuální server "VM1</td>". <td>Virtuální server "VM1</td>" <td> <i>je hostován</i> fyzickým serverem "SERVER1".</td> <td>ownloaded</td></tr>
            <tr>
                <td>Je zálohován - Zálohování</td>
                <td>Například záložní kopie "Db1.bak" <i>zálohuje</i> databázi "Db1". Při pohledu z druhé strany: Databáze "Db1" <i>je zá</i> lohována záložní kopií "Db1.bak".</td>
                <td>vlastní nahraná</td>
            </tr>
        </tbody>
    </table>
    <p>
        Pokud vám výše uvedené typy nestačí, vytvořte si vlastní typy vazeb ve <b>WebApp - Administration - Asset Management</b> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/link-types">Object Link Types</a> nebo <b>AM Console - Tools - Lists</b> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/link-types">Object Link Types</a>   </p>

    <h2>Uživatelská oprávnění</h2>
    <p>S vazby  mohou pracovat pouze oprávnění uživatelé podle následující tabulky:</p>
    <table>
        <thead>
            <tr>
                <th>Role</th>
                <th>Zobrazit kartu <a href="../../list-of-windows/alvao-asset-management-console/tab-view/links">Vazby </a> a <a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">diagram odkazů</a> </th>
                <th>Přidávat, upravovat a odstraňovat vazby </th>
                <th>Spravovat typy vazeb</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Správci správy aktiv</td>
                <td>Ano</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Správci odkazů</td>
                <td>Ano</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Čtenáři odkazů</td>
                <td>Ano</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Čtečky pro správu majetku</td>
                <td>Ne</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Správci aktiv</td>
                <td>Ne</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Správci softwarových licencí</td>
                <td>Ne</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Správci detekce software a hardware</td>
                <td>Ne</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Účetní</td>
                <td>Ne</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Právo <i>Zobrazit</i> záložky <i>Vazby </i> a <i>Diagram odkazů</i> znamená, že uživatel vidí záložky <i>Vazby ,</i> resp. <i>Diagram odkazů</i> vybraného objektu a všechny jeho vazby  (i vazby  na objekty, ke kterým nemá práva) na něm    </div>


</asp:Content>
