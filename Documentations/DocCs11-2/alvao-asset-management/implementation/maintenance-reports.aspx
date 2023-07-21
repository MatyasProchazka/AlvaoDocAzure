<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Zprávy o údržbě</h1>

    <p>
        Produkt ALVAO Asset Management obsahuje dva reporty vhodné pro upozornění manažerů na konkrétní nadcházející události        <br />
        Sestava <strong>Objekty s blížícím se datem</strong> (Expiring objects csy.rdl, Expiring objects enu.rdl) umožňuje nastavit upozornění na libovolné datum ve vlastnictví objektu podle definovaného předstihu (počet dní do budoucna)        <br />
        Hlášení <strong>Licence s blížícím se termínem</strong> (Expiring licenses csy.rdl, Expiring licenses enu.rdl) umožňuje nastavit upozornění na datum vypršení platnosti nebo podpory licence    </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Hlášení jsou pouze v češtině a angličtině    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Místo <em>hlášení o údržbě</em> můžete také používat <a href="../../periodic-alerts">periodická upozornění</a>, která vás upozorní na blížící se termíny pro licence a zařízení    </div>

    <h2>Instalace</h2>
    Soubory RDL naleznete na <a href="https://www.alvao.com/download">adrese www.alvao.com/download</a> pod produktem Asset Management v archivu MaintenanceReports.zip.<br />
    Popis instalace hlášení naleznete v části <a href="installation">Instalace hlášení ve službě Microsoft SQL Server Reporting Services</a>   <h2>Objekty s blížícím se termínem uzávěrky</h2>

    Sestava je vhodná pro upozornění na blížící se události/plánovanou údržbu v evidenci majetku.<br />
    U požadovaných zařízení je třeba zaznamenat vlastnost, která obsahuje nějaké budoucí datum. Toto datum může označovat například konec záruky, datum příští prohlídky, datum příští výměny baterie UPS apod.<br />
    Na základě tohoto data a zadaného předběžného data se pak vygeneruje sestava, která bude obsahovat všechny objekty, které mají toto datum v zadaném předběžném datu, aby měl technik dostatek času na reakci na danou událost    <h3>Parametry</h3>

    <ul>
        <li><strong>Organizační složka</strong> - zadejte cestu ke složce ve stromu, pro kterou chcete vygenerovat hlášení. Pokud nic nezadáte, bude zpráva vygenerována pro celý záznam.</li>
        <li><strong>Druh objektu</strong> - z nabídky vyberte jeden nebo více typů objektů, které chcete v hlášení zobrazit.</li>
        <li><strong>Vlastnost</strong> - z nabídky vyberte vlastnost, ve které je uloženo datum plánovaného data.<div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Lze vybrat pouze vlastnost typu data    </div>
        </li>
        <li><strong>Filtr</strong> - zadejte vlastní podmínku pro filtrování objektů podle hodnot libovolné vlastnosti ve formě podmínky SQL.<br />
            Příklad: "([Výrobce] = 'EPSON' NEBO [Výrobce] LIKE 'Gigabyte%') AND [Prodejce] LIKE 'Softcom%'"        </li>
        <li><strong>Advance (dny</strong> ) - určete, kolik dní před uzávěrkou se mají objekty v sestavě zobrazit.</li>
    </ul>

    <h2>Licence s blížící se uzávěrkou</h2>

    Sestava slouží k upozornění na končící platnost licencí a končící údržbu licencí.<br />
    Licence jsou vybírány na základě zadaného předstihu    <h3>Parametry</h3>

    <ul>
        <li><strong>Datum</strong> - vyberte datum, které vás v hlášení zajímá - "Platí do" nebo "Upgrade/podpora do".</li>
        <li><strong>Filtr</strong> - zadejte vlastní podmínku pro filtrování licencí podle výrobce ve formě podmínky SQL.<br />
            Příklad: "Výrobce] LIKE 'Microsoft %' OR [Výrobce] = 'ALVAO s.r.o.'"        </li>
        <li><strong>Advance (dny</strong> ) - zadejte, kolik dní před termínem se mají licence zobrazit v sestavě.</li>
    </ul>

</asp:Content>
