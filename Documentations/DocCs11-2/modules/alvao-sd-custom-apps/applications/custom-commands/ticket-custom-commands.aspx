<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">ICommand</h1>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Toto rozhraní je zastaralé. Místo tohoto rozhraní použijte rozhraní <a href="../../../alvao-am-custom-apps/applications/i-entity-command">IEntityCommand</a>   </div>

    <p>
    Implementací rozhraní ICommand ve <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní příkazy požadavků    <br /> <br />

    V <a href="../../applications">aplikaci</a> vytvořte nový skript pomocí šablony <em>ICommand</em> a vhodně jej pojmenujte podle funkčnosti vlastního příkazu    <br />
    V nově vytvořeném skriptu nastavte v konstruktoru třídy příkazu hodnoty vlastností id, name, position a icon    </p>
    <ul>
        <li>id - číslo příkazu (jedinečné)</li>
        <li>name - název příkazu, který se bude zobrazovat v aplikacích</li>
        <li>pozice - pozice, na které se bude příkaz zobrazovat v aplikacích<ul>
            <li>1 = na první pozici hlavní nabídky požadavku</li>
            <li>2 = na poslední pozici hlavní nabídky požadavku</li>
            <li>3 = na první pozici vnořené nabídky v hlavní nabídce požadavku</li>
            <li>4 = na poslední pozici vnořené nabídky v hlavní nabídce požadavku</li>
        </ul>
        </li>
        <li>icon - název ikony příkazu         <ul>
                <li>Jako název ikony příkazu použijte název ikony z knihovny <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons" translate="no">Microsoft Fabric</a> (název ikony se zobrazí na stránce po najetí myší na vybranou ikonu). Pokud ikonu nezadáte, použije se ikona <i>LightningBolt</i>.</li>
            </ul>
        </li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro uložení vlastností a nastavení příkazu doporučujeme definovat třídu <em>Settings</em> v samostatném skriptu, který vytvoříte ze šablony <em>Class Library</em>   </div>

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
                <td>Zobrazení příkazu v nabídce požadavku.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#Run">Run</a></td>
                <td>Spustit příkaz.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="Show">Zobrazit</h2>
    Tato metoda kontroluje definované podmínky pro zobrazení příkazu    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Zavoláním této metody v metodě <em>Spustit</em> můžete zkontrolovat, zda se podmínky pro zobrazení dotazu nezměnily mezi okamžikem zobrazení dotazu a okamžikem spuštění dotazu    </div>

    <ul>
        <li>Syntaxe: <b translate="no">bool</b> Show(SqlConnection <b translate="no">con</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlPřipojení k databázi.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId), pro který bude příkaz zobrazen.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), kterému se má příkaz zobrazit.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty       <ul>
                <li><strong translate="no">bool</strong> - pravdivostní hodnota, zda se má příkaz zobrazit uživateli na zadaný požadavek.</li>
            </ul>
        </li>
    </ul>

    Příklad použití najdete v šabloně aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CostsCalculation</a>. <h2 id="Run" translate="no">Run</h2>Tato metoda sama spustí příkaz    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je příkaz spuštěn, je možné jej spustit:</div>
        Pokud má vlastní příkaz otevřít jinou stránku z webové aplikace ALVAO, použijte pro získání kořenové adresy URL vlastnost <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> z rozhraní <a href="../../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> </div>

    <ul>
        <li>Syntaxe: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>, <b translate="no">string</b>&gt; Run(SqlConnection <b translate="no">con</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">ticketId</strong> - ID požadavku (tHdTicket.iHdTicketId), nad kterým se příkaz spouští.</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), který příkaz spouští.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty       <ul>
                <li><strong translate="no">bool</strong> - pravdivostní hodnota, zda byl příkaz proveden.</li>
                <li><strong translate="no">string</strong> - text, který může být zobrazen ve zprávě pro uživatele.</li>
                <li><strong translate="no">string</strong> - Adresa URL, která se má otevřít v prohlížeči.</li>
            </ul>
        </li>
    </ul>

    Příklad případu použití najdete v šabloně aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CostsCalculation</a> </asp:Content>
