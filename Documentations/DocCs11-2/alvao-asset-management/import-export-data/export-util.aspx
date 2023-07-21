<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ExportUtil</h1>

    <h2>Popis funkce</h2>

    <p>
        Aplikace slouží k exportu objektů ze systému ALVAO Asset Management do standardního souboru CSV. Exportuje pouze majetek aktivní evidence, tj. s vyloučením &quot;vyřazeného majetku&quot;, &quot;koše&quot; a dalších objektů systému    </p>
    <h2>Syntaxe příkazových řádků</h2>

    <p>
       <strong>ExportUtil</strong> <strong>/csv</strong> <em>&quot;cesta a název souboru CSV&quot;</em> <strong>{/con</strong> <em>&quot;řetězec připojení</em>&quot; | <strong>/server</strong> <em>&quot;název databázového serveru&quot;</em> <strong>/db</strong> <em>&quot;název databáze&quot;</em>} <strong>/cols</strong>&quot;seznam sloupců&quot;<strong>[/NotEmpty</strong>&quot;název sloupce&quot;] [<strong>/TemplateFolder</strong> &quot;název složky&quot;]<strong>[/where</strong> {[@třída] | [@název] | [@cesta] | [&lt;název vlastnosti objektu&gt;]}&lt;operátor&gt;&lt;hodnota&gt;]    </p>

    <h2>Podrobný popis parametrů</h2>

    <table>
        <thead>
            <tr>
                <th><strong>Parametr</strong></th>
                <th><strong>Popis</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>/csv</strong></td>
                <td>Cesta a název souboru CSV, do kterého budou uloženy informace o objektu.</td>
            </tr>
            <tr>
                <td><strong>/con<br />/server<br />/db</strong></td>
                <td>Tyto parametry slouží k nastavení připojení k databázi Alvao. Je možné použít řetězec připojení (např. <strong>/con</strong> <em>&quot;Zdroj dat=.\sqlexpress;Počáteční katalog=test;Integrované zabezpečení = True;TrustServerCertificate=True&quot;)</em> nebo jednoduše zadat konkrétní SQL server a DB (např. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test</em>&quot;).<br />
                    V případě, že použijete parametry <strong>/server</strong> a <strong>/db</strong>, připojení k databázi se provede pomocí integrovaného ověřování systému Windows. Pokud zadáte všechny tyto parametry, použije se pouze parametr <strong>/con</strong>, <strong>/server</strong> a <strong>/db</strong>budou ignorovány. </td>
            </tr>
            <tr>
                <td><strong>/cols</strong></td>
                <td>Definice sloupců, které budou exportovány do výstupního souboru. Viz níže.</td>
            </tr>
            <tr>
                <td><strong>/NotEmpty</strong></td>
                <td>Tento parametr je určen pro zpětnou kompatibilitu a v budoucích verzích bude odstraněn. Doporučujeme místo něj používat parametr <strong>/where</strong>. Ten exportuje pouze objekty, u nichž hodnota konkrétní vlastnosti objektu není prázdná.<br />
                    Poznámka: Název vlastnosti může být zapsán bez diakritiky.</td>
            </tr>
            <tr>
                <td><strong>/TemplateFolder</strong></td>
                <td>Tento parametr slouží ke zpětné kompatibilitě a v budoucích verzích bude odstraněn. Doporučujeme místo něj používat parametr <strong>/where</strong>. Ten exportuje pouze určité typy objektů ležících v šablonách objektů v určité složce. Parametrem je název složky.<br />
                    Poznámka: Název složky může být zapsán bez diakritiky.</td>
            </tr>
            <tr>
                <td><strong>/where</strong></td>
                <td>Slouží k filtrování exportovaných objektů podle typu, názvu, cesty ve stromu a hodnot vlastností. Za přepínačem následuje logický výraz filtru v uvozovkách. Budou exportovány všechny objekty, pro které je výraz splněn.<br />
                    Ve výrazu můžete použít následující proměnné: <ul>. <li>[@class] - druh objektu</li> <li>[@name] - název objektu ve stromu</li> <li>[@path] - cesta ve stromu, znak "/" se používá jako oddělovač úrovní</li>. <li>[&lt;název vlastnosti objektu&gt;] - hodnota určité vlastnosti objektu, například [Sériové číslo].<br />Poznámka: názvy vlastností lze zadat bez diakritiky.</li> </ul>Konstanty <ul> <li></li> </ul>        <ul>
                            <li>N'&lt;textová konstanta&gt;' - text v unicode, například N'Petr Novák'.</li>
                            <li>'&lt;textová konstanta&gt;' - text v ASCII (bez diakritiky), například 'Sériové číslo'.</li>
                            <li>&lt;číselná konstanta&gt; - např. 12.</li>
                        </ul>

                    Operátory          <ul>
                            <li>= [@class]=N'Computer/server' - rovná se, např</li>
                            <li>!=, &lt;&gt; - nerovná se, např. [@class]&lt;&gt;N'Computer/server'</li>
                            <li>IN - hodnota se rovná jedné ze zadaných hodnot, např. [@class]IN (N'Computer/server', N'Computer/virtual')</li>
                            <li>LIKE - porovnávání řetězců s možností použití jednoduchých regulárních výrazů. Např. druh objektu začínající na 'Computer/': [@class] LIKE N'Computer/%')</li>
                            <li>NOT - negace operátorů IN nebo LIKE, např. [@class] NOT LIKE N'Computer/%')</li>
                            <li>IS NULL - hodnota je NULL - např. objekt nemá vlastnost Sériové číslo: [Sériové číslo] IS NULL.</li>
                        </ul>
                    Části výrazu můžete spojovat pomocí operátorů AND a OR.<br />

                    <br />
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Formát výrazu odpovídá výrazu WHERE v jazyce SQL   </div>
                </td>
            </tr>
        </tbody>
    </table>

    <h2>Popis podporovaných sloupců</h2>
    <p>
        Sloupce nastavené v parametru <strong>/cols</strong> jsou odděleny čárkou. Doporučujeme uzavřít celou hodnotu parametru do uvozovek. 
    </p>

    <table>
        <thead>
            <tr>
                <th><strong>Sloupce</strong></th>
                <th><strong>Důležitost</strong></th>
                <th><strong>Příklad hodnoty</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>@id</strong></td>
                <td>Jedinečný identifikátor (číslo INT) objektu v databázi Asset Management (NodeId).</td>
                <td>1245</td>
            </tr>
            <tr>
                <td><strong>@name</strong></td>
                <td>Název objektu ve stromu objektů.</td>
                <td>HP LP2475w, LCD, 24&quot;</td>
            </tr>
            <tr>
                <td><strong>@class</strong></td>
                <td>Druh objektu.</td>
                <td>Monitor</td>
            </tr>
            <tr>
                <td><strong>@path</strong></td>
                <td>Cesta k objektu ve stromu objektů.</td>
                <td>Organizace/Brno/Petr Novák</td>
            </tr>
            <tr>
                <td><strong>@adguid</strong></td>
                <td>Identifikátor GUID objektu z Active Directory (obsahuje hodnotu, pokud byl objekt vytvořen nebo spárován pomocí importu AD).</td>
                <td>{f50c0d0f-fede-4aaa-9509-7632e48251cc}</td>
            </tr>
            <tr>
                <td style="width: 12%"><strong>[vlastnost objektu]</strong></td>
                <td>Jakákoli vlastnost objektu. Vlastnosti musí být zapsány v hranatých závorkách.<br />
                    Poznámka: Název vlastnosti může být s diakritikou nebo bez ní.</td>
                <td>SN1234</td>
            </tr>
        </tbody>
    </table>

    <p>
        Příklad hodnoty parametru: &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in network]&quot;    </p>
    <h2>Scénáře</h2>

    <h3>Exportovat objekty, které mají hodnotu ve vlastnosti &quot;Inventární číslo&quot;.</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in siti]&quot; /where &quot;[inventory number]!=''&quot;</pre>

    <h3>Exportovat všechny objekty, jejichž šablona objektu se nachází ve složce &quot;IT assets&quot; v šablonách objektů</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in siti]&quot; /where &quot;[@class] IN (SELECT txtClass FROM vNodeClass WHERE txtPath LIKE N'Object Templates/Inventory IT%')&quot;</pre>

    <h3>Exportovat všechny mobilní telefony</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[inventory number],[name in network]&quot; /where &quot;[@class]=N'Mobile phone'&quot;</pre>

    <h3>Exportovat všechny mobilní telefony iPhone 7</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in network]&quot; /where &quot;[@class]=N'Mobile phone' AND [Model]=N'iPhone 7'&quot;</pre>

    <h3>Export všech mobilních telefonů v pobočce Brno</h3>
    <pre translate="no" style="white-space: pre-wrap;">ExportUtil.exe /csv &quot;c:\data\objects.csv&quot; /server server\sql2005 /db alvao /cols &quot;@id,@name,@path,@class,[serial number],[inventory number],[name in network]&quot; /where &quot;[@class]=N'Mobile phone' AND [@path] LIKE N'Organization/Brno/%'&quot;</pre>
</asp:Content>
