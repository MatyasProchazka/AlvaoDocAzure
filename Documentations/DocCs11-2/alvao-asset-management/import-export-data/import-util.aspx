<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ImportUtil</h1>

    <h2>Popis funkce</h2>
    <p>Tento nástroj slouží k importu objektů ze souborů CSV do Asset Managementu. Nástroj při importu používá <em>šablony objektů</em> z AM.</p>
    <h2 id="csvstructure">Struktura souboru CSV</h2>
    <p>Soubor CSV musí mít jako oddělovač hodnot středník. První řádek musí obsahovat názvy sloupců:</p>
    <table>
        <thead>
            <tr>
                <th><strong>Sloupec</strong></th>
                <th><strong>Popis</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Třída</strong> nebo <strong>druh</strong></td>
                <td>Název typu importovaného objektu.</td>
            </tr>
            <tr>
                <td><strong>SwProfile</strong></td>
                <td>Softwarový profil počítačového objektu. Hodnoty uvedené v tomto sloupci musí odpovídat názvům existujících softwarových profilů. Pokud je hodnota prázdná, je softwarový profil počítače nastaven na "Všechen software je povolen"        </td>
            </tr>
            <tr>
                <td><strong>NodeId</strong></td>
                <td>Jedinečné číslo každého objektu v AM (lze zobrazit na kartě Podřazené objekty nebo v okně Seznamy objektů). Pokud je v parametru <strong>-keyfields</strong> použit sloupec NodeId a ve sloupci NodeId není žádná hodnota, vytvoří se nový objekt. Pokud objekt s konkrétním NodeId v databázi neexistuje, je vydáno varování a objekt není aktualizován nebo je vytvořen nový objekt.</td>
            </tr>
            <tr>
                <td><strong>&lt;název vlastnosti&gt;</strong></td>
                <td>Název libovolné vlastnosti objektu ve správě aktiv (např. "Datum nákupu").</td>
            </tr>

        </tbody>
    </table>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <p>Doporučujeme používat kódování UTF-8.</p>
    </div>
    <h2>Syntaxe příkazového řádku</h2>

    <p>
       <strong>ImportUtil</strong> <strong>-input</strong> <em>název vstupního souboru CSV</em><strong>{-conn</strong> <em>připojovací řetězec</em> | <strong>-server</strong> <em>název databázového serveru</em> <strong>-db</strong> <em>název databáze}</em><strong>[-class</strong> <em>typ objektu</em>]<strong>[-separator</strong> <em>oddělovač sloupců použitých v souboru CSV</em>]<strong>[-keyfields</strong> <em>identifikační sloupec[,identifikační sloupec ...]]</em><strong>[-parentnodeid</strong> <em>NodeId</em>]<strong>[-import</strong>]<strong>[-force</strong>]    </p>

    <h2>Popis parametrů</h2>

    <table>
        <thead>
            <tr>
                <th><strong>Parametr</strong></th>
                <th><strong>Popis</strong></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>-class</strong></td>
                <td>Pomocí tohoto parametru můžete určit typ objektu ve vstupních datech (např. <strong>-class</strong> <em>Monitor</em>).<br />
                    Tento parametr je povinný, pokud zdrojový soubor neobsahuje sloupec Type (Typ) nebo Class (Třída). Pokud vstupní soubor obsahuje sloupec Type (Typ) a <em>je zadán parametr</em> <strong>-class</strong> <em>Class (Třída)</strong> object kind (Druh objektu)</em>, budou do importu zahrnuty pouze řádky, které mají ve sloupci Type (Typ) odpovídající položku s <em>druhem objektu</em>.</td>
            </tr>
            <tr>
                <td><strong>-conn<br />-server<br />-db</strong></td>
                <td>Tyto parametry slouží k nastavení připojení k databázi Alvao. Je možné použít připojovací řetězec (např. <strong>-conn</strong> <em>Zdroj dat=.\sqlexpress;Initial Catalog=test;Integrated Security = True;TrustServerCertificate=True</em>) nebo jednoduše zadat konkrétní SQL server a DB (např. <strong>-server</strong> <em>.\sqlexpress</em> <strong>-db</strong> <em>test</em>).<br />
                    V případě použití parametrů <strong>-server</strong> a <strong>-db</strong> se připojení k databázi provede pomocí integrovaného ověřování systému Windows. Pokud zadáte všechny tyto parametry, použije se pouze parametr <strong>-conn</strong>, <strong>-server</strong> a <strong>-db</strong>budou ignorovány.</td>
            </tr>
            <tr>
                <td>-<strong>datetimeformat</strong></td>
                <td>Formát data v textových řetězcích (např. dd/MM/rrrr). Není-li parametr zadán, formát se při převodu zjistí automaticky. Podrobný popis možných formátů naleznete v <a href="https://msdn.microsoft.com/en-us/library/8kb3ddd4%28v=vs.110%29">MSDN</a>.</td>
            </tr>
            <tr>
                <td>-<strong>oddělovač</strong></td>
                <td>Pomocí tohoto parametru můžete určit oddělovač sloupců použitý v importovaném souboru CSV. Např. parametr -separator &quot;,&quot;.</td>
            </tr>
            <tr>
                <td><strong>-force</strong></td>
                <td>Pokud je použit, data se do databáze importují i v případě, že je v některé z položek chyba. Bez něj jakákoli chyba způsobí, že se žádný záznam neimportuje.</td>
            </tr>
            <tr>
                <td><strong>-import</strong></td>
                <td>Je-li použit, data se do databáze importují, jinak se kontroluje pouze platnost importu.</td>
            </tr>
            <tr>
                <td><strong>-input</strong></td>
                <td>Slouží k zadání cesty a názvu vstupního souboru CSV (např. <em>em D:\import\import.csv</em>)</td>
            </tr>
            <tr>
                <td><strong>-klíčová pole</strong></td>
                <td>Parametr sloužící k identifikaci a aktualizaci existujících objektů. Zadané sloupce společně tvoří jedinečný identifikátor (např. <strong>-keyfields</strong> Sériové číslo, Model). Pokud identifikátor neodpovídá žádné položce v databázi, vytvoří se nový objekt ve složce <strong>Read Objects</strong> nebo ve složce zadané parametrem <strong>-parentnodetid</strong> <div class="note">
    <div class="icon"></div>
     <div class="title">Poznámka:</div>
     Pokud je k identifikaci použit sloupec NodeId (<strong>-keyfields</strong>), nelze v parametru použít žádné jiné sloupce. Další informace naleznete v popisu sloupce NodeId </div>
                </td>
            </tr>
            <tr>
                <td><strong>-parentnodeid</strong></td>
                <td>Vytvoří nové objekty jako podřízené objekty pod objektem s ID: <em>NodeId</em><div class="note">
    <div class="icon"></div>
     <div class="title">Poznámka:</div>
     Hodnotu NodeId můžete zjistit v AM Console na kartě <a href="../../list-of-windows/alvao-asset-management-console/tab-view/objects">Přiřazené objekty</a>. zobrazením systémového sloupce NodeId nebo v databázi v tabulce <a href="../implementation/customization/database#U_dbo.tblNode">tblNode</a>.intNodeId </div>
                </td>
            </tr>
            <tr>
                <td><strong>-vyřazeno</strong></td>
                <td>Pokud je použita, jsou při importu vyhledána a aktualizována také aktiva v aktivu scrapped.</td>
            </tr>

        </tbody>
    </table>


    <div class="note">
       <div class="icon"></div>
        <div class="title">
            Pozn    </div>
        Následuje seznam chyb, které jsou při použití parametru <strong>-force</strong> ignorovány a nezpůsobí selhání celého importu.<p>
            <br />
            <br />
            Chyby se do výsledku započítávají jako přeskočené záznamy        </p>
        <ul>
            <li>Více objektů s hodnotou klíče vyskytující se ve sloupcích vybraných parametrem -keyfields. Další informace o parametru -keyfields naleznete výše.</li>
            <li>Neexistující šablona v databázi pro objekt v souboru. Další informace naleznete výše v parametru -class.</li>
            <li>Duplicitní záznamy ve vstupním souboru.</li>
        </ul>
        <p>Znaky započítané do výsledku jako chybné záznamy:</p>
        <ul>
            <li>Chyba při vytváření objektu podle šablony objektu, včetně šablony pro sestavu počítače, která se používá při vytváření objektu s druhem objektu Počítač.</li>
            <li>Chyba při aktualizaci objektu v databázi.</li>
        </ul>
    </div>

    <h2>Příklady použití</h2>

    <p>
       <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>import.csv</em><strong> -server</strong><em>.\sqlexpress</em><strong>-db</strong><em>AlvaoSample</em> <strong>-separator</strong> &quot;,&quot;</p>
    <p>
        Tento příkaz zkontroluje platnost formátu souboru <em>import.csv</em> v aktuálním adresáři oproti databázi <em>AlvaoSample</em> na <em>místním SQL Serveru</em>   </p>
    <p>
       <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>import.csv</em><strong> -server</strong><em>.\sqlexpress</em><strong>-db </strong><em>AlvaoSample</em> <strong>-import</strong>   </p>
    <p>
        Tento příkaz importuje data ze souboru <em>import.csv</em> do <em>silné</em> databáze <em>AlvaoSample</em> na <em>místním SQL Serveru</em>. Ve složce <strong>AM</strong> <strong>Read Objects</strong> se vytvoří příslušné nové objekty    </p>
    <p>
       <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>. import.csv</em><strong> -server</strong><em>.\sqlexpress</em><strong>-db </strong><em>AlvaoSample</em> <strong>-parentnodeid</strong> <em>92</em> <strong>-import</strong>   </p>
    <p>
        Tento příkaz importuje data ze souboru <em>import.csv</em> do <em>silné</em> databáze <em>AlvaoSample</em> na <em>místním serveru SQL</em>. V <strong>AM</strong>se vytvoří příslušné nové objekty pod objektem ve stromu s NodeId s hodnotou <em>92</em></p>
    <p>
       <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>. update_db.csv</em><strong> -server</strong><em>.\sqlexpress</em><strong>-db</strong><em>AlvaoSample</em> <strong>-import</strong> <strong>-keyfields</strong> <em><q>registrační značka</q></em>   </p>
    <p>
        Tento příkaz aktualizuje objekty, které mají položku <em>registrační značky</em> odpovídající hodnotě v souboru <em>update_db.csv</em> v <em>databázi em&gt;strong</em>. <em>AlvaoSample</em> na <em>místním serveru SQL Server</em>. V <strong>AM</strong>se aktualizují vlastnosti identifikovaných objektů nebo se vytvoří neexistující objekty ve složce <strong>Read Objects</strong>   </p>
    <p>
       <strong>ImportUtil.exe</strong> <strong>-input</strong> <em>update_db.csv</em><strong> -server</strong><em>.\sqlexpress</em><strong>-db</strong><em>AlvaoSample</em> <strong>-import</strong> <strong>-keyfields</strong> <em>NodeId</em>   </p>
    <p>Příkaz aktualizuje hodnoty vlastností objektů podle souboru CSV, jejichž NodeId odpovídá hodnotám v souboru CSV.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">
            Poznámka        </div>
        Pro vyzkoušení funkčnosti výše uvedených příkazů můžete použít ukázkové soubory CSV <a href="annexes/import.csv">import.csv</a> a <a href="annexes/update_db.csv">update_db.csv</a>.<br />
    </div>
</asp:Content>
