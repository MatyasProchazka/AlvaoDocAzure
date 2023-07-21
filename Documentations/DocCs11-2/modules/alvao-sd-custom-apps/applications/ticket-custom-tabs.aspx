<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">IView</h1>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Toto rozhraní je zastaralé. Místo tohoto rozhraní použijte rozhraní <a href="../../alvao-am-custom-apps/applications/i-entity-tab" translate="no">IEntityTab</a> </div>

    <p>
    Implementací rozhraní IView (vlastní záložky) jej můžete použít k zobrazení vlastního obsahu v detailu požadavku    <br />
    Může to být vlastní stránka ve webové aplikaci ALVAO nebo například externí parametrizovaný odkaz    </p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Špatně definovaná vlastní záložka může nenávratně poškodit databázi Alvao, proto ji vždy vytvořte a otestujte na kopii databáze v testovacím prostředí    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Stránky, které mají zakázané zobrazování iframe, nelze zobrazit v záložkách    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Předpokladem pro vytvoření funkční záložky je dobrá znalost <a href="../../../alvao-asset-management/implementation/customization/database">databáze Alvao</a> a adresy <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a></div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud má vlastní záložka zobrazovat jinou stránku než ALVAO WebApp, použijte pro získání kořenové adresy URL vlastnost <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> z rozhraní <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> </div>
    <br />

    V <a href="../applications">aplikaci</a> vytvořte nový skript podle šablony <em>IView</em> a vhodně jej pojmenujte podle obsahu, který bude záložka zobrazovat. v nově vytvořeném skriptu nastavte hodnoty vlastností id a name v konstruktoru třídy command:<ul>
        <li>id - číslo záložky (jedinečné)</li>
        <li>name - název záložky, která se bude zobrazovat v aplikacích</li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro uložení vlastností a nastavení záložky doporučujeme definovat třídu <em>Nastavení</em> v samostatném skriptu, který vytvoříte ze šablony <em>Knihovna tříd</em>     <br />
    </div>

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
                <td>Zobrazení karty vlastního požadavku.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="Show" translate="no">Show</h2>
    Tato metoda se stará o zobrazení vlastní stránky požadavku    <ul>
        <li>Syntaxe: <b translate="no">string</b> Show(SqlConnection <b translate="no">con</b>, SqlTransaction <b translate="no">trans</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">trans</strong> - SqlTransaction probíhající transakce databáze.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId), pro který bude zobrazena vlastní stránka.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), pro kterého se má zobrazit vlastní záložka.</li>
            </ul>
        </li>
        <li>Vrácená hodnota       <ul>
                <li><strong translate="no">string</strong> - textový řetězec obsahující adresu URL, která se má zobrazit na vlastní záložce. Pokud je URL adresa prázdná, záložka se uživateli nezobrazí.</li>
            </ul>
        </li>
    </ul>

    Příklad použití naleznete v šabloně aplikace <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ShowRequesterAddress</a> </asp:Content>
