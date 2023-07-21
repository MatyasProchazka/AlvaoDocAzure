<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">IPeriodicAction</h1>
    Implementací rozhraní IPeriodicAction ve <a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní periodické akce    <br />
    Vlastní akce lze spouštět v pravidelném časovém intervalu    <br />
    Systém spouští periodické vlastní akce každou hodinu    <br />
    <br />

    V <a href="../applications">aplikaci</a> vytvořte nový skript pomocí šablony <em translate="no">IPeriodicAction</em> a vhodně jej pojmenujte podle funkce, kterou akce provádí    <br />
    V nově vytvořeném skriptu nastavte v konstruktoru třídy hodnotu vlastnosti Name (název vlastní akce)    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Špatná definice vlastní akce může nevratně poškodit databázi Alvao, proto akce vždy vytvářejte a testujte v testovacím prostředí, např. na kopii produkční databáze    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Předpokladem pro vytvoření funkční automatizované akce je dobrá znalost <a href="../../../alvao-asset-management/implementation/customization/database">databáze Alvao</a> a <a href="../../../alvao-asset-management/implementation/customization/alvao-api">rozhraní Alvao.API</a>   </div>

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
                <td translate="no"><a href="#OnPeriod">OnPeriod</a></td>
                <td>Periodická vlastní akce.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="OnPeriod" translate="no">OnPeriod</h2>
    V metodě definujte jak podmínky pro provádění operací, tak samotné operace    <ul>
        <li>Syntaxe: <b translate="no">void</b> OnPeriod(SqlConnection <b translate="no">con</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
            </ul>
        </li>
        <li>Návratová hodnota: <b>žádná</b>.</li>
    </ul>

    Příklad použití naleznete v šabloně aplikace <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">AutoCloseInactiveTickets</a> </asp:Content>
