<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Dotaz SQL a databázový skript</h1>

    <p>
        Data, která nelze získat z databáze <a href="../../alvao-asset-management/searching/looking-up-objects">pomocí vyhledávání</a> nebo <a href="../../alvao-asset-management/searching/query">dotazů</a>, lze získat a případně s nimi manipulovat přímo v databázi SQL. K napsání SQL dotazu nebo skriptu potřebujete alespoň základní znalosti struktury <a href="../../alvao-asset-management/implementation/customization/database">databáze Alvao</a> a psaní <a href="../../alvao-asset-management/searching/database-sql/samples">SQL dotazů</a>. Případně se obraťte na technickou podporu ALVAO    </p>

    <p>Potřebné příkazy najdete v nabídce <strong>AM Console - Nástroje</strong> - <a href="../../list-of-windows/alvao-asset-management-console/tools/database">Databáze</a>.</p>

    <h2>Vytváření dotazů SQL</h2>

    <ol>
        <li>Při vytváření dotazů SQL doporučujeme používat <a href="../../alvao-asset-management/implementation/customization/database#report_view_list">pohledy</a> vytvořené pro snadnější přístup k datům v Asset Managementu. Všechny pohledy určené pro přístup k informacím AM jsou v databázovém schématu &quot;Query&quot;.</li>
        <li>SQL dotazy umožňují provádět pouze dotazy typu SELECT.</li>
        <li>Vždy zadávejte vlastní názvy sloupců ve tvaru <b>. pohled.[Sloupec]</b>, například <b>Uzel.[Sériové číslo]</b>. Sloupce můžete přejmenovat pomocí příkazu AS, například <b>SELECT View.[Column]AS [View Column]</b>.</li>

        <li>V dotazech nepoužívejte <b>SELECT * FROM</b>, ale vždy vypisujte konkrétní sloupce, jinak může dojít ke zpomalení zobrazení výsledků.</li>
        <li>Pohledy, které obsahují vlastnosti objektů, obsahují vždy 100 nejpoužívanějších vlastností objektů. Aktualizaci těchto pohledů (jejich předefinování pro 100 nejpoužívanějších vlastností) lze provést v <a href="../../list-of-windows/alvao-webapp/administration/database-maintenance">aplikaci ALVAO WebApp - Správa - Údržba databáze - Aktualizace dat pro přehledy</a></li>
        <li>Před vytvářením vlastních dotazů nad pohledy doporučujeme podívat se na níže popsané příklady použití pohledů.</li>
    </ol>

</asp:Content>
