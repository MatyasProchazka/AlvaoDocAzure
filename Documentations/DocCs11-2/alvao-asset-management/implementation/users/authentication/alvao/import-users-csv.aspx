<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import uživatelů z CSV</h1>

    <h2>Pravidelný automatický import</h2>
    <p>
        Vytvořte na serveru naplánovanou úlohu s periodou opakování např. 1× denně, která spustí následující příkaz:<br />
       <span class="console">\AlvaoService\utilities\ImportUsersCsv.exe /csv &lt;cesta k souboru CSV&gt; /server &lt;sql_server&gt; /db &lt;database_alvao&gt; /add /remove</span>   </p>

    <h2>Jednorázový import</h2>
    <p>
        Pro jednorázový import portrétů na serveru spusťte vytvořenou naplánovanou úlohu jednou nebo zkopírujte aplikaci <em>ImportUsersCsv</em> ze serveru do počítače a spusťte ji z příkazového řádku. Aplikace je nainstalována společně se službou ALVAO ve složce "%ProgramFiles%\ALVAO\AlvaoService\utilities"    </p>

    <h2>Nástroj ImportUsersCSV</h2>
    <p>Tato utilita importuje uživatele ze souboru CSV do systému Alvao. Můžete ji použít například k aktualizaci uživatelů v systému Alvao podle údajů v personálním systému apod.</p>

    <h3>Syntaxe příkazových řádků</h3>

    <p>
       <strong>ImportUsersCSV</strong> <strong>/csv</strong> <em>&quot;cesta a název souboru CSV&quot;</em> <strong>{/con</strong> <em>&quot;připojovací řetězec</em>&quot; | <strong>/server</strong> <em>&quot;název databázového serveru&quot;</em> <strong>/db</strong> <em>&quot;název databáze&quot;</em>}<strong>[/key</strong> &quot;<strong>klíčový</strong> sloupec&quot;]<strong>[/cols</strong> &quot;seznam sloupců&quot;]<strong>[/utcdate</strong>]<strong>[/nohdrs</strong>]<strong>[/add</strong>]<strong>[/remove</strong>]<strong>[/help</strong>]    </p>

    <h3>Podrobný popis parametrů</h3>

    <table class="wide">
        <thead>
            <tr>
                <th class="auto-style2">Parametr</th>
                <th class="auto-style2">Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/csv</td>
                <td>Cesta a název souboru CSV, ze kterého se má provést import.</td>
            </tr>
            <tr>
                <td>/con<br />
                    /server<br />
                    /db</td>
                <td>Tyto parametry slouží k nastavení připojení k databázi Alvao. Je možné použít řetězec připojení (např. <strong>/con</strong> <em>&quot;Zdroj dat=.\sqlexpress;Počáteční katalog=test;Integrované zabezpečení = True;TrustServerCertificate=True&quot;)</em> nebo jednoduše zadat konkrétní SQL server a DB (např. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test</em>&quot;).<br />
                    V případě, že použijete parametry <strong>/server</strong> a <strong>/db</strong>, připojení k databázi se provede pomocí integrovaného ověřování systému Windows. Pokud zadáte všechny tyto parametry, použije se pouze parametr <strong>/con</strong>, <strong>/server</strong> a <strong>/db</strong>budou ignorovány. </td>
            </tr>
            <tr>
                <td>/key</td>
                <td>Sloupec key slouží k vyhledání existujícího uživatele v administraci. Pokud není zadán žádný parametr, sloupec klíče je <strong>Login</strong> (musí existovat v CSV).</td>
            </tr>
            <tr>
                <td class="auto-style1">/cols</td>
                <td class="auto-style1">Umožňuje určit význam a pořadí sloupců v CSV (CSV neobsahuje hlavičky). Pokud je v seznamu zadána <strong>0</strong> (nula), příslušný sloupec z CSV nebude importován (bude ignorován).<br />
                    Poznámka: Seznam na příkazovém řádku nemusí obsahovat stejný počet sloupců jako CSV (neuvedené sloupce budou přeskočeny - ignorovány)            </td>
            </tr>
            <tr>
                <td>/utcdate</td>
                <td>Sloupce s datem jsou v čase UTC. Není-li přepínač zadán, budou časové údaje v CSV považovány za aktuální časové pásmo počítače (místní čas).</td>
            </tr>
            <tr>
                <td>/nohdrs</td>
                <td>Importovaný CSV neobsahuje záhlaví (první řádek) s popisem sloupců.</td>
            </tr>
            <tr>
                <td>/add</td>
                <td>Vytvoření nových uživatelů v systému Alvao     <br />
                    Poznámka: Pokud není tento přepínač zadán, import nevytvoří nové uživatele, ale pouze aktualizuje stávající.</td>
            </tr>
            <tr>
                <td>/remove</td>
                <td>Odstraní z Alvao uživatele, které nenajde v souboru CSV.</td>
            </tr>
        </tbody>
    </table>

    <h3>Popis všech podporovaných sloupců</h3>

    <table class="wide">
        <thead>
            <tr>
                <th>Název sloupce v CSV<br />
                    (v příkazovém řádku - /cols)</th>
                <th>Důležitost</th>
                <th>Související sloupec v tPerson</th>
 <th>Poznámka</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID</td>
                <td>Jedinečné identifikační číslo osoby v CSV (např. ID ze systému, ze kterého je CSV exportován).</td>
                <td>-</td>
                <td>Pokud CSV obsahuje <strong>ManagerID</strong> nebo <strong>DelegateID</strong>, import tento sloupec vyžaduje, jinak skončí s chybou.</td>
            </tr>
            <tr>
                <td>FullName</td>
                <td>Jméno a příjmení osoby</td>
                <td>withPerson</td>
                <td>Nesmí být vyplněn - v tomto případě bude hodnota složena jako<strong>[FirstName LastName</strong>] (pokud je vyplněno).</td>
            </tr>
            <tr>
                <td>Login</td>
                <td>UserName</td>
                <td>withPersonLogin (pokud je hodnota ve tvaru <em>domain</em> a jedná se o uživatele AD, pak SamAccountName)</td>
                <td>Uživatelské jméno lze zadat v následujících tvarech       <ul>
                        <li><em>login@domena (UPN)</em></li>
                        <li><em>login</em></li>
                        <li><em>domain/login</em></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>E-mail</td>
                <td>withPersonEmail</td>
                <td></td>
            </tr>
            <tr>
                <td>Telefon</td>
                <td>Telefon</td>
                <td>withPersonPhone</td>
                <td></td>
            </tr>
            <tr>
                <td>Mobilní</td>
                <td>Mobilní</td>
                <td>withPersonMobile</td>
                <td></td>
            </tr>
            <tr>
                <td>Kancelář</td>
                <td>Kancelář</td>
                <td>withPersonOffice</td>
                <td></td>
            </tr>
            <tr>
                <td>Oddělení</td>
                <td>Oddělení</td>
                <td>withPersonDepartment</td>
                <td></td>
            </tr>
            <tr>
                <td>JobTitle</td>
                <td>Pracovní pozice</td>
                <td>withPersonWorkPosition</td>
                <td></td>
            </tr>
            <tr>
                <td>Pswd</td>
                <td>SHA1 hash hesla uživatele</td>
                <td>sPersonPswd</td>
                <td></td>
            </tr>
            <tr>
                <td>IsAccountDisabled</td>
                <td>&quot;Účet je zakázán&quot;</td>
                <td>bPersonAccountDisabled</td>
                <td>Povolené hodnoty: 0,1</td>
            </tr>
            <tr>
                <td>OtherContacts</td>
                <td>Ostatní kontakty</td>
                <td>mPersonContact</td>
                <td></td>
            </tr>
            <tr>
                <td>Poznámky</td>
                <td>Poznámky</td>
                <td>mPersonNotes</td>
                <td></td>
            </tr>
            <tr>
                <td>Město</td>
                <td>Město</td>
                <td>withPersonCity</td>
                <td></td>
            </tr>
            <tr>
                <td>ManagerID</td>
                <td>ID manažera. ID osoby musí v CSV existovat.</td>
                <td>-</td>
                <td>Vyžaduje sloupec <strong>ID</strong>.</td>
            </tr>
            <tr>
                <td>DelegateID</td>
                <td>Číslo ID delegáta. ID osoby musí existovat v CSV a související osoby musí mít stejnou společnost<strong>(Company</strong>).</td>
                <td>-</td>
                <td>Vyžaduje sloupec <strong>ID</strong>.</td>
            </tr>
            <tr>
                <td>PersonalNumber</td>
                <td>Číslo osoby</td>
                <td>withPersonPersonalNumber</td>
                <td></td>
            </tr>
            <tr>
                <td>OutOfOfficeSinceDate</td>
                <td>Od data nedostupné. Jsou podporovány běžné formáty data a času.<br />
                    Příklad podporovaných formátů:<br />
                    - 2012-11-21<br />
                    - 2012-10-9 15:24:48<br />
                    - 2010-08-15 14:18:44<br />
                    - 2010-07-14</td>
                <td>OutOfOfficeSince</td>
                <td></td>
            </tr>
            <tr>
                <td>OutOfOfficeUntilDate</td>
                <td>Neuvádějte datum a čas. Jsou podporovány běžné formáty data a času (viz OutOfOfficeSinceDate).</td>
                <td>OutOfOfficeUntil</td>
                <td></td>
            </tr>
            <tr>
                <td>LocaleId</td>
                <td>Jazyk preferovaný uživatelem, jedná se o "kód jazyka", např:<br />
                    - Čeština: 1029<br />
                    - Angličtina: 1029: 1033<br />
                    - Polština: 1033: 1045<br />
                    - Německo: 1031</td>
                <td>iPersonLocaleId</td>
                <td>Dobré číslo.</td>
            </tr>
            <tr>
                <td>Společnost</td>
                <td>Organizace</td>
                <td>-</td>
                <td>Vyhledání organizace podle názvu. Pokud neexistuje, vytvoří se nová organizace podle názvu.</td>
            </tr>
            <tr>
                <td>Křestní jméno</td>
                <td>FirstName</td>
                <td>withFirstName</td>
                <td></td>
            </tr>
            <tr>
                <td>LastName</td>
                <td>LastName</td>
                <td>withLastName</td>
                <td></td>
            </tr>
            <tr>
                <td>TimeZone</td>
                <td>TimeZone - musí odpovídat ID časové zóny Windows - více <a href="http://technet.microsoft.com/en-us/library/cc749073(v=ws.10)">zde</a>.</td>
                <td>TimeZone</td>
                <td></td>
            </tr>
            <tr>
                <td>AdGUID</td>
                <td>GUID z Active Directory</td>
                <td>withPersonAdGuid</td>
                <td></td>
            </tr>
            <tr>
                <td>AdPath</td>
                <td>Cesta v ActiveDirectory</td>
                <td>withPersonAdPath</td>
                <td></td>
            </tr>
            <tr>
                <td>AdSID</td>
                <td>AD SID v textovém tvaru (S-1-5-21-55544...)</td>
                <td>withPersonSID</td>
                <td></td>
            </tr>
            <tr>
                <td>IsHidden</td>
                <td>&quot;Skrýt v nabídkách&quot;</td>
                <td>bHidden</td>
                <td>Přípustné hodnoty: 0,1</td>
            </tr>
            <tr>
                <td>IsShared</td>
                <td>Jedná se o &quot;sdílený účet&quot;</td>
                <td>bPersonShared</td>
                <td></td>
            </tr>
            <tr>
                <td>Země</td>
                <td>Země</td>
                <td>withPersonCountry</td>
                <td></td>
            </tr>
            <tr>
                <td>CountryAbbr</td>
                <td>Země (zkratka, 2 znaky)</td>
                <td>withPersonCountryAbbr</td>
                <td></td>
            </tr>
            <tr>
                <td>CountryCode</td>
                <td>CountryCode</td>
                <td>andPersonCountryCode</td>
                <td>Číslo buňky</td>
            </tr>
            <tr>
                <td>PreferredLang</td>
                <td>Preferovaný jazyk (zkratka, 2 znaky)</td>
                <td>withPersonPreferredLanguage</td>
                <td></td>
            </tr>
        </tbody>
    </table>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Atributy lze také mapovat na jakékoli existující vlastní položky z tabulky tPersonCust, s výjimkou položek typu int, které používají seznam hodnot, a typu <em>user</em>. Název atributu musí být <em>&quot;@&quot;+[tPersonCust] +[název sloupce databáze]</em>, např. <em>@tPersonCust.Title</em>.</div>


    <h3>Doporučená struktura souboru CSV</h3>
    <p>Doporučuje se, aby importovaný soubor CSV obsahoval následující sloupce:</p>

    <table class="wide">
        <thead>
            <tr>
                <th>Název sloupce v CSV<br />
                    (v příkazovém řádku - /cols)</th>
                <th>Důležitost</th>
                <th>Poznámka</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ID</td>
                <td>Jedinečné identifikační číslo osoby v CSV (např. ID ze systému, ze kterého je CSV exportováno).</td>
                <td>Pokud jsou sloupce <strong>ManagerID</strong> a <strong>DelegateID</strong> prázdné, není třeba je vyplňovat.</td>
            </tr>
            <tr>
                <td>Křestní jméno</td>
                <td>FirstName</td>
                <td>Musí být vyplněno <strong>FirstName</strong> a <strong>LastName</strong>, případně <strong>FullName</strong>.</td>
            </tr>
            <tr>
                <td>LastName</td>
                <td>Příjmení</td>
                <td>Musí být vyplněno <strong>FirstName</strong> a <strong>FirstName</strong>. <strong>LastName</strong>, případně <strong>FullName</strong>.</td>
            </tr>
            <tr>
                <td>FullName</td>
                <td>Jméno a příjmení osoby</td>
                <td>Nesmí být vyplněno - v tomto případě bude hodnota složena jako<strong>[FirstName LastName</strong>].</td>
            </tr>
            <tr>
                <td>PersonalNumber</td>
                <td>PersonalNumber</td>
                <td></td>
            </tr>
            <tr>
                <td>Přihlášení</td>
                <td>Jméno uživatele</td>
                <td>Sloupec musí obsahovat hodnoty.</td>
            </tr>
            <tr>
                <td>Telefon</td>
                <td>Telefon</td>
                <td></td>
            </tr>
            <tr>
                <td>Mobilní</td>
                <td>Mobilní</td>
                <td></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>E-mail</td>
                <td></td>
            </tr>
            <tr>
                <td>Kancelář</td>
                <td>Kancelář</td>
                <td></td>
            </tr>
            <tr>
                <td>Oddělení</td>
                <td>Oddělení</td>
                <td></td>
            </tr>
            <tr>
                <td>JobTitle</td>
                <td>Pracovní pozice</td>
                <td></td>
            </tr>
            <tr>
                <td>Společnost</td>
                <td>Organizace</td>
                <td></td>
            </tr>
            <tr>
                <td>IsAccountDisabled</td>
                <td>&quot;Účet je zakázán&quot;</td>
                <td>Přípustné hodnoty: 0,1</td>
            </tr>
            <tr>
                <td>ManagerID</td>
                <td>Identifikační číslo manažera. ID osoby musí v CSV existovat.</td>
                <td>Vyžaduje sloupec <strong>ID</strong>.</td>
            </tr>
            <tr>
                <td>DelegateID</td>
                <td>ID delegáta. ID osoby musí existovat v CSV a související osoby musí mít stejnou společnost<strong>(Company</strong>).</td>
                <td>Vyžaduje sloupec <strong>ID</strong>.</td>
            </tr>
            <tr>
                <td>LocaleId</td>
                <td>Jazyk preferovaný uživatelem, jedná se o "kód jazyka", např:<br />
                    - Čeština: 1029<br />
                    - Angličtina: 1029: 1033<br />
                    - Polština: 1033: 1045<br />
                    - Německo: 1031</td>
                <td>Celé číslo.</td>
            </tr>
        </tbody>
    </table>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Nepovinné sloupce mohou být prázdné - v takovém případě pozor na to, že odpovídající údaje o osobě v Alvao budou odstraněny (budou prázdné)    </div>

    <h5>Ukázkový soubor CSV</h5>



    <div class="wide">
        <pre translate="no">
ID;FirstName;LastName;FullName;PersonalNumber;Login;Phone;Mobile;Email;Office;Department;JobTitle;Company;IsAccountDisabled;ManagerID;DelegateID;LocaleId;@tPersonCust.Title
44;David;Ostrý;;PN1111;ostry;3256;+420987654321;ostry@demo.cz;321;Marketing;Manager;;0;46;45;1029;Mr
45;Petr;Novák;;PN2222;novak;3247;+420111222333;novak@demo.cz;323;Promotions;Manager;;1;;;1029;Mr
46;Veronika;Clements;;PN3333;clements;3244;+420121353255;clements@demo.cz;111;Marketing;Head of Department;;0;;44;1033;Mrs</pre>
    </div>

    <h4>Import CSV s doporučenou strukturou</h4>

    <p>
        CSV obsahuje záhlaví s názvy sloupců. Import provede úplnou synchronizaci, tj. odstraní uživatele, které v CSV nenajde, a vytvoří nové uživatele. Klíčovým sloupcem je <strong>Login</strong>. Příkazový řádek pro import    </p>
    <div class="wide">
        <pre translate="no">ImportUsersCsv.exe /csv &quot;c:\data\users.csv&quot; /server server\sql2005 /db alvao /add /remove</pre>
    </div>

    <h3>Případy použití</h3>

    <h4>Personální systém generuje CSV s mnoha sloupci, do Alvao chceme importovat pouze některá data</h4>

    <p>HR systém generuje CSV s pevnou strukturou. Tuto strukturu nelze měnit. Chceme vytvořit nové uživatele a zároveň odstranit uživatele, kteří v CSV nejsou (úplná synchronizace). Příklad: CSV obsahuje 30 sloupců. Chceme importovat pouze "přihlašovací jméno" (první sloupec) a "jméno a příjmení" (4. sloupec). Ostatní sloupce nemají žádný význam. CSV neobsahuje hlavičky (názvy sloupců). Použijeme příkazový řádek:</p>

    <div class="wide">
        <pre translate="no">ImportUsersCsv.exe /csv &quot;c:\data\users.csv&quot; /server server\sql2005 /db alvao /cols &quot;Login,0,0,FullName&quot; /nohdrs /add /remove</pre>
    </div>

    <h4>Import uživatelů z AD a dodatečná aktualizace osob z personálního systému</h4>

    <p>
        Import uživatelů z AD (vytvářejí se noví uživatelé a odstraňují se). Potřebujeme aktualizovat další údaje z HR systému - klíčové je číslo osoby (nechceme vytvářet nové uživatele ani je odstraňovat na základě HR systému). HR systém generuje názvy sloupců do CSV podle definice Alvao.<br />
        Příklad použití    </p>
    <div class="wide">
        <pre translate="no">ImportAD.exe ...
ImportUsersCsv.exe /csv &quot;c:\data\users.csv&quot; /server server\sql2005 /db alvao /key PersonalNumber</pre>
    </div>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 { height: 43px; } .auto-style2 { height: 25px; } </style>
</asp:Content>

