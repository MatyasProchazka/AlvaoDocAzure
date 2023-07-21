<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">IEntityTab</h1>
    <p>
    Implementací tohoto rozhraní můžete definovat vlastní karty na stránce objektu nebo požadavku. Vlastní záložka může zobrazovat libovolný webový obsah zobrazitelný v tagu iframe. Příklad viz šablona aplikace <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ShowRequesterAddress</a>.</p>
    <p>

    V <a href="../applications">aplikaci</a> vytvořte nový skript pomocí šablony <em>IElementTab</em> a vhodně jej pojmenujte podle obsahu karty. V nově vytvořeném skriptu nastavte v konstruktoru třídy následující vlastnosti:</p>
    <ul>
        <li>Id - jedinečný identifikátor karty (řetězec)</li>
        <li>Entita - typ entity, pro kterou bude záložka zobrazena (Entity.Request nebo Entity.Object).</li>
    </ul>

    <h2>Metody rozhraní</h2>
    <table>
        <thead>
            <tr>
                <th>Metoda</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="#Show">Show</a></td>
                <td>Zobrazí vlastní kartu.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show" translate="no">Show</h2>
    <p>
    Tato metoda zpracovává zobrazení vlastní záložky entity    </p>
    <ul>
        <li>Syntaxe: <strong translate="no">EntityTabShowResult</strong> Show(int <b translate="no">entityId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">entityId</strong> - iD entity (tblNode.intNodeId nebo tHdTicket.iHdTicketId), pro kterou se má zobrazit vlastní záložka.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), kterému má být vlastní záložka zobrazena.</li>
            </ul>
        </li>
        <li>Vrácená hodnota: instance třídy <em>EntityTabShowResult</em> s vlastnostmi:<ul>
            <li><strong translate="no">Show</strong> (bool) - true = záložka bude zobrazena; false = záložka nebude zobrazena.</li>
            <li><strong translate="no">Name</strong> (string) - zobrazený název záložky</li>
            <li><strong translate="no">Url</strong> (string) - adresa URL obsahu záložky. </li>
            </ul>
        </li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud má vlastní záložka zobrazovat jinou stránku než ALVAO WebApp, použijte pro získání kořenové adresy URL vlastnost <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> z rozhraní <a href="../../../alvao-asset-management/implementation/customization/alvao-api">Alvao.API</a>   </div>
    
</asp:Content>
