<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Filtr</h1>
    <p>Pomocí filtru můžete v tabulce zobrazit pouze řádky, které splňují určité kritérium. Příkazy pro práci s filtrem najdete v místní nabídce tabulky a také v místní nabídce záhlaví.</p>
    <h2>Aplikace na ploše</h2>
    <p>
        V desktopové aplikaci AM Console se filtr ovládá jiným způsobem než ve webovém prohlížeči (ALVAO WebApp). Je-li filtr povolen, zobrazí se parametry filtru v řádku pod záhlavím tabulky    </p>

   <img src="filtering.png" alt="Filter in table" />
    <p>Filtr se zapíná a vypíná příkazem <strong>Filtr</strong> v místní nabídce v záhlaví tabulky.</p>

    <h3 id="filter-by-selection">Filtrování podle výběru</h3>
    <p>
        Tento příkaz je užitečný v případě, že tabulka obsahuje příliš mnoho řádků a nás zajímá jen několik z nich. V takovém případě můžeme kliknout pravým tlačítkem myši na konkrétní buňku a z nabídky vybrat příkaz <strong>Filtrovat výběrem</strong>. Tím se v tabulce zapne filtr, který zobrazí pouze řádky s vybranou hodnotou.  Pokud chcete filtrovat podle více hodnot, vyberte v tabulce nejprve řádky s těmito hodnotami a poté v daném sloupci použijte <em>filtr podle výběru</em>   </p>
    <p>
        Například na kartě <strong>Detekce</strong> v <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a> lze zobrazit dlouhý seznam různých detekcí.  Pokud nás zajímají pouze softwarové detekce, tj. řádky, které mají ve sloupci <em>Species (Druh)</em> hodnotu &quot;software&quot;, stačí v tabulce najít jeden řádek se softwarovou detekcí, kliknout pravým tlačítkem myši na hodnotu ve sloupci <em>Species (Druh)</em> a z nabídky vybrat <em>Filter by Selection (Filtrovat výběrem)</em>. Tím se v tabulce zapne filtr, který propustí pouze řádky s vybranou hodnotou ve sloupci <em>Species (Druh)</em>   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Příkaz <em>Filtrovat výběrem</em> lze umístit pouze do podnabídky <em>Tabulka</em>   </div>

    <h3>Filtrovat mimo výběr</h3>
    <p>
        Tento příkaz se používá podobně jako příkaz <a href="#filter-by-selection">Filtrovat podle výběru</a>. Rozdíl spočívá v tom, že řádky, které mají ve sloupci vybranou hodnotu, jsou odfiltrovány a všechny ostatní projdou.  Tento příkaz lze také použít pro více vybraných řádků tabulky najednou    </p>

    <h2>Rozšířený filtr</h2>

    <p>
        Pokud je filtr povolen, můžete jeho nastavení ručně změnit v řádku pod záhlavím. Zadáte-li do sloupce text, zobrazí se v tabulce pouze řádky, jejichž hodnota v tomto sloupci obsahuje zadaný text. Při porovnávání hodnot se diakritika ignoruje.<br />
        Hvězdička představuje libovolný počet libovolných znaků, takže pokud zadáte například &quot;ar&quot;, filtrem projdou pouze hodnoty, které obsahují podřetězec &quot;ar&quot;. Zadání &quot;*ar*&quot; by mělo stejný výsledek, protože hvězdička se na začátek a konec přidává automaticky.<br />
        Další možností je zadat do filtru logický výraz, např    </p>
    <p><span class="console">&quot;*ar*&quot; nebo &quot;*unk*&quot;.</span></p>

    Hledané části textu musí být uzavřeny v uvozovkách. Ve výrazu lze použít následující logické operátory:<br />
    <ul>
        <li>a</li>
        <li>nebo</li>
        <li>not</li>
    </ul>

    Klíčová slova uvedená v následující tabulce lze použít pouze ve sloupcových filtrech s hodnotami Ano/Ne (logické):<br />
    <table>
        <thead>
            <tr>
                <th>Klíčové slovo</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="style1">ano / ano</td>
            </tr>
            <tr>
                <td class="style1">ne / ne</td>
            </tr>
        </tbody>
    </table>

    <p>
        Pro sloupce typu text, číslo a datum a čas je možné použít matematické operátory <em>em&gt; &quot;&gt;&quot;</em> (větší), <em>&quot;&lt;&quot;</em> (menší), &quot;&gt;=&quot; (větší nebo rovno), &quot;&lt;=&quot; (menší nebo rovno), <em>&quot;!,Not,&lt;&gt;,!=&quot;</em> (negace, ne, nerovná se), <em>&quot;=,==&quot;</em> (rovná se). Při porovnávání textů se předpokládá jejich alfanumerické pořadí    </p>

    <h2 id="datetime-filters">Filtr nad sloupci typu &quot;datum a čas&quot;</h2>
    <p>Pokud je sloupec typu &quot;datum a čas&quot;, jsou podporovány následující možnosti zápisu filtru:</p>
    <ul>
        <li><strong>@now</strong> - zobrazí záznamy od dnešního data a aktuálního času s přesností na hodiny.</li>
        <li><strong>@today</strong> - zobrazí záznamy pouze z dnešního dne.</li>
        <li>*<strong>.M.RRRR</strong> - zobrazí data z měsíce M a roku RRRR</li>
        <li>*<strong>.*.YYYY</strong> - zobrazí data z roku YYYY</li>
        <li><strong>D.M.YYYY</strong> - zobrazí data z konkrétního dne D.M.YYYY</li>
        <li><strong>D.M.RRRR H</strong> - zobrazí data z konkrétního dne D.M.RRRR a hodiny H</li>
        <li><strong>D.M.RRRR H:M</strong> - zobrazuje data z konkrétního dne D.M.RRRR a hodiny H a minuty M</li>
        <li><strong>operátory: <table> <thead> <tr> <th>Operátor</th> <th>Popis</th> <th>Příklad použití</th> </tr> </thead> </table>&lt;, <table> <tbody> <tr> <td>&gt;, &lt;=, &gt;=</td> <td>menší, větší, menší nebo rovno, větší nebo rovno</td> <td>&gt;15.4.2013</td> </tr> <tr> <td>=, ==</td> <td>rovná se</td> <td>=15.4.2013</td> </tr> <tr> <td>!=, &lt;&gt;</td> <td>nerovná se</td> <td>&lt;&gt;15.4.2013</td> </tr> <tr> <td>Ne, !</td> <td>nerovná se (stejný význam jako nerovná</td> </tr> </tbody> </table>se) <table> <tbody> <tr> <td>Ne 15</td> </tr> </tbody> </table> </strong><strong> <table> <tbody> <tr> <td>.</td> <td>4.2013</td> </tr> </tbody> </table>      </strong></li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        <ul>
            <li><strong>M/D/YYYYY</strong></strong>a <strong>YYYY-M-D</strong>, za oddělovačem data může být mezera, číslice dne a měsíce mohou být zapsány jako jednociferné nebo dvojciferné, rok musí být zapsán jako čtyřciferné číslo.</li>
            <li>Pokud je použit operátor <strong>AND</strong> nebo <strong>OR</strong>, musí být uveden také některý matematický porovnávací operátor (např. =).</li>
            <li>K proměnné <strong>@now</strong> lze přičíst/odečíst celé číslo představující počet <strong>hodin</strong>. Výsledná doba se počítá bez ohledu na provozní dobu, víkendy a svátky. Např. @now+10 znamená: za 10 hodin.</li>
            <li>K proměnné <strong>@today</strong> lze přičíst/odečíst celé číslo představující počet <strong>dní</strong>. Výsledné datum se vypočítá na základě kalendáře bez ohledu na servisní hodiny, víkendy a svátky. Např. @today-1 znamená: včera.</li>
        </ul>
    </div>
    <h3>Příklady</h3>
    <ol>
        <li>Dnešní data:<br />
           <span class="console">@today</span></li>
        <li>Data za posledních 30 dní:<br />
           <span class="console">&gt;= (@today - 30)</span></li>
        <li>Data za následující den:<br />
           <span class="console">= (@today + 1)</span></li>
        <li>Údaje za následující 3 dny:<br />
           <span class="console">(&gt; @today) AND (&lt;= (@today + 3))</span></li>
        <li>Data za následujících 5 hodin od teď::<br />
           <span class="console">(&gt; @now) AND (&lt;= (@now + 5))</span></li>
        <li>Údaje k 14. 4. 2017:<br />
           <span class="console">14.4.2017</span></li>
        <li>Data k 15:00 dne 24.10.2017:<br />
           <span class="console">15.10.24.2017</span></li>
        <li>Údaje za měsíc březen 2017:<br />
           <span class="console">* 3. března 2017</span></li>
        <li>Údaje za rok 2016: březen 2017: 3:<br />
           <span class="console">*.*.2016</span></li>
        <li>Údaje za leden až květen 2018: *.2018:<br />
           <span class="console">&gt;=2018 a &lt;1.6.2018</span></li>
        <li>Data from October 5 and 6, 2017:<br />
           <span class="console">=2017 nebo =6.10.2017</span></li>

    </ol>

    <h2>Proměnná @me</h2>
    <p>Proměnná @me představuje jméno aktuálně přihlášeného uživatele. Můžete ji použít k vyfiltrování záznamů týkajících se aktuálně přihlášeného uživatele.</p>
    Tato proměnná je k dispozici v servisním středisku ALVAO:<ul>
        <li>Požadavky - ve sloupcích Žadatel a Řešitel</li>
        <li>Deník - ve sloupcích Od, Do, Vytvořil, Řešitel, Žadatel</li>
        <li>Tabulka Deník požadavků (vlevo dole) - ve sloupcích Od, Do, Vytvořil</li>
    </ul>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 { text-align: center; } </style>

</asp:Content>

