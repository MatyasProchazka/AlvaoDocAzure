<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nový dotaz na data</h1>
    <p>V tomto formuláři můžete vytvořit nový <a href="../data-queries">datový dotaz</a>.</p>

    <p>Možnosti:</p>
    <ul>
        <li><strong>Název</strong> - zadejte jedinečný název datového dotazu.</li>
        <li><strong>Popis</strong> - zadejte popis datového dotazu.</li>
        <li><strong>Skrýt v nabídkách</strong> - zaškrtnutím této možnosti skryjete tento datový dotaz v seznamu dostupných datových dotazů na stránce <a href="../../data-queries">Datové dotazy</a>. Datový dotaz bude stále přístupný prostřednictvím své přímé url adresy, kterou lze použít ve <a href="../../../../modules/alvao-am-custom-apps/applications/i-entity-tab">vlastní kartě</a>, vlastním <a href="../../../../modules/alvao-am-custom-apps/applications/i-entity-command">příkazu</a> atd.</li>
    </ul>

</asp:Content>
