<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">


    <h1>Seznamy objektů</h1>
    <p>Místo na kartě <a href="../../list-of-windows/alvao-asset-management-console/tab-view/objects">Objekty</a> můžete libovolné objekty zobrazit v seznamu objektů. <a href="../../list-of-windows/alvao-asset-management-console/view/list-of-objects">Seznam objektů</a> je zobrazen v samostatném okně, a je tedy kdykoli přístupný, a vlastnosti jednotlivých objektů můžete upravovat v hlavním okně Konzoly AM. dvojklikem na objekt v <em>seznamu objektů</em> zobrazíte tento objekt v hlavním okně Konzoly AM ve stromové struktuře. Objekt v <em>Seznamu objektů</em> zůstane vybrán, i když v hlavním okně vyberete jiný objekt ve stromu.</p>
    <h3>Vytvoření nového Seznamu objektů</h3>
    <ol>
        <li>Vyberte složku ve stromu objektů (např. <em>Nákupní oddělení</em>).</li>
        <li>Přejděte na kartu <strong>Objekty</strong> - zobrazí se seznam objektů, které leží ve stromu pod vybraným objektem.</li>
        <li>Upravte nastavení zobrazení - filtrování, řazení a zobrazení/skrytí sloupců.</li>
        <li>V místní nabídce použijte příkaz <strong>Zobrazit v seznamech objektů</strong>.</li>
        <li>Otevře se okno <em>Seznamy objektů</em> a aktuální zobrazení na kartě <em>Objekty</em> se přenese do okna <em>Seznamy objektů</em> jako nové zobrazení.</li>
        <li>Klikněte na objekt v tabulce myší (nebo použijte <strong>Akce - Vybrat ve stromu</strong>, nebo stiskněte klávesu <strong>Enter</strong> na objektu, nebo použijte ikonu na panelu nástrojů) a objekt bude vybrán ve stromu objektů v hlavním okně Konzoly AM.</li>
        <li>Zobrazí se podrobnosti o objektu - Vlastnosti, Deník, ...</li>
        <li>Přepněte se zpět do okna <em>Seznamy objektů</em> (např. klávesovou zkratkou Alt+Tab) a poklepejte na jiný objekt - opět bude vybrán v hlavním okně ve stromu objektů</li>
    </ol>
    <h3>Zobrazení okna Seznamy objektů</h3>
    <ol>
        <li>V hlavní nabídce <strong>Zobrazit</strong> vyberte položku <strong>Seznamy objektů.</strong>.. nebo použijte tlačítko na hlavním panelu nástrojů.</li>
        <li>Zobrazí se okno <em>Seznamy objektů</em>, ve kterém se zobrazí stav, který byl v okně před posledním zavřením okna (pohledy, nastavení zobrazení, ...).<br />
            Uložené pohledy jsou individuální pro každého uživatele a jsou uloženy v databázi.</li>
    </ol>

</asp:Content>
