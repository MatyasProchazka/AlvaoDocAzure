<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Analýza provozu webových aplikací ALVAO</h1>

    <h2>Vypnutí analýzy provozu pro aplikaci ALVAO WebApp</h2>
    <ol>
        <li>Vytvořte si účet Google (pokud účet Google máte, tento krok přeskočte).</li>
        <li>Přihlaste se na <a href="https://analytics.google.com/analytics/web/#/provision">adrese https://analytics.google.com/analytics/web/#/provision</a> pomocí svého účtu Google.</li>
        <li>Klikněte na možnost <strong>Spustit měření</strong>.</li>
        <li>Vyplňte formulář pro vytvoření nového účtu Google Analytics.</li>
        <ul>
            <li><strong>Vytvoření účtu</strong></li>
            <ol>
                <li>Zadejte název účtu Google Analytics (například název vaší společnosti) a nastavte sdílení informací o účtu.</li>
            </ol>
            <li><strong>Nastavení služby</strong></li>
            <ol>
                <li>Zadejte název stránky, na které máte aplikaci ALVAO WebApp. Například vaše_jméno_společnosti_WebApp.</li>
                <li>Vyberte správné <em>časové pásmo</em> a <em>měnu</em>.</li>
            </ol>
            <li><strong>Informace o vaší společnosti</strong></li>
            <ol>
                <li>Vyplňte informace o své společnosti.</li>
            </ol>
        </ul>
        <li>Po přijetí smluvních podmínek a vytvoření účtu v sekci <strong>Správce</strong> vyberte v nabídce <strong>Datové toky</strong> možnost <em>Web.</em> </li>
        <li>Zadejte adresu URL webu, na kterém máte aplikaci ALVAO WebApp. Adresu URL můžete zkopírovat z nabídky <strong>WebApp - Administration (Správa) - Settings (Nastavení) - WebApp - WebApp (URL</strong> ) a zadejte název datového toku a klikněte na tlačítko <strong>Create stream (Vytvořit datový tok</strong>).</li>
        <li>V nově otevřeném okně s <strong>podrobnostmi o webovém streamu</strong> zadejte hodnotu <strong>ID měření</strong> do databáze pomocí následujícího příkazu         <br />
           <font face="Consolas" size="2" color="#0000ff">INSERT INTO</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#008080">sProperty</font><font face="Consolas" size="2" color="#808080">,</font> <font face="Consolas" size="2" color="#00808080">sPropertyValue</font><font face="Consolas" size="2" color="#808080">)</font> <font face="Consolas" size="2" color="#0000ff">VALUES</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#FF0000">'WebApp.GA.</font><font face="Consolas" size="2" color="#808080">TrackingID</font>', '<font face="Consolas" size="2" color="#80808080">UA-XXXXXX-Y</font>')            <br />

            kde bude místo UA-XXXXXX-Y vložena hodnota <strong>Measurement ID</strong> a uvozovky budou zachovány.</li>
        <li>První statistiky by měly být k dispozici přibližně po 24 hodinách. Statistiky si můžete prohlédnout po přihlášení do svého účtu Google Analytics kliknutím na <strong>záložku</strong>Reports</strong>.</li>
    </ol>

    <h2>Změna skriptů analýzy návštěvnosti</h2>

    <ol>
        <li>Přihlaste se na adrese: <a href="https://analytics.google.com/analytics/web/provision/#/provision">https://analytics.google.com/analytics/web/provision/#/provision </a>pomocí svého účtu Google.</li>
        <li>Po přihlášení pod položkou <strong>Admin (Správce)</strong> vyberte v nabídce <strong>Data Streams (Datové toky)</strong> příslušnou webovou stránku.</li>
        <li>Po otevření okna s <strong>podrobnostmi o webovém proudu</strong> vyberte v části <strong>Pokyny k tagování</strong> možnost <strong>Přidat nový tag na stránce - Globální tag webu (gtag.js) Tuto možnost použijte, pokud používáte nástroj pro tvorbu webových stránek nebo web hostovaný systémem CMS</strong> pro zobrazení kódu pro analýzu návštěvnosti.</li>
        <li>Zkopírujte a vložte zobrazený kód do tohoto skriptu SQL:<br />
           <font face="Consolas" size="2" color="#ff00ff">UPDATE</font> <font face="Consolas" size="2" color="#008080">tProperty</font>        <br />
           <font face="Consolas" size="2" color="#0000ff">SET</font><font face="Consolas" size="2" color="#008080">sPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> <font face="Consolas" size="2" color="#FF0000">'your_adjusted_code_for_measuring_visit_analysis</font>'            <br />
           <font face="Consolas" size="2" color="#0000ff">WHERE</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">'WebApp.GA.TrackingCode</font><font face="Consolas" size="2" color="#808080">'</font>;</li>
        <li>Ve <strong>vloženém kódu</strong> nahraďte všechny apostrofy uvozovkami.</li>
        <li>Nahraďte všechny výskyty <strong>ID měření</strong> výrazem "{0}".</li>
        <li>Spusťte skript SQL.</li>

    </ol>

    <h2>Změna ID měření pro analýzu provozu</h2>
    <p>
        Změňte <strong>ID měření</strong> v databázi spuštěním následujícího příkazu v databázi        <br />

       <font face="Consolas" size="2" color="#ff00ff">UPDATE</font> <font face="Consolas" size="2" color="#008080">tProperty</font>       <br />
       <font face="Consolas" size="2" color="#0000ff">SET</font><font face="Consolas" size="2" color="#008080">sPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> <font face="Consolas" size="2" color="#FF0000">'UA-XXXX-Y</font>'        <br />
       <font face="Consolas" size="2" color="#0000ff">WHERE</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">'WebApp.GA.</font><font face="Consolas" size="2" color="#808080">TrackingID</font>'        <br />
        kde "UA-XXXX-Y" je nové <strong>ID měření</strong>   </p>

    <h2>Vypnutí sledování vyhledávání</h2>
    <ol>
        <li>Přihlaste se na <a href="https://analytics.google.com/analytics/web/provision/#/provision">adrese https://analytics.google.com/analytics/web/provision/#/provision</a> pomocí svého účtu Google.</li>
        <li>Po přihlášení pod položkou <strong>Admin (Správce)</strong> vyberte v nabídce <strong>Data Streams (Datové toky)</strong> příslušnou webovou stránku.</li>
        <li>Po otevření okna s <strong>podrobnostmi o webovém datovém toku</strong> vyberte v části <strong>Enhanced Measurement (Rozšířené měření)</strong> ikonu ozubeného kola. </li>
        <li>Po otevření nového okna ponechte v sekci <strong>Site search - Show advanced settings (Vyhledávání na webu - Zobrazit rozšířená nastavení</strong> ) v poli <strong>Search Term Query Parameter (Parametr dotazu na vyhledávací termín)</strong> hodnotu "search" (vyhledávání), ostatní smažte.</li>
        <li>Nastavení uložte pomocí tlačítka <strong>Uložit</strong>.</li>
        <li>Statistiky vyhledávání naleznete v bočním panelu vlevo v části <strong>Přehledy - Zapojení - Události</strong>.</li>
    </ol>

</asp:Content>
