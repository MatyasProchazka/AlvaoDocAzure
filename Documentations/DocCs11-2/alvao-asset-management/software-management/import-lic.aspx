<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Dovoz licencí</h1>

    <h2>Popis funkce</h2>

    <p>Aplikace ImportLic slouží k importu licencí ze souboru CSV, včetně přiřazení k jednotlivým počítačům nebo uživatelům.  Lze ji také spustit v režimu synchronizace přiřazených licencí s externím systémem.</p>


    <h2>Syntaxe příkazových řádků</h2>

    <p>
       <strong>ImportLic.exe</strong> <strong>/input</strong> <em>&quot;cesta a název souboru CSV&quot;</em> <strong>{/conn</strong> <em>&quot;řetězec připojení&quot;</em> | <strong>/server</strong> <em>&quot;název databázového serveru&quot;</em> <strong>/db</strong> <em>&quot;název databáze&quot;</em>}<strong>[/import</strong>]<strong>[/mode</strong> {ImportLicenses | UpdateItems}]<strong>[/force</strong>]<strong>[/headers</strong>]<strong>[/help</strong>]    </p>

    <h2>Podrobný popis parametrů</h2>

    <table>
        <thead>
            <tr>
                <th>Parametr</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/input</td>
                <td>Cesta a název souboru CSV, ze kterého se má provést import.</td>
            </tr>
            <tr>
                <td>/conn<br />
                    /server<br />
                    /db</td>
                <td>Tyto parametry slouží k nastavení připojení k databázi Alvao. Lze použít řetězec připojení (např. <strong>/conn</strong> <em>&quot;Zdroj dat=.\sqlexpress;Počáteční katalog=test;Integrované zabezpečení = True;TrustServerCertificate=True</em>&quot;),                    <br />
                    nebo jednoduše zadat konkrétní SQL server a DB (např. <strong>/server</strong> <em>&quot;.\sqlexpress&quot;</em> <strong>/db</strong> <em>&quot;test&quot;</em>).<br />
                    V případě, že použijete parametry <strong>/server</strong> a <strong>/db</strong>, připojení k databázi se provede pomocí integrovaného ověřování systému Windows. Pokud zadáte všechny tyto parametry,          <br />
                    bude použit pouze parametr <strong>/conn</strong>, <strong>/server</strong> a <strong>/db</strong>budou ignorovány. </td>
            </tr>
            <tr>
                <td>/import</td>
                <td>Import dat. Pokud tento přepínač nepoužijete, provede se pouze kontrola syntaxe dat v souboru CSV.</td>
            </tr>
            <tr>
                <td>/mode</td>
                <td>Režim importu       <ul>
 <li>ImportLicenses - import nových licencí. Jedná se o výchozí režim.</li>
                        <li>UpdateItems - import položek licencí v licenčním modelu na uživatele, tj. přiřazení nebo odebrání licencí konkrétním uživatelům.</li>
                    </ul>
                    Podrobný popis režimů naleznete níže. </td>
            </tr>
            <tr>
                <td>/force</td>
                <td>Vynutí import dat i v případě, že jsou v datech chyby. </td>
            </tr>
            <tr>
                <td>/headers</td>
                <td>Použije se, pokud první řádek souboru obsahuje názvy sloupců.</td>
            </tr>
        </tbody>
    </table>

    <h2>ImportLicenses</h2>
    <p>Import nových licencí včetně dokumentů a přiřazení vytvořených licencí počítačům nebo uživatelům.</p>
    <h3>Popis všech podporovaných sloupců</h3>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pořadí sloupců je pevné, nezávisí na názvu sloupce.<br />
        Importovaný soubor proto musí obsahovat všechny sloupce, pouze hodnoty v některých z nich mohou být prázdné.<br />
        To platí i v případě použití parametru <em>force</em>   </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Data musí být zadána ve správném formátu, např. &quot;1.12.2014&quot; nebo &quot;2015-12-01&quot;    </div>


    <h4>Licence</h4>

    <table>
        <thead>
            <tr>
                <th>Název sloupce v CSV</th>
                <th>Možnosti</th>
                <th>Zkontrolovat</th>
                <th>Povinné</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Produkt</td>
                <td>Přesný název produktu z knihovny softwarových produktů ALVAO SWLIB.</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>ID jazyka (LangId)</td>
                <td>Jazyk licence - může to být buď prázdná hodnota, nebo číselný kód jazyka (typ INT), který je v databázi:<br />
                    (1029=CZE, 1051=SVK, 1033=ENG, 1031=GER, 1036=FRA, 1034=SPA, 1040=ITA, 1038=HUN, 1045=POL, 1049=RUS, 1060=SLO, 1053=SWE, 1055=TUR, 1050=CRO, 1041=JAP).</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Název licence</td>
                <td>Název existující licence v databázi nebo prázdná hodnota (název licence pak bude stejný jako název produktu).</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Číslo</td>
                <td>Počet zakoupených licencí - číslo INT, musí být zadáno.</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Typ licence</td>
                <td>Musí být zadána jedna z následujících hodnot: <em>em&gt; <em>na zařízení</em>, <em>na uživatele</em>, <em>na připojení,</em> <em>na procesor</em> nebo <em>na jádro</em>.</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Režim licence</td>
                <td>Lze zadat libovolný text, doporučujeme použít jednu z následujících hodnot: <em>Pronájem</em>, <em>Zajištění</em>, <em>Zajištění</em>, <em>Výběr</em> nebo <em>Otevřená</em>.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Aktivita od</td>
                <td>Datum, od kterého je licence platná - datum musí být zadáno ve správném formátu.</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Platí do</td>
                <td>Datum, do kterého je licence platná - může být prázdná hodnota nebo správný formát data.</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Podpora do</td>
                <td>Datum, do kterého je licence podporována - může to být prázdná hodnota nebo správný formát data.</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>

            <tr>
                <td>Typ licence</td>
                <td>Typ licence - musí to být jedna z následujících hodnot: Float</em>, <em>Multi, OEM</em> nebo CAL.</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Aktivační klíč licence</td>
                <td>Licenční aktivační klíč - zadejte libovolný text nebo prázdnou hodnotu.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Inventární číslo licence</td>
                <td>Inventární číslo licence - zadejte libovolný text nebo prázdnou hodnotu.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Číslo certifikátu</td>
                <td>Libovolný text nebo prázdná hodnota - je-li zadána, program vyhledá certifikát podle tohoto čísla v DB.<br />
                    Pokud jej najde, přiřadí vytvořenou licenci k nalezenému certifikátu z DB, v opačném případě vytvoří doklad typu &quot;Certifikát&quot; a přiřadí jej k právě vytvořené licenci.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Požadavek</td>
                <td>Žádost o licenci - zadejte libovolný text nebo prázdnou hodnotu.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Nákladové středisko licence</td>
                <td>Nákladové středisko licence - zadejte libovolný text nebo prázdnou hodnotu.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Cena</td>
                <td>Cena licence - musí to být libovolné číslo typu FLOAT nebo prázdná hodnota.</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Webová adresa</td>
                <td>Pokud se jedná o produkt stažený z internetu, zadejte URL odkaz pro stažení produktu nebo prázdnou hodnotu.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Svazek</td>
                <td>Pokud je produkt součástí balíčku, zadejte &quot;<em>1</em>&quot;, pokud ne, zadejte &quot;<em>0</em>&quot;.</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Organizace</td>
                <td>Název <a href="licenses">organizace</a>, která vlastní licenci. Pokud zadáte prázdnou hodnotu, lze licenci přiřadit počítačům nebo uživatelům z libovolné organizace.</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Poznámka</td>
                <td>Poznámka k licenci - zadejte libovolný text nebo prázdnou hodnotu.</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
        </tbody>
    </table>
    <h4>Položky licence</h4>
    Tento oddíl není třeba pro licenci vyplňovat - v tomto případě bude licence vytvořena bez licenčních položek <table>
         <thead>
             <tr>
                 <th>Název sloupce CSL</th>
                 <th>Možnosti</th>
                 <th>Zaškrtněte</th>
                 <th>Povinné</th>
             </tr>
         </thead>
         <tbody>
             <tr>
                 <td>Počítač</td>
                 <td>Síťový název konkrétního počítače v DB - počítač musí v databázi existovat.</td>
                 <td>Ano</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Aktivační klíč položky</td>
                 <td>Licenční aktivační klíč položky - zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Nákladové středisko položky</td>
                 <td>Nákladové středisko položky licence - zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Číslo inventární položky</td>
                 <td>Inventární číslo licenční položky - zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Požadavek na položku</td>
                 <td>Požadavek na licenční položku - zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Poznámka k položce</td>
                 <td>Poznámka k položce licence - zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
         </tbody>
     </table>


    <h4>Dokument</h4>
    Tento oddíl opět není třeba vyplňovat. V tomto případě se pro nově vytvořenou licenci nevytváří žádný dokument. Dokumenty jsou uloženy ve <a href="../../list-of-windows/alvao-webapp/administration/asset-management/document-folders/document-folder">složce dokumentů s</a> nejmenším ID, která je spojena s licencí softwaru (obvykle složka <em>Všechny dokumenty</em> ) <table>
         <thead>
             <tr>
                 <th>Název sloupce v CSV</th>
                 <th>Možnosti</th>
                 <th>Zaškrtněte</th>
                 <th>Povinné</th>
             </tr>
         </thead>
         <tbody>
             <tr>
                 <td>Číslo faktury</td>
                 <td>Zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Číslo faktury 2</td>
                 <td>Zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Datum vystavení</td>
                 <td>Datum vystavení faktury - datum musí být zadáno ve správném formátu.</td>
                 <td>Ano</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Cesta k příloze</td>
                 <td>Cesta k příloze dokladu (hledá se ve sdílených dokumentech) nebo prázdná hodnota.</td>
                 <td>Ne</td>
                 <td>Ne</td>

             </tr>
             <tr>
                 <td>Dodavatel</td>
                 <td>Hledá se název dodavatele v DB, pokud je nalezen, přiřadí se nalezený záznam, jinak se vytvoří nový dodavatel s tímto názvem. Může to být i prázdná hodnota.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
             <tr>
                 <td>Poznámka k dokladu</td>
                 <td>Zadejte libovolný text nebo prázdnou hodnotu.</td>
                 <td>Ne</td>
                 <td>Ne</td>
             </tr>
         </tbody>
     </table>

    <h3>Kuchaři</h3>
    <h4>Ukázkový soubor CSV</h4>
    <div class="wide">
        <pre translate="no">
Product;LangId;License Name;Number;License kind;License Mode;Valid From;Valid until;SupportUntil;License Type;Asset. license key;License inv. no.;Cert. number;Request;Cost. center;Price;Web. address;Bundle?;Organization;License note;Computer;Item activ. key.;Item cost center;Item inv. no.;Item rquest;Item note;Invoice no.;Invoice no. 2;Issue date;Attachement path;Supplier;Invoice note
Microsoft Windows 2000 Professional;;Win2k;1;per device;Assurance;30.01.2007;15.12.2030;15.05.2008;float;AK-1234;IC-ALL-1234;Cert1;Pozad1;Strd1;1534;www.seznam.cz;0;Organizace;Poznamka k licenci1;PC1;AK-PC-1;StredPc1;IC-PC-1;REQ-ITM-1;Pozn PC1;CF-1234;CF-2-1234;15.08.2006;Faktury\f01.doc;DOD1;Pozn. doc. 1
Microsoft Windows XP Professional;1029;WinXP;1;per device;Assurance;15.01.2007;15.08.2030;15.05.2008;normal;AK-1234;IC-ALL-1234;Cert1;Pozad1;Strd1;1534;;0;;Poznámka k licenci1;PC1;AK-PC-1;StredPc1;IC-PC-1;REQ-ITM-2;Pozn PC1;CF-1234;CF-2-1234;15.08.2006;Faktury\f01.doc;DOD1;Pozn. doc. 1
Microsoft Windows 2000 Professional;1029;Win2k;1;per device;Assurance;15.01.2007;15.08.2030;15.05.2008;normal;AK-1234;IC-ALL-1234;Cert1;Pozad1;Strd1;1534;;0;;Poznámka k licenci1;PC2;AK-PC-2;StredPc2;IC-PC-2;REQ-ITM-3;Pozn PC2;CF-1234;CF-2-1234;15.08.2006;Faktury\f01.doc;DOD2;Pozn. doc. 2
Microsoft Windows XP Professional;1033;;2;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC1;AK-PC-1;StredPc1;IC-PC3;REQ-ITM-4;Pozn PC1;CF-8888;CF-2-1237;15.08.2008;Faktury\f02.doc;DOD1;Pozn. doc. 2
Microsoft Windows XP Professional;1033;;2;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC2;AK-PC-2;StredPc2;IC-PC2;REQ-ITM-4;Pozn PC2;CF-8888;CF-2-1237;15.08.2008;Faktury\f02.doc;DOD1;Pozn. doc. 2
</pre>
    </div>
    <h4>Import CSV s doporučenou strukturou</h4>

    <p>
        CSV obsahuje záhlaví s názvy sloupců. Data v souboru budou před importem zkontrolována. Pokud jsou údaje nesprávné, import se neprovede.<br />
        Příkazový řádek pro import    </p>
    /server <span class="console">server\sql2008 /db alvao /importovat /záhlaví</span>   <h4>Import více licenčních položek do jedné licence</h4>
    <p>
        Provedete to tak, že zkopírujete řádek s údaji v části &quot;Licence&quot; a změníte pouze část &quot;Položky licence&quot;. Příklad importu CSV jedné licence se 3 položkami    </p>
    <div class="wide">
        <pre translate="no">
Product;LangId;License Name;Number;License kind;License Mode;Valid From;Valid until;SupportUntil;License Type;Asset. license key;License inv. no.;Cert. number;Request;Cost. center;Price;Web. address;Bundle?;Organization;License note;Computer;Item activ. key.;Item cost center;Item inv. no.;Item rquest;Item note
Microsoft Windows XP Professional;1033;;3;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC1;AK-PC-1;StredPc1;IC-1;REQ-ITM-4;Pozn. 1
Microsoft Windows XP Professional;1033;;3;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC2;AK-PC-2;StredPc2;IC-2;REQ-ITM-4;Pozn. 2
Microsoft Windows XP Professional;1033;;3;per device;Assurance;15.01.2008;;15.01.2010;multi;AK-888;IC-ALL-8888;Cert2;Pozad2;Strd1;2256;;0;;Poznámka k licenci2;PC3;;StredPc2;IC-3;REQ-ITM-4;Pozn. 3
</pre>
    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        CSV obsahuje 2 položky licence, které budou přiřazeny k PC1 a PC2, a poslední položka nebude přiřazena k žádnému počítači    </div>


    <h4>Nemáme k dispozici kompletní údaje</h4>

    <p>
        Prozatím chceme nahrát neúplná data, která budou opravena, jakmile budou k dispozici podpůrné informace.<br />
        Nahráváme pouze hodnoty do několika sloupců, které jsme definovali v záhlaví. Soubor nebude kontrolován a vynutíme si import i neúplných a nesprávných údajů.<br />
        Příkazový řádek pro import    </p>

   <span class="console">ImportLic.exe /input &quot;c:\data\licence.csv&quot; /server server\sql2008 /db alvao /force /headers</span>   <h2>Režim UpdateItems</h2>
    <p>Synchronizace přiřazených licencí uživatelům s externím systémem (např. M365).</p>
    <p>Vstupní CSV obsahuje seznam licencí a uživatelů, kterým mají být tyto licence přiděleny.</p>

    <h3>Nastavení a kontrola vstupních údajů</h3>
    <p>V externím systému nastavte export do souboru CSV tak, aby přesně odpovídal popisu níže uvedených sloupců.</p>
    <p>Před zahájením importu do systému Alvao se ujistěte, že:</p>
    <ol>
        <li>Všechny licence, které chcete synchronizovat,            <ol type="a">
                <li>byly v <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general"> <em>externím systému</em></a> nastaveny na <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general"> <em>ID licence</em></a>, které se používá k přiřazení licence k externímu prostředku (záznamy pro neexistující ID se přeskočí),</li>
                <li>mají nastavený licenční model <em>na uživatele</em> a</li>
                <li>je zakázáno <em>automatické přidělování</em>.</li>
            </ol>
        </li>
        <li>Šablona objektu <em>User</em> obsahuje vlastnost <em>E-mail.</em> Tato vlastnost odpovídá uživatelům v CSV s uživateli v Alvao.</li>
        <li>Všichni uživatelé uvedení v CSV existují v AM jako objekty ve stromu a jejich e-mailová adresa je jedinečná v rámci aktivního záznamu. 
            <ol type="a">
                <li>Neexistující uživatelé jsou automaticky vytvořeni ve složce <em>Objekty ke čtení</em>.</li>
                <li>Pokud je nalezeno více uživatelů se stejnou e-mailovou adresou, je licence přidělena tomu s nižším <em>Id</em>.</li>
            </ol>
        </li>
        <li>Vstupní CSV obsahuje všechny uživatele, kterým je licence přiřazena. Ostatním bude licence automaticky odebrána.</li>
    </ol>

    <h3>Popis všech podporovaných sloupců</h3>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pořadí sloupců je pevné, nezávisí na názvu sloupce.<br />
        Importovaný soubor proto musí obsahovat všechny sloupce, pouze hodnoty v některých z nich mohou být prázdné.<br />
        To platí i v případě použití parametru <em>force</em>   </div>

    <table>
        <thead>
            <tr>
                <th>Název sloupce v CSV</th>
                <th>Možnosti</th>
                <th>Zkontrolovat</th>
                <th>Povinné</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>UId</td>
                <td>ID licence v externím systému. Viz AM Console - Evidence licencí - <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">Upravit licenci</a>.</td>
                <td>Ne</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>LicCount</td>
                <td>Celkový počet zakoupených licencí.</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>UserEmail</td>
                <td>E-mail uživatele</td>
                <td>Ano</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>UserName</td>
                <td>Jméno uživatele</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
        </tbody>
    </table>

    <h3>Vzorový soubor CSV</h3>
   <pre translate="no">
UId;LicCount;UserEmail;UserName
Alvao:POWER_BI_PRO;10;mirek.vesely@alvao.com;Mirek Veselý | ALVAO
Alvao:POWER_BI_PRO;10;david.ostry@alvao.com;David Ostrý | ALVAO
Alvao:FLOW_FREE;;david.ostry@alvao.com;</pre>
<li>Kód ke stažení <a href="licosoby.csv">zde</a></li>  <h3>Import CSV s doporučenou strukturou</h3>
    <p>
        CSV obsahuje záhlaví s názvy sloupců. Data v souboru budou před importem zkontrolována. Pokud jsou údaje nesprávné, import se neprovede.<br />
        Příkazový řádek pro import <pre translate="no">ImportLic.exe /input "c:\data\licenceItems.csv" /server server\sql /db alvao /import /mode UpdateItems /headers</pre></p>


</asp:Content>

