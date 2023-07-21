<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Dotazy</h1>

    <p>Dotazy slouží k pokročilému vyhledávání dat ve stromových a instalačních záznamech a k vytváření tabulkových sestav.</p>
    <p>Dotazy se zapisují textově v jazyce, který je podobný dotazovacímu jazyku SQL. Na rozdíl od jazyka SQL však obsahuje nástroje pro vyhledávání ve stromové struktuře objektů.</p>
    <p>Práci s dotazy si ukážeme na příkladu dotazu na vyhledání všech počítačů ve stromu.</p>
    <ol>
        <li>V hlavní nabídce zvolte možnost <strong>Dotaz - Nový</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-1">Průvodce vytvořením dotazu - krok 1</a>, ve kterém musíme vybrat objekt pro správu dotazů. V našem jednoduchém příkladu je řídicím objektem jednoduše objekt, který hledáme, tedy počítač. Rozbalte tedy objekt sestavy počítač a vyberte v něm objekt počítač. Poté pokračujte tlačítkem <strong>Další</strong>.</li>
        <li>Tím se dostaneme na druhou stranu průvodce, tj. na <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-2">Průvodce dotazem - krok 2</a>. Zde vybereme údaje, které se zobrazí ve výsledku dotazu o každém nalezeném objektu. V seznamu vpravo vybereme vlastnosti, jako je Název počítače a Datum nákupu.</li>
        <li>Tlačítko <strong>Další</strong> otevře stránku <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-3">Průvodce vytvořením dotazu - krok 3</a>. Zde můžeme změnit nadpisy a šířky sloupců ve výstupní sestavě a přidat podmínky vyhledávání. V našem případě nemusíme nic měnit a stačí pokračovat tlačítkem <strong>Další</strong>.</li>
        <li>Na stránce <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-4">Průvodce vytvořením dotazu - krok 4</a> můžete upravit řazení a seskupení položek ve výsledku dotazu. Opět můžeme pokračovat tlačítkem <strong>Další</strong>.</li>
        <li>Na stránce <a href="../../list-of-windows/alvao-asset-management-console/query/query-wizard-5">Průvodce vytvořením dotazu - Krok 5</a> zadáme název tiskové sestavy a stiskneme tlačítko <strong>Náhled</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/file/query-parameters">Parametry dotazu</a>, kde můžete dále omezit rozsah vyhledávacího stromu.</li>
        <li>Poté stiskněte tlačítko <strong>OK</strong> a na obrazovce se otevře tisková sestava s výsledkem dotazu v poli <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview/table/html-document">Tisková sestava</a>.</li>
        <li>Okno tiskové sestavy zavřete. Tím se vrátíte do průvodce, kde stiskněte tlačítko <strong>Dokončit</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/query/query">Hledat - dotaz</a>, kde se zobrazí textové zadání právě vytvořeného dotazu. Pomocí tlačítka <strong>Uložit</strong> jej můžete uložit do souboru, odkud jej později načtete pomocí tlačítka <strong>Načíst</strong>.</li>
        <li>Stiskněte tlačítko <strong>Vyhodnotit</strong>.</li>
        <li>V okně se znovu objeví <a href="../../list-of-windows/alvao-asset-management-console/file/query-parameters">parametry dotazu</a> jako v náhledovém zobrazení. Po potvrzení dotazu se dotaz vyhodnotí a výsledek se zobrazí v okně <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">Query results (Výsledky dotazu)</a>, ve kterém si můžete pomocí tlačítka <strong>Print Report (Tisková sestava)</strong>zobrazit tiskovou sestavu nebo pomocí tlačítka <strong>Export (Exportovat)</strong> uložit výsledek do textového souboru, který lze dále zpracovat např. v programu Microsoft Excel.</li>
    </ol>

    <h2>Syntaxe dotazovacího jazyka</h2>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Query</span></em>
[<span>PARAMETERS <a href="#query-parameter"><span class="console">Parameter</span></a> [<span>, <a href="#query-parameter"><span class="console">Parameter</span></a></span>]...</span>]

SELECT [<span><a href="#query-type"><em><span class="console">Query_Type</span></em></a></span></span>] [AS [<span><a href="#query-title"><span class="console">Title</span></a>=</span></a>] <a href="#query-id"><span class="console">Dotaz_Id</span></a>]
[<span><a href="#query-modifiers">DOWN | UP | DEEP | SHALLOW | NEAREST | ALL</a></span>]
[<span><a href="#query-column-title"><span class="console">Column_Title</span></a> [<span>, <a href="#query-column-width"><span class="console">Column_Width</span></a> %</span>]=</span>][<span><a href="#query-id"><span class="console">Query_Id</span></a>.</span>] <a href="#query-properties"><span class="console">Property</span></a> [<span><a href="#query-column-operators">
 <span class="console">Column_Operators</span></a></span>]
[<span>, [<span><a href="#query-column-title"><span class="console">Column_Title</span></a> [<span>, <a href="#query-column-width">
 <span class="console">Column_Operators</span></a></span>] ...</span>]

[<span>WHERE
[<span>NOT</span>] <a href="#query-filter"><span class="console">Filter</span></a> [<span>AND | OR [<span>NOT</span>] <a href="#query-filter"><span class="console">Filter</span></a> ...</span>]</span>]

[<span>WITH
<em><span class="console">Question</span></em>[<span><span class="console">Question</span></em> ...</span>]
[<span>HAVING [<span>NOT</span></span> <a href="#query-id">Query_Id</span></a> ...</span>]</span>]
ENDWITH</span>]

[<span>GROUP BY 
[<span><a href="#query-id">Property</span></a></span>]

[<span>ORDER BY 
[<span><a href="#query-id">Property</span></a> [ASC | DESC] 
[, [<span><a href="#query-id">Property</span></a> [<span>ASC | DESC</span>] ...</span>]</span>]
</pre>
    </div>
    <table class="wide">
        <thead>
            <tr>
                <th>Symbol</th>
                <th>Význam</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>|</td>
                <td>nebo</td>
            </tr>
            <tr>
                <td>[ ]</td>
                <td>volitelný</td>
            </tr>
            <tr>
                <td>...</td>
                <td>repeat</td>
            </tr>
        </tbody>
    </table>

    <h3 id="query-parameter">Parametr</h3>

    <p>Parametr dotazu je datová hodnota, kterou uživatel zadává v okamžiku vyhodnocení dotazu.</p>
    <div class="wide">
        <pre translate="no">
<em ><span class="console">Parameter</span></em>= <em><span class="console">Parameter_Name</span></em> <em><span class="console">Parameter_Type</span></em>
</pre>
    </div>
    <p>kde:</p>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Parameter_Name</span></em>
</pre>
    </div>
    <p>Identifikuje parametr. Názvy jednotlivých parametrů musí být jedinečné a nesmí se shodovat s identifikátory sloupců. Pokud je název parametru složen z více slov, musí být uzavřen do hranatých závorek.</p>

    <div class="wide">
        <pre translate="no">
<em><span class="console">Parameter_Type</span></em>
</pre>
    </div>

    <table class="wide">
        <thead>
            <tr>
                <th>Parameter_Type</th>
                <th>type</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>T_TEXT</td>
                <td>text</td>
            </tr>
            <tr>
                <td>T_DOUBLE</td>
                <td>reálné číslo</td>
            </tr>
            <tr>
                <td>T_DATETIME</td>
                <td>datum, čas</td>
            </tr>
        </tbody>
    </table>

    <p><strong>Příklad 1. Jazyk dotazu - parametr</strong></p>
    <p>
        Chceme vypsat seznam zásahů na počítačích v zadaném časovém intervalu. Program se před vyhodnocením dotazu dotáže na hodnoty parametrů <em>From data</em>. a <em>To data</em>   </p>

    <div class="wide">
        <pre translate="no"><em>PARAMETERS [From date] T_DATETIME, [To date] T_DATETIME</em>
SELECT AS &quot;Hit Summary&quot;=S &quot;Setup&quot;=@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT HISTORY AS S1 &quot;Made by&quot;=@user,&quot;Description&quot;=@description
    WHERE @date&gt;=<em>[From date]</em> AND @date&lt;=<em>[To date]</em>
HAVING s1
ENDWITH</pre>
    </div>

    <h3 id="query-type">Typ_dotazu</h3>

    <table class="wide">
        <thead>
            <tr>
                <th>Query_Type</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>HISTORY</td>
                <td>položky historie objektu dotazu</td>
            </tr>
            <tr>
                <td>NOTES</td>
                <td>query object notes poznámky</td>
            </tr>
            <tr>
                <td>SWINST</td>
                <td>dotaz na nainstalované softwarové produkty</td>
            </tr>
        </tbody>
    </table>
    <p>Dotaz typu HISTORY, NOTICE nebo SWINST lze použít pouze jako poddotaz a nesmí obsahovat jiné poddotazy. Kromě toho má dotaz SWINST smysl pouze tehdy, je-li poddotazem dotazu, který vrací objekty typu &quot;computer&quot;.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Dotazy typu HISTORY a NOTICE nepracují se smazanými (skrytými) záznamy v deníku    </div>


    <p><strong>Příklad 2. Jazyk dotazu - typ dotazu</strong></p>
    <p>Chceme vypsat všechny anotace počítačových objektů seřazené chronologicky.</p>


    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Objects notes&quot; =S0 WHERE @class LIKE &quot;Computer*&quot; 
WITH 
    SELECT <em>NOTICE</em> AS S1 <em>@date, @user, @description</em>
ENDWITH
ORDER BY <em>S1.@date</em>
</pre>
    </div>

    <p><strong>Příklad 3. Jazyk dotazu - typ dotazu</strong></p>
    <p>Chceme vypsat všechny počítače a nainstalované operační systémy. Zároveň požadujeme, aby byl výsledek seskupen podle nainstalovaných operačních systémů.</p>

    <div class="wide">
        <pre translate="no">SELECT AS &quot;List of installed operating systems&quot;=S
 &quot;OS&quot;=<em>S1.@product</em>, &quot;Computer&quot;=@object, &quot;Inventory number&quot;=[inventory number],
 &quot;User&quot;=[user]
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT <em>SWINST</em> AS S1 
    WHERE <em>@category=SW_OS</em>
    HAVING S1
ENDWITH
GROUP BY <em>S1.@product</em>
</pre>
    </div>

    <h3 id="query-title">Název</h3>

    <p>Název výstupní sestavy.</p>
    <p><strong>Příklad 4. Jazyk dotazu - název</strong></p>
    <p>Chceme vypsat všechny počítače. Záhlaví sestavy bude obsahovat text &quot;Počítače&quot;.</p>

    <div class="wide">
        <pre translate="no">
SELECT AS <em>&quot;Computers&quot;</em>=S0 @object
WHERE @class LIKE &quot;Computer*&quot;</pre>
    </div>

    <h3 id="query-id">Query_Id</h3>

    <p>
        Identifikátor dotazu nebo poddotazu v sekci WITH. Pokud mají dva poddotazy vlastnosti se stejným názvem, můžete pro <em><span class="console">jejich odlišení</span></em> použít <em><span class="console">Query_Id.Property</span></em>, například &quot;S0.Capacity&quot;. Pokud je identifikátor dotazu složen z více slov, zapište jej do hranatých závorek    </p>
    <p><strong>Příklad 5. Jazyk dotazu - identifikátor dotazu</strong></p>
    <p>Chceme vypsat všechny počítače a zajímají nás pouze data: Název počítače, klávesnice, monitor. Vlastnosti Název od objektů Monitor a Klávesnice je třeba odlišit identifikátorem dílčího dotazu.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS S0 S0.@object, <em>S1</em>.Name, <em>S2</em>.Name
WHERE @class LIKE &quot;Computer*&quot; 
WITH 
    SELECT AS <em>S1</em> WHERE @class=&quot;Keyboard&quot;,
    SELECT AS <em>S2</em> WHERE @class=&quot;Monitor&quot;
ENDWITH </pre>
    </div>

    <h3 id="query-modifiers">DOLŮ, NAHORU, HLUBOKÝ, MĚLKÝ, NEJBLIŽŠÍ, VŠECHNY</h3>

    <p>Modifikátory určují způsob vyhledávání objektů v poddotazu v sekci WITH.</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Modifikátor</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>DOLŮ</td>
                <td>Vyhledávání směrem dolů, tj. vyhledávání v podstromu řídicího objektu (výchozí hodnota)</td>
            </tr>
            <tr>
                <td>UP</td>
                <td>prohledávání směrem nahoru, tj. prohledávají se všechny objekty na cestě ke kořeni stromu</td>
            </tr>
            <tr>
                <td>DEEP</td>
                <td>prohledání všech potomků řídicího objektu (výchozí hodnota)</td>
            </tr>
            <tr>
                <td>SHALLOW</td>
                <td>prohledává pouze v přímých potomcích řídicího objektu (nikoli v potomcích potomků)</td>
            </tr>
            <tr>
                <td>NEAREST</td>
                <td>po nalezení nejbližšího objektu ukončí prohledávání do hloubky (výchozí hodnota)</td>
            </tr>
            <tr>
                <td>ALL</td>
                <td>prohledá celý podstrom řídicího objektu</td>
            </tr>
        </tbody>
    </table>
    <p>Modifikátory NEAREST a ALL mají smysl pouze v kombinaci s modifikátorem DEEP, který zajišťuje prohledávání do hloubky.</p>
    <p><strong>Příklad 6. Jazyk dotazu - modifikátory</strong></p>
    <p>Chceme vypsat počítačové sestavy a zajímají nás pouze tyto údaje: název sestavy, paměť RAM, HDD. Dalším omezením je, že nás zajímá pouze paměť RAM umístěná na základní desce. Jako řídicí objekt zadáme objekt PC.</p>
    <ul>
        <li>Sestava 1 <ul>
     <li>PC  <ul>
             <li>RAM</li>
             <li>HDD</li>
         </ul>
     </li>
 </ul>
        </li>
    </ul>
    <ul>
        <li>Sada 2 <ul>
     <li>PC  <ul>
             <li>RAM</li>
             <li>zvuková karta<ul>
                 <li>RAM</li>
             </ul>
             </li>
             <li>HDD</li>
         </ul>
     </li>
 </ul>
        </li>
    </ul>
    <p>Z příkladu dvou počítačových sestav je patrné, že v počítači 2 je paměť umístěna na zvukové kartě. Aby se zabránilo výpisu této paměti, použije se v dotazu S2 modifikátor SHALOW, který zajistí, že se bude prohledávat pouze úroveň objektu PC.</p>
    <p>Modifikátor UP použitý v dotazu S1 zajišťuje, že bude vyhledán objekt Assembly, který se nachází nad objektem PC (počítač).</p>
    <div class="wide">
        <pre translate="no">
SELECT AS S0 S1.@object, S2.@object, S3.@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS S1 <em>UP</em> WHERE @class=&quot;Assembly&quot;,
    SELECT AS S2 <em>DOWN SHALLOW</em> WHERE @class=&quot;memory RAM&quot;,
    SELECT AS S3 <em>DOWN SHALL</em> WHERE @class=&quot;Hard disk&quot;
ENDWITH</pre>
    </div>

    <h3 id="query-column-title">Column_Title</h3>

    <p>Nastavuje záhlaví sloupce ve výstupní sestavě.</p>
    <p><strong>Příklad 7. Jazyk dotazu - záhlaví sloupce</strong></p>
    <p>Chceme vypsat seznam počítačů a zajímají nás data: Počítač, Pevný disk, Paměť RAM, Procesor. Sloupce ve výstupní sestavě budou mít nadpisy Počítač, Pevný disk, Paměť RAM, Procesor.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS S0 &quot;Computer&quot;=S0.@object, <em>&quot;HDD&quot;</em>=S1.@object, 
<em>&quot;RAM&quot;</em>=S2.@object, <em>&quot;CPU&quot;</em>=S3.@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS S1 WHERE @class=&quot;Hard Disk&quot;,
    SELECT AS S2 WHERE @class=&quot;RAM&quot;,
    SELECT AS S3 WHERE @class=&quot;Processor&quot;
ENDWITH</pre>
    </div>
    <p>Pokud byste nezadali žádné nadpisy sloupců, měly by sloupce názvy: S1.Name, S2.Name, S3.Name.</p>

    <h3 id="query-column-width">Column_Width</h3>

    <p>Určuje šířku sloupce ve výstupní sestavě. Šířka se udává jako procento šířky celé sestavy.</p>
    <p><strong>Příklad 8. Jazyk dotazu - šířka sloupce</strong></p>
    <p>Chceme vypsat seznam počítačů a zajímají nás data: Název sestavy, Uživatel, Podlaží.</p>
    <p>Dále požadujeme, aby sloupec Název sestavy byl pojmenován Počítač a byl 40 % šířky tiskové stránky a sloupec Podlaha 20 % šířky stránky.</p>
    <div class="wide">
        <pre translate="no">
SELECT &quot;Computer&quot;,<em>40%</em>=@object, User, <em>20%</em>=Floor
WHERE @class LIKE &quot;Computer*&quot;</pre>
    </div>

    <h3 id="query-properties">Vlastnost</h3>

    <p>Název vlastnosti. Pořadí sloupců v dotazu odpovídá jejich pořadí ve výstupní sestavě. Pokud je název vlastnosti složen z více slov, musí být zapsán v hranatých závorkách.</p>
    <p>Jako <em><span class="console">vlastnost</span></em> můžete použít také následující speciální hodnoty:</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Vlastnost</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>@authorized</td>
                <td>instalace softwaru v počítači je potvrzena nebo počítač je licencován</td>
            </tr>
            <tr>
                <td>@category</td>
                <td>kategorie softwarového produktu (např. operační systém)</td>
            </tr>
            <tr>
                <td>@cdkey</td>
                <td>Klíč CD softwarového produktu</td>
            </tr>
            <tr>
                <td>@class</td>
                <td>typ objektu</td>
            </tr>
            <tr>
                <td>@date</td>
                <td>datum záznamu historie, poznámky k objektu nebo instalace sw produktu</td>
            </tr>
            <tr>
                <td>@description</td>
                <td>
                    <table>
                        <thead>
                            <tr>
                                <th>Typ dotazu<a href="#query-type">(Query_Type</a>)</th>
                                <th>Význam vlastnosti @description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>HISTORY</td>
                                <td>popis záznamu historie</td>
                            </tr>
                            <tr>
                                <td>NOTES</td>
                                <td>text poznámky</td>
                            </tr>
                            <tr>
                                <td>SWINST</td>
                                <td>poznámka k záznamu o historii instalace</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td>@detproductname</td>
                <td>zjištěný název softwarového produktu, např. název operačního systému včetně verze servisního balíčku</td>
            </tr>
            <tr>
                <td>@detproductver</td>
                <td>zjištěná verze softwarového produktu (podrobná hodnota verze produktu, např. 5.23)</td>
            </tr>
            <tr>
                <td>@detlastdate</td>
                <td>datum poslední detekce softwaru počítače</td>
            </tr>
            <tr>
                <td>@flags</td>
                <td>typy záznamů historie objektů (Pro dotazování na typy záznamů historie objektů použijte speciální konstanty, viz <a href="#query-constant">Konstanty</a>.)</td>
            </tr>
            <tr>
                <td>@invnumber</td>
                <td>inventární číslo přidělené licence</td>
            </tr>
            <tr>
                <td>@invoice</td>
                <td>označení dokladu o nákupu přidělené licence (viz <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview">Přehled licencí a instalací</a>, sloupec dokladů)</td>
            </tr>
            <tr>
                <td>@language</td>
                <td>jazyková verze softwarového produktu</td>
            </tr>
            <tr>
                <td>@licname</td>
                <td>přesný název licence softwarového produktu</td>
            </tr>
            <tr>
                <td>@nodeid</td>
                <td>jedinečný identifikátor (číslo) objektu ve stromu. Vhodné pro řazení - vyhledání posledních nových objektů v inventáři.</td>
            </tr>
            <tr>
                <td>@notice</td>
                <td>poznámky k objektu</td>
            </tr>
            <tr>
                <td>@object</td>
                <td>název objektu</td>
            </tr>
            <tr>
                <td>@objectpath</td>
                <td>cesta k objektu ve stromu</td>
            </tr>
            <tr>
                <td>@producer</td>
                <td>výrobce softwarového produktu</td>
            </tr>
            <tr>
                <td>@producer</td>
                <td>název softwarového produktu</td>
            </tr>
            <tr>
                <td>@property</td>
                <td>jakákoli vlastnost objektu</td>
            </tr>
            <tr>
                <td>@serialnumber</td>
                <td>sériové číslo softwarové licence</td>
            </tr>
            <tr>
                <td>@subject</td>
                <td>název poznámky</td>
            </tr>
            <tr>
                <td>@swfrompack</td>
                <td>software je ze softwarového balíku</td>
            </tr>
            <tr>
                <td>@type</td>
                <td>typ softwarového produktu (např. vyžadující licenci, zkušební verzi, ...)</td>
            </tr>
            <tr>
                <td>@user</td>
                <td>autor poznámky, záznamu historie objektu nebo instalace sw produktu</td>
            </tr>
        </tbody>
    </table>
    <p>Speciální hodnoty lze použít pouze v dotazech typu HISTORY, NOTICE nebo SWINST.</p>

    <h3 id="query-column-operators">Column_Operators</h3>

    <p>Zadejte jeden nebo více operátorů. Jednotlivé operátory se oddělují pouze mezerou.</p>
    <table class="wide">
        <thead>
            <tr>
                <th>Operátor</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SUM</td>
                <td>součet hodnot</td>
            </tr>
            <tr>
                <td>COUNT</td>
                <td>počet položek</td>
            </tr>
            <tr>
                <td>AVG</td>
                <td>průměrná hodnota</td>
            </tr>
            <tr>
                <td>MIN</td>
                <td>minimální hodnota</td>
            </tr>
            <tr>
                <td>MAX</td>
                <td>maximální hodnota</td>
            </tr>
        </tbody>
    </table>

    <p><strong>Příklad 9. Dotazovací jazyk - operátory sloupců</strong></p>
    <p>Zjistěte průměrnou kapacitu paměti počítačů.</p>
    <div class="wide">
        <pre translate="no">
SELECT @object, S1.Size <em>AVG</em>
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS S1 WHERE @class=&quot;RAM&quot;
ENDWITH</pre>
    </div>
    <p>Na konci tiskové sestavy bude ve sloupci Velikost uveden průměr všech hodnot.</p>

    <h3 id="query-filter">Filtr</h3>

    <p>Filtr je logický výraz určující podmínku. Podmínka se vyhodnocuje pro každý objekt. Objekt je ve výsledku dotazu vybrán, pokud je pro něj podmínka splněna.</p>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Filter</span></em>= <a href="#query-properties">Property</span></a>)
</pre>
    </div>

    <p>kde:</p>
    <div class="wide">
        <pre translate="no">
<em><span class="console">Comparison</span></em>
</pre>
    </div>
    <table class="wide">
        <thead>
            <tr>
                <th>Srovnání</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>=</td>
                <td>rovnost</td>
            </tr>
            <tr>
                <td>like</td>
                <td>výskyt podřetězce</td>
            </tr>
            <tr>
                <td>&lt;&gt;</td>
                <td>nerovnost</td>
            </tr>
            <tr>
                <td>&lt;</td>
                <td>menší</td>
            </tr>
            <tr>
                <td>&gt;</td>
                <td>větší</td>
            </tr>
            <tr>
                <td>&lt;=</td>
                <td>menší nebo stejný</td>
            </tr>
            <tr>
                <td>&gt;=</td>
                <td>větší nebo stejný</td>
            </tr>
        </tbody>
    </table>
    <p>Funkce OWN() je splněna, pokud je vlastnost vlastní vlastností objektu. Funkce INHERITED() je splněna v případě zděděných vlastností.</p>
    <div class="wide">
        <pre translate="no">INHERITED([User]) AND [User]=&quot;Veronica Palmer&quot;</pre>
    </div>
    <p><strong>Příklad 10. Dotazovací jazyk - filtr</strong></p>
    <p>Pro vyhledání všech tiskáren HP použijeme filtr, který omezí seznam tiskáren na tiskárny, jejichž název začíná dvojicí znaků &quot;HP&quot;.</p>
    <div class="wide">
        <pre translate="no">@class=&quot;Printer&quot; AND <em>Name LIKE &quot;HP*&quot;</em></pre>
    </div>
    <p><strong>Příklad 11. Jazyk dotazu - filtr</strong></p>
    <p>Vyhledání všech tiskáren s pamětí RAM menší než 64 MB.</p>
    <div class="wide">
        <pre translate="no">@class=&quot;RAM&quot; AND <em>Size&lt;64</em></pre>
    </div>

    <h3>Konstantní</h3>

    <p>Konstantou může být reálné číslo nebo textový řetězec. V textovém řetězci lze pro zadání libovolného počtu znaků použít hvězdičkový zápis "*".</p>
    <p><strong>Tabulka 1. Konstanty - typy záznamů historie</strong></p>
    <table class="wide">
        <thead>
            <tr>
                <th>Konstanta</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>H_MOVEDEST</td>
                <td>Přesunul jsem objekt &quot;x&quot;</td>
            </tr>
            <tr>
               <td>H_MOVESRC</td>odsud jsem <td>přesunul objekt &quot;x</td>&quot            </tr>
            <tr>
                <td>H_TO</td>
                <td>objekt přesunut do &quot;x&quot;</td>
            </tr>
            <tr>
               <td>H_INSERTNEW</td>vložen <td>nový objekt &quot;x</td>&quot            </tr>
            <tr>
                <td>H_TONEW</td>
                <td>objekt vytvořen v &quot;x&quot;</td>
            </tr>
            <tr>
                <td>H_SCANMMOVEDEST</td>
                <td>Přesunul jsem objekt &quot;x&quot; - pomocí skeneru</td>
            </tr>
            <tr>
                <td>H_SCANMOVESRC</td>
                <td>objekt &quot;x&quot; - přesunut odsud skenerem</td>
            </tr>
            <tr>
                <td>H_SCANTO</td>
                <td>objekt přesunut do &quot;x&quot; - skenerem</td>
            </tr>
            <tr>
                <td>H_SCANINSERTNEW</td>
                <td>nový objekt vložený do &quot;x&quot; - skenerem</td>
            </tr>
            <tr>
                <td>H_SCANTONEW</td>
                <td>objekt vytvořen v &quot;x&quot; - skenerem</td>
            </tr>
        </tbody>
    </table>
    <p><strong>Tabulka 2. Konstanty - typy softwarových produktů</strong></p>
    <table class="wide">
        <thead>
            <tr>
                <th>Konstanty</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SW_NEEDSLIC</td>
                <td>komerční - uživatel si musí zakoupit licenci, aby mohl produkt používat</td>
            </tr>
            <tr>
                <td>SW_NOLIC</td>
                <td>freeware (nevyžaduje licenci) - produkt lze používat bez licence</td>
            </tr>
            <tr>

                <td>SW_TRIALLIC</td>
                <td>shareware/trial - produkt lze testovat bez licence</td>
            </tr>
            <tr>
                <td>NULL</td>
                <td>bez licence - nelegálně nainstalovaný</td>
            </tr>
        </tbody>
    </table>
    <p><strong>Tabulka 3. Konstanty - kategorie softwarových produktů</strong></p>
    <table class="wide">
        <thead>
            <tr>
                <th>Konstanty</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>SW_OS</td>
                <td>softwarový produkt je operační systém</td>
            </tr>
        </tbody>
    </table>
    <p><strong>Příklad 12. Dotazovací jazyk - konstanty</strong></p>
    <p>Najděte všechny paměti RAM menší než 64 MB.</p>
    <div class="wide">
        <pre translate="no">@class="RAM" AND <em>Size&lt;64</em></pre>
    </div>
    <p><strong>Příklad 13. Jazyk dotazu - konstanty</strong></p>
    <p>Vyhledejte záznamy o historii objektů odstraněných (přesunutých) po 1. lednu 2001.</p>
    <div class="wide">
        <pre translate="no">@date&gt;&quot;1.1.2001&quot; AND ( @flag=H_MOVESRC OR @flags=H_SCANMOVESRC )</pre>
    </div>
    <p><strong>Příklad 14. Jazyk dotazu - konstanty</strong></p>
    <p>Vyhledejte všechny freewarové softwarové produkty.</p>
    <div class="wide">
        <pre translate="no">@type=SW_NOLIC</pre>
    </div>
    <p><strong>Příklad 15. Jazyk dotazu - konstanty</strong></p>
    <p>Vyhledat všechny neautorizované softwarové produkty - nelegálně nainstalované</p>
    <div class="wide">
        <pre translate="no">@licname=NULL</pre>
    </div>
    <p><strong>Příklad 16. Jazyk dotazu - konstanty</strong></p>
    <p>Vyhledejte všechny operační systémy nainstalované po 1. lednu 2001.</p>
    <div class="wide">
        <pre translate="no">@category=SW_OS AND @date&gt;&quot;1.1.2001&quot;</pre>
    </div>

    <h3>S ... ENDWITH</h3>

    <p>Mezi klíčová slova WITH a ENDWITH se zapíše seznam poddotazů. Jednotlivé poddotazy se oddělují čárkami.</p>
    <p>Klauzule HAVING určuje, které poddotazy v seznamu musí obsahovat alespoň jeden objekt, aby byl kontrolní objekt vybrán.</p>
    <p><strong>Příklad 17. Jazyk dotazů - poddotazy</strong></p>
    <p>Chceme vypsat seznam počítačů, které nemají pevný disk.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Computers without HDD&quot;=S0 S0.@object
WHERE @class LIKE &quot;Computer*&quot;
WITH 
    SELECT AS HDD WHERE @class=&quot;Hard disk&quot;
    HAVING NOT HDD
ENDWITH</pre>
    </div>

    <h3>GROUP BY</h3>
    <p>Určuje sloupec, podle kterého budou nalezené položky seskupeny. Sloupec musí být uveden v seznamu sloupců za klíčovým slovem SELECT.</p>
    <p><strong>Příklad 18. Jazyk dotazu - GROUP BY</strong></p>
    <p>Chceme vypsat seznam počítačů a seskupit je podle položky Podlaha.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Computers grouped by Floor&quot;=S0 @object, Floor
WHERE @class LIKE &quot;Computer*&quot;<em>
GROUP BY</em> Floor</pre>
    </div>

    <h3>ORDER BY</h3>

    <p>Slouží k seřazení hodnot sloupců ve výstupní sestavě. Priorita řazení je určena pořadím sloupců za klíčovým slovem ORDER BY. Všechny sloupce, které mají být seřazeny, musí být uvedeny v seznamu sloupců za klíčovým slovem SELECT.</p>
    <p>Modifikátory ASC a DESC určují směr řazení:</p>
    <ul>
        <li>ASC - vzestupně</li>
        <li>DESC - sestupně</li>
    </ul>
    <p><strong>Příklad 19. Jazyk dotazu - ORDER BY</strong></p>
    <p>Seznam počítačů seřazený podle sloupců Podlaha, Uživatel.</p>
    <div class="wide">
        <pre translate="no">
SELECT AS &quot;Computers sorted by floor and user&quot;=S0
 S0.@object, User, Floor
WHERE @class LIKE &quot;Computer*&quot;
<em>ORDER BY</em> Floor, User</pre>
    </div>

</asp:Content>
