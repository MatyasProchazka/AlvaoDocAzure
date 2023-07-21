<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Šablony sestav Power BI</h1>
    <p>Základní informace o šablonách sestav Power BI naleznete v kapitole <a href="../../alvao-asset-management/searching/power-bi">Šablony sestav Power BI</a> v produktu ALVAO Asset Management.</p>

    <h2>Analýza Alvao</h2>

    <p>Sestava obsahuje následující stránky:</p>
    <ul>
        <li><strong>Historický přehled</strong> - přehled klíčových trendů v čase     <ul>
                <li><strong>Počet otevřených požadavků</strong> - v tomto grafu můžete vidět, jak se počet otevřených požadavků vyvíjí v čase. Graf by měl stagnovat nebo ještě lépe klesat. Pokud graf roste, tým pro řešení problémů pravděpodobně nestíhá řešit příchozí požadavky. Ve filtrech sestavy vyberte <a href="../../alvao-service-desk/implementation/services/service-roles">služby,</a> pro které chcete graf zobrazit, a případně změňte zobrazované období.</li>
                <li><strong>Počet požadavků</strong> - V tomto grafu můžete vidět vývoj počtu nově vytvořených, uzavřených a odstraněných požadavků v čase, tj. podrobnější pohled na přírůstky a úbytky počtu otevřených požadavků z horního grafu. Při zobrazení grafu za delší časové období můžete vidět například pravidelně se opakující sezónní špičky v zatížení služby a porovnat velikost těchto výkyvů mezi jednotlivými roky.</li>
                <li><strong>Práce v týmu (v hodinách</strong> ) - v grafu můžete vidět, kolik času strávili jednotliví pracovníci nad daným požadavkem (viz část <a href="../../alvao-service-desk/requests/work-time">Vykazování času</a>). Můžete tak zjistit, že například nárůst počtu otevřených požadavků v horním grafu není způsoben aktuálně vyšší poptávkou po službě (druhý graf), ale tím, že se řešitelský tým požadavkům aktuálně dostatečně nevěnuje (třetí graf).</li>
            </ul>
        </li>
    </ul>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Podrobnosti můžete analyzovat v grafech na této a některých dalších stránkách, viz <a href="https://docs.microsoft.com/en-us/power-bi/consumer/end-user-drill">Režim přechodu na podrobnosti ve vizuální aplikaci Power BI</a>. Například časové grafy, které ve výchozím nastavení zobrazují data po týdnech, lze přepnout na zobrazení po měsících nebo dnech. Podobně můžete přepnout mapy uživatelů na mapy organizací nebo mapy služeb na mapy kořenových služeb nebo žádostí    </div>
    <ul>
        <li><strong>Plnění první odezvy</strong> - analýza doby do první odezvy      <ul>
                <li>
                   <strong>Průměrná doba do první odezvy</strong> - graf zobrazuje vývoj průměrné doby do první odezvy v čase pro jednotlivé SLA.  </li>
                <li>
                   <strong>První odezva</strong> - ve sloupcovém grafu vidíte počet požadavků, u kterých byla první odezva splněna (zeleně) nebo nebyla splněna (červeně). Čárový graf zobrazuje průměrnou úspěšnost prvních odpovědí v procentech. Vyberte hodnotu myší a v tabulce pod grafem se zobrazí podrobnosti o příslušných požadavcích. Odkaz v posledním sloupci tabulky vede přímo na webovou stránku požadavku. </li>
            </ul>
        </li>
        <li><strong>Plnění řešení</strong> - analýza doby do vyřešení. Stránka má podobnou strukturu jako stránka <em>První splnění odpovědi</em>.</li>
        <li><strong>Minulý týden</strong> - v horní části stránky jsou zobrazeny záložky s hodnotami vybraných klíčových ukazatelů výkonnosti za uplynulý týden a jejich porovnání s předchozím týdnem a stejným týdnem v minulém roce.   Najeďte myší na aktuální hodnotu a v bublině se zobrazí podrobný graf vývoje daného KPI v průběhu roku.   Ve spodních grafech můžete vidět úspěšnost první reakce a dobu do vyřešení podle řešitele a práci lidí, kteří věnovali čas <a href="../../alvao-service-desk/requests/work-time">požadavkům</a>.</li>
        <li><strong>Průzkum spokojenosti</strong> - na této stránce najdete vyhodnocení odevzdaných <a href="../../modules/alvao-satisfaction-feedback">průzkumů spokojenosti</a>. Záložky v horní části stránky představují jednotlivé otázky průzkumu.   Každá záložka zobrazuje průměr odpovědí jako hodnotu od 1 do 4 (1=nespokojen, 4=spokojen), četnost jednotlivých odpovědí a graf vývoje průměrné odpovědi v čase. Po kliknutí na libovolnou hodnotu se ve spodní tabulce zobrazí slovní komentáře žadatelů v příslušných žádostech.   Dotazníky spokojenosti jsou součástí modulu <a href="../../modules/alvao-satisfaction-feedback">zpětné vazby spokojenosti ALVAO</a>.</li>
        <li><strong>Nové požadavky</strong> - analýza vytváření nových požadavků         <ul>
                <li><strong>Způsoby podání požadavků</strong> - v grafu můžete vidět poměr mezi jednotlivými způsoby podání požadavku.</li>
                <li><strong>Počet podaných požadavků</strong> - graf vývoje počtu požadavků vytvořených v čase podle jednotlivých způsobů podání.</li>
                <li><strong>Zatížení služby</strong> - v tabulce vidíte počet požadavků vytvořených v jednotlivých službách.</li>
                <li><strong>Nové požadavky podle služby</strong> - graf vývoje počtu vytvořených požadavků v čase podle jednotlivých služeb.</li>
            </ul>
        </li>
    </ul>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: Jak na to?</div>
        Klikněte pravým tlačítkem myši na libovolnou hodnotu v grafech, z nabídky vyberte možnost <strong>Drill through - Request table</strong> a na stránce se zobrazí příslušná tabulka požadavků. Chcete-li se vrátit na stránku sestavy, klikněte na šipku v levém horním rohu. 
    </div>
    <ul>
        <li><strong>Denní využití</strong> - sledujte počet požadavků vytvořených a vyřešených během dne.   V horním grafu vidíte počet vytvořených požadavků v jednotlivých hodinách dne a ve spodním grafu počet vyřešených požadavků. Klikněte na libovolnou hodnotu v grafech a příslušné požadavky se zobrazí ve spodní tabulce.   Zobrazené hodiny jsou v časovém pásmu UTC.</li>
        <li><strong>Analýza požadavků</strong> - grafy zobrazují počet požadavků postupně podle žadatele, řešitele, služby, stavu a SLA. Pomocí filtru <em>Celkový stav</em> můžete zobrazit pouze otevřené nebo uzavřené požadavky.</li>
        <li><strong>Práce (hodiny)</strong> - Dvě horní mapy zobrazují počet <a href="../../alvao-service-desk/requests/work-time">hodin zaúčtovaných do požadavků</a> podle služby (vlevo), resp. uživatele (vpravo). Ve spodní mapě můžete vidět vývoj nahlášených hodin v čase. Pokud chcete zobrazit pouze graf pro službu nebo uživatele, klikněte na službu nebo uživatele v mapách nad grafem.   V tabulce pod grafem se současně zobrazí příslušné požadavky.</li>
        <li><a href="../../alvao-asset-management/searching/power-bi">Zbývající stránky sestavy</a> se týkají (také) produktu ALVAO Asset Management.</li>
    </ul>

</asp:Content>
