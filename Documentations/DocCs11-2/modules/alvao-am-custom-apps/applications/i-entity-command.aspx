<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">IEntityCommand</h1>
    <p>
        Implementací tohoto rozhraní můžete definovat vlastní příkazy pro objekt nebo požadavek. Příklad naleznete v šabloně aplikace <a href="templates" translate="no">CostsCalculation</a> </p>
    <p>
        V <a href="../applications">aplikaci</a> vytvořte nový skript pomocí šablony <em>IEntityCommand</em> a vhodně jej pojmenujte podle funkčnosti vlastního příkazu    <br />
        V nově vytvořeném skriptu nastavte v konstruktoru třídy následující vlastnosti    </p>
    <ul>
        <li>Id - jedinečný identifikátor příkazu (řetězec)</li>
        <li>Entita - typ entity, pro kterou bude příkaz zobrazen (Entity.Request nebo Entity.Object).</li>
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
                <td>Zobrazení příkazu v nabídkách příkazů.</td>
            </tr>
            <tr>
                <td translate="no"="no"><a href="#Run">Run</a></td>
                <td>Spustit příkaz.</td>
            </tr>
        </tbody>
    </table>

   <h2 id="Show" translate="no">Show</h2>
    Tato metoda řídí zobrazení příkazu v nabídkách příkazů    <ul>
        <li>Syntaxe: <b translate="no">EntityCommandShowResult</b> Show(int <b translate="no">entityId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">entityId</strong> - iD entity (tblNode.intNodeId nebo tHdTicket.iHdTicketId), pro kterou se má příkaz zobrazit.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), kterému má být příkaz zobrazen.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty: instance třídy <strong>EntityCommandShowResult</strong> s vlastnostmi:<ul>
            <li><strong translate="no">Name</strong> (řetězec) - zobrazený název příkazu</li>
            <li><strong translate="no">Show</strong> (bool) - true = příkaz bude zobrazen, false = příkaz nebude zobrazen.</li>
            <li><strong translate="no">Position</strong> (int) - pozice v uživatelském rozhraní, na které bude příkaz zobrazen:<ul>
                <li>1 = první pozice hlavní nabídky entity</li>
                <li>2 = poslední pozice hlavní nabídky subjektu</li>
                <li>3 = první pozice vnořené nabídky v hlavní nabídce entity</li>
                <li>4 = poslední pozice vnořené nabídky v hlavní nabídce subjektu</li>
            </ul>
            </li>
            <li><strong translate="no">Icon</strong> (řetězec) - název ikony příkazu; viz <a href="https://developer.microsoft.com/en-us/fabric#/styles/web/icons">Ikony Fluent UI</a> - <em>Dostupné ikony</em> v dolní části stránky - pro zobrazení názvů ikon najeďte na ikony myší. Pokud nezadáte žádnou ikonu, bude použita ikona <em>LightningBolt</em>.</li>
        </ul>
        </li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Zavoláním této metody v metodě <em>Spustit</em> můžete zkontrolovat, zda se podmínky pro zobrazení příkazu nezměnily v době mezi zobrazením příkazu a jeho spuštěním    </div>

   <h2 id="Run" translate="no">Run</h2>
    <p>
        Tato metoda implementuje samotný příkaz    </p>

    <ul>
        <li>Syntaxe: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>, <b translate="no">string</b>&gt; Run(SqlConnection <b translate="no">con</b>, int <b translate="no">ticketId</b>, int <b translate="no">personId</b>)</li>
        <li>Parametry         <ul>
                <li><strong translate="no">entityId</strong> - iD entity (tblNode.intNodeId nebo tHdTicket.iHdTicketId), pro kterou byl příkaz spuštěn.</li>
                <li><strong translate="no">personId</strong> - iD uživatele (tPerson.iPersonId), který příkaz spustil.</li>
            </ul>
        </li>
        <li>Vrácené hodnoty: instance třídy <strong translate="no">CommandResult</strong> obsahující roperties         <ul>
                <li><strong translate="no">MessageType</strong> (MessageType) - určuje, zda se má uživateli zobrazit zpráva jako výsledek provedení příkazu:<ul>
                    <li><em translate="no">None</em> - nezobrazí se žádná zpráva</li>
                    <li><em translate="no">Info</em> - zobrazí se informační zpráva</li>
                    <li><em translate="no">Warning</em> - zobrazí se varovná zpráva</li>
                    <li><em translate="no">Error</em> - zobrazí se chybová zpráva</li>
                </ul>
                </li>
                <li><strong translate="no">MessageText</strong> (string) - zadejte text zprávy, která se zobrazí uživateli.</li>
                <li><strong translate="no">NavigateToUrl</strong> (string) - volitelně zadejte adresu URL, na kterou se bude přecházet po provedení příkazu.</li>
            </ul>
        </li>
    </ul>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud má vlastní příkaz otevřít jinou stránku aplikace ALVAO WebApp, použijte vlastnost <span class="console" translate="no">Alvao.API.Common.DbProperty.WebAppUrl</span> z adresy <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a> pro získání kořenové adresy URL aplikace WebApp.</div>

</asp:Content>
