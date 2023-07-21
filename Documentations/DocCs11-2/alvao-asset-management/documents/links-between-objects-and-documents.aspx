<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Propojení dokumentu s objektem</h1>
    <p>Každý dokument může být propojen s jedním nebo více objekty. Například faktura za nákup počítače je propojena s počítačem. Zpráva o předání počítače mezi dvěma pracovníky je propojena s počítačem a také s předávajícím a přebírajícím pracovníkem. Pomocí propojení dokumentů s objekty lze například vyhledat všechny předávací protokoly týkající se počítače.</p>

    <h2>Vytvoření odkazu</h2>
    <ol>
        <li>Vyberte objekt ve stromu objektů.</li>
        <li>V <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a> vyberte kartu <strong>Deník</strong>, klikněte pravým tlačítkem myši do tabulky a z kontextové nabídky vyberte položku <strong>Deník</strong>. <strong>Přidat - Odkaz na dokument.</strong></li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/documents">Dokumenty</a>, ve kterém dvakrát klikněte na dokument, který chcete propojit s objektem.</li>
    </ol>
    <div class="tooltip">
        <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o dokument, který se nachází v dokumentu, můžete jej přidat k dokumentu:</div>
        <p>
            V <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/documents">Dokumentech</a> můžete dokument vyhledat pomocí funkcí pro vyhledávání v tabulce, viz <a href="../working-with-tables/tables-searching">Vyhledání hodnot</a> a <a href="../working-with-tables/tables-filtering">Filtr </a>    </p>
    </div>

    <h2>Odstranění odkazu</h2>
    <ol>
        <li>Vyberte objekt ve stromu objektů.</li>
        <li>V <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a> vyberte záložku <strong>Deník</strong>, klikněte pravým tlačítkem myši na dokument, jehož vazbu na objekt chcete odstranit, a z nabídky vyberte příkaz <strong>Odstranit</strong>.</li>
    </ol>
    <p>Poznámka: Chcete-li zobrazit odstraněné vazby  na dokumenty, přejděte na kartu <strong>Diář</strong> a v místní nabídce aktivujte možnost "Tabulka - Zobrazit odstraněné položky".</p>

</asp:Content>
