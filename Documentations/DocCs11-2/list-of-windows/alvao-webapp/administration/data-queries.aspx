<%@ Page masterpagefile="~/doc.master" Language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Dotazy na data</h1>
    <p>
        Na této stránce můžete spravovat <em>datové dotazy</em> v systému Alvao. <em>Datový dotaz</em> je vlastní dotaz SQL definovaný <a href="../../../alvao-asset-management/implementation/users/groups">správci</a> nebo <a href="../../../alvao-asset-management/implementation/users/groups">správci konfigurace</a>. Určení uživatelé pak mohou výsledky dotazů zobrazit na stránce <a href="../data-queries">Datové dotazy</a>.</p>

    <p>Možnosti: V nabídce je možnost zadávání datových dotazů:</p>
    <ul>
        <li><strong>Příkazový panel</strong>    <ul>
                <li><a href="data-queries/new">Nový datový dotaz</a> - vytvoření nového datového dotazu.</li>
                <li><strong>Upravit</strong> - úprava vlastností vybraného datového dotazu. Nabídka obsahuje stejné příkazy jako bloky na <a href="data-queries/data-query">panelu vybraného datového dotazu</a> vpravo      </li>
                <li><strong>Povolit</strong> - povolení vybraných dotazů. Povolené dotazy jsou viditelné pro určené (viz <a href="data-queries/data-query/permissions">Oprávnění</a>) uživatele na stránce <a href="../data-queries">Datové dotazy</a>.</li>
                <li><strong>Zakázat</strong> - zakáže vybrané dotazy. Zakázané dotazy nejsou uživatelům přístupné.</li>
                <li><strong>Odstranit</strong> - trvale odstraní vybrané dotazy.</li>
                <li><strong>User view (Zobrazení pro uživatele)</strong> - otevře stránku <a href="../data-queries">Data queries (Datové dotazy)</a> s vybranými dotazy na nové kartě prohlížeče. Pomocí tohoto příkazu můžete zkontrolovat výsledky dotazu z pohledu uživatele.</li>
            </ul>
        </li>
        <li><strong>Tabulka datových dotazů</strong> - obsahuje všechny datové dotazy v systému Alvao. Tabulku můžete <a href="../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
        <li><strong>Vybraný datový dotaz</strong> - po výběru dotazu v tabulce se vpravo zobrazí <a href="data-queries/data-query">panel s</a> informacemi o vybraném datovém dotazu.</li>
    </ul>

    </asp:Content>
