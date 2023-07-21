<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">IGeneralCommand</h1>
    Implementací rozhraní IGeneralCommand ve <a href="../../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">skriptu aplikace</a> můžete definovat vlastní příkazy hlavní nabídky    <br />
    <br />

    Umístěním příkazu do hlavní nabídky můžete uživatelům umožnit přístup k často používaným stránkám a operacím, které nejsou vázány na konkrétní požadavek ve funkci ALVAO Service Desk nebo Asset Management    <br />
    Příkazy se zobrazují v hlavní nabídce aplikací ALVAO WebAp    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Chcete-li systémový příkaz v hlavní nabídce aplikace ALVAO WebAp nahradit vlastním příkazem, <a href="../../../../alvao-service-desk/implementation/customization/links">skryjte systémový příkaz</a>   </div>
    <br />

    V aplikaci Service Desk nebo Asset Management vytvořte nový skript pomocí šablony <em>IGeneralCommand</em> a vhodně jej pojmenujte podle funkčnosti vlastního příkazu    <br />
    V nově vytvořeném skriptu nastavte v konstruktoru třídy příkazu hodnoty vlastností id, name, position a icon    <ul>
        <li>id - číslo příkazu (jedinečné)</li>
        <li>name - název příkazu, který se bude zobrazovat v aplikacích</li>
        <li>pozice - pozice, na které se bude příkaz zobrazovat v aplikacích<ul>
            <li>1 = v hlavní nabídce pod systémovými příkazy</li>
            <li>2 = v hlavní nabídce nad nabídkou <i>Více</i> </li>
            <li>3 = v hlavní nabídce v nabídce <i>Více</i> nad systémovým příkazem <i>Správa</i> </li>
            <li>4 = v uživatelské nabídce nad systémovým příkazem <i>Nastavení</i> </li>
        </ul>
        </li>
        <li>icon - název ikony příkazu         <ul>
                <li>Jako název příkazové ikony použijte název ikony z knihovny <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons">Microsoft Fabric</a> (název ikony se zobrazí na stránce po najetí myší na vybranou ikonu). Pokud ikonu nezadáte, použije se ikona <i>LightningBolt</i>.</li>
            </ul>
        </li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro uložení vlastností a nastavení příkazu doporučujeme definovat třídu <em>Settings</em> v samostatném skriptu, který vytvoříte ze šablony <em>Class Library</em>      <br />
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
                <td>Zobrazit příkaz v hlavní nabídce aplikace.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#Run">Run</a></td>
                <td>Spustit příkaz.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="Show" translate="no">Show</h2>
    Tato metoda kontroluje definované podmínky pro zobrazení příkazu    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Zavoláním této metody v metodě <em>Spustit</em> můžete před spuštěním příkazu zkontrolovat, zda se podmínky pro jeho zobrazení nezměnily mezi okamžikem zobrazení příkazu a okamžikem jeho spuštění    </div>

    <ul>
        <li>Syntaxe: <b translate="no">bool</b> <span translate="no">Show</span>(SqlConnection <b translate="no">con</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), kterému se má příkaz zobrazit.</li>
            </ul>
        </li>
        <li>Vracející se hodnoty: Vrátí se hodnoty       <ul>
                <li><strong translate="no">bool</strong> - true hodnota, zda se má příkaz zobrazit uživateli v hlavní nabídce aplikace.</li>
            </ul>
        </li>
    </ul>

    Příklad použití viz šablona aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ProblemReporting</a>. <h2 id="Run" translate="no">Run</h2>Tato metoda sama spustí příkaz    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud má vlastní příkaz otevřít jinou stránku z webové aplikace ALVAO, použijte pro získání kořenové adresy URL vlastnost <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> z rozhraní <a href="../../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> </div>

    <ul>
        <li>Syntaxe: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>, <b translate="no">string</b>&gt; Run(SqlConnection <b translate="no">con</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">con</strong> - SqlConnection k databázi.</li>
                <li><strong translate="no">personId</strong> - ID uživatele (tPerson.iPersonId), který příkaz spustí.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty       <ul>
                <li><strong translate="no">bool</strong> - pravdivostní hodnota, zda byl příkaz proveden.</li>
                <li><strong translate="no">string</strong> - text, který může být zobrazen ve zprávě pro uživatele.</li>
                <li><strong translate="no">string</strong> - Adresa URL, která se otevře v prohlížeči.</li>
            </ul>
        </li>
    </ul>

    Příklad použití naleznete v šabloně aplikace <a href="../../../../modules/alvao-am-custom-apps/applications/templates" translate="no">ProblemReporting</a> </asp:Content>
