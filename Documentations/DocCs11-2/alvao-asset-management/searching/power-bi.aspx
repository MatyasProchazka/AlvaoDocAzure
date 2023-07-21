<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Šablony sestav Power BI</h1>

    <p>Šablony sestav <a href="https://powerbi.microsoft.com/">Microsoft Power BI</a> jsou připravené sestavy, které můžete ihned použít nebo si je přizpůsobit a vytvořit vlastní sestavy podle svých potřeb.</p>
    <p>Doporučujeme používat <a href="https://docs.microsoft.com/en-us/power-bi/fundamentals/power-bi-service-overview">službu Power BI</a>, která je součástí placeného předplatného <a href="https://powerbi.microsoft.com/en-us/pricing/">Power BI Pro</a> a vyšší. Tato služba mimo jiné umožňuje pravidelně aktualizovat datovou sadu sestav, např. jednou denně v nočních hodinách, kdy se mírné zpomalení aplikací v důsledku aktualizace dat týká jen minima uživatelů. Samotné zobrazení sestav již nezpomaluje odezvu aplikací, protože se používají pouze data z aktualizované datové sady.</p>
    <p>Další informace o aplikaci Power BI, výukové programy a kurzy naleznete v <a href="https://docs.microsoft.com/en-us/power-bi/">dokumentaci k aplikaci Power BI</a>.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Alternativně si můžete přehledy prohlížet také v bezplatné aplikaci <em>Power BI Desktop</em>. Aby aktualizace datové sady během běžné pracovní doby nezpomalovala odezvu aplikací Alvao, doporučujeme k aktualizaci datové sady používat <a href="../../alvao-asset-management/implementation/analytic-database">analytickou databázi</a>   </div>

    <h2>Instalace</h2>

    <ol>
        <li>Stáhněte si šablonu sestavy z aplikace <a href="https://www.alvao.com/en/download/">ALVAO Download</a>.</li>
        <li>Nainstalujte aplikaci <a href="https://powerbi.microsoft.com/en-us/desktop/">Power BI Desktop</a> a otevřete šablonu sestavy.</li>
        <li>Zobrazte obsah sestavy na základě připravených modelových dat.</li>
        <li>Připojte sestavu k databázi Alvao:<ol type="i">
            <li>Na kartě <strong>Domů</strong> použijte příkaz <strong>Transformovat data</strong>.</li>
            <li>Do sloupce <strong>Dotazy</strong> zadejte hodnoty parametrů          <ol>
                    <li><strong>SqlServer</strong> - zadejte název svého SQL Serveru.</li>
                    <li><strong>Database</strong> - zadejte název své databáze.</li>
                    <li><strong>HistoryMonths</strong> - volitelně změňte délku historie protokolu požadavků v měsících, která se má načíst do sestavy. Starší záznamy se do sestavy nenačítají. Čím větší hodnotu zadáte, tím déle bude aktualizace datové sady trvat a tím větší bude velikost datové sady.<br />
                        <div class="wide">
                            <img src="power_bi_installation.png" />
                        </div>
                    </li>
                </ol>
            </li>
            <li>Nastavení uložte pomocí příkazu <strong>Zavřít a použít</strong>.</li>
            <li>Zadejte <strong>jméno a heslo pro</strong> připojení k databázi.<br />
                Použitý uživatelský účet musí mít alespoň právo <em>SELECT</em> ve schématu databáze <a href="../../alvao-asset-management/implementation/customization/database#report_view_list">Query</a>. Tím jednoduše zajistíte například roli <em>db_datareader</em> v celé databázi.<br />
                Do datové sady se z databáze načtou pouze informace, ke kterým má použitý účet Alvao přístup, viz   <ul>
                    <li>Správa majetku - oprávnění ke <a href="../../alvao-asset-management/objects-and-properties/object-access-rights">čtení objektů</a> a <a href="../../alvao-asset-management/objects-and-properties/property-security">hodnot vlastností</a>;</li>
                    <li>Service Desk - oprávnění k <a href="../../alvao-service-desk/implementation/services/service-roles">prohlížení požadavků</a>, tj. role <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/service-authorization">Reader</a> v daných službách;</li>
                    <li>Service Desk - oprávnění ke čtení informací o osobách a organizacích, tj. členství ve skupině <a href="../../alvao-asset-management/implementation/users/groups">Contact readers</a> nebo <em>Contact administors</em>.</li>
                </ul>
            </li>
        </ol>
        </li>
        <li>Počkejte, až se data načtou do sestavy.</li>
        <li>Nahrajte sestavu do pracovního prostoru ve <em>službě Power BI</em> pomocí příkazu <strong>Publikovat</strong>.</li>
        <li>V nastavení datové sady zapněte pravidelné aktualizace každý den v noci.</li>
        <li>Kliknutím na sestavu zobrazíte danou sestavu.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Rozsah zobrazovaných dat můžete přizpůsobit pomocí filtrů, které najdete vždy na pravém okraji sestavy. 
    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Sdílejte sestavu s ostatními uživateli, kteří mají licenci Power BI Pro nebo vyšší. 
    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Můžete vytvářet vlastní sestavy na základě datových sad vytvořených ze šablon sestav ve službě Power BI. Tímto způsobem budou datové sady sdíleny a pro danou sestavu budou aktualizovány pouze jednou. 
    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
       <a href="https://learn.microsoft.com/en-us/power-bi/collaborate-share/end-user-subscribe?tabs=creator">Přihlaste</a> sebe i ostatní k odběru sestav Power BI. Budete dostávat e-mail podle vámi nastaveného plánu. Nebo zkuste použít službu <a href="https://learn.microsoft.com/en-us/power-automate/getting-started">MS Power Automate</a> pro pokročilé nastavení. Pomocí služby Power Automate můžete <a href="https://learn.microsoft.com/en-us/power-bi/collaborate-share/service-automate-power-bi-report-export">exportovat a distribuovat sestavy Power BI</a> v různých formátech a scénářích    </div>

    <h2>Zobrazení vlastních polí požadavků</h2>
    <p>Vlastní pole požadavků můžete do sestavy přidat pomocí těchto kroků:</p>
    <ol>
        <li>Na kartě <strong>Domů</strong> použijte příkaz <strong>Přenést data</strong>.</li>
        <li>Ve sloupci <strong>Dotazy</strong> otevřete dotaz <strong>Request2Enu</strong>.</li>
        <li>Zadejte požadovaná vlastní pole na správné místo v dotazu.</li>
    </ol>
   <img src="power_bi_custom_field.png" width="801" height="262" />

    <h2>Alvarová analýza</h2>

    <p>Tato sestava obsahuje sadu stránek se základními přehledy služeb, požadavků a zařízení v systému Alvao.</p>
    <p>Šablona této sestavy je uložena v souboru AlvaoAnalysis.pbix.</p>
    <p><a href="../../alvao-service-desk/evaluation-of-system-operation/power-bi">První stránky sestavy</a> se týkají produktu ALVAO Service Desk. Po nich následují stránky pro produkt ALVAO Asset Management:</p>
    <ul>
        <li><strong>Požadavky na objekty</strong> - v horní části stránky jsou v grafu zobrazeny objekty, ke kterým je v aplikaci ALVAO Service Desk přiřazen nejvyšší počet požadavků. Vyberte objekt v grafu a příslušné požadavky se zobrazí ve spodní části.</li>
        <li><strong>Objekty</strong> - v horní části stránky můžete v grafech zobrazit počet objektů podle výrobce, typu objektu a modelu zařízení. Vyberte hodnotu myší a ve spodní části stránky se zobrazí podrobnosti o odpovídajících objektech.</li>
        <li><strong>Počítače</strong> - v horní části stránky můžete v grafech zobrazit počet počítačů podle výrobce, typu počítače (např. stolní počítač, notebook, ...) a operačního systému. Vyberte hodnotu myší a ve spodní části stránky se zobrazí podrobnosti o příslušných počítačích.</li>
        <li><strong>Stáří objektů</strong> - v horní části stránky můžete vidět graf zobrazující počet objektů podle jejich stáří v letech s barevným rozdělením podle typu objektu. Vyberte libovolnou hodnotu v grafu a odpovídající objekty se zobrazí ve spodní části stránky.</li>
        <li><strong>Nainstalovaný software</strong> - v horní části stránky můžete vidět počty softwaru nainstalovaného v počítačích v grafech podle vydavatele a produktu. Vyberte hodnotu a ve spodní části stránky se zobrazí podrobnosti o počítači, na kterém je software nainstalován.</li>
    </ul>
    <p>Každý uživatel v přehledu vidí pouze ty objekty a požadavky, které má v systému Alvao povoleno zobrazovat.</p>
    <p>Sestava je k dispozici pouze v angličtině.</p>
</asp:Content>
