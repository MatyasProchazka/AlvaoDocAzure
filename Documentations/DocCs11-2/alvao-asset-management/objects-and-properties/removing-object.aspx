<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Odstranění objektu</h1>
    <ol>
        <li>Ve stromu klikněte pravým tlačítkem myši na objekt, který chcete odstranit.</li>
        <li>Z nabídky vyberte příkaz - Odstranit (nebo použijte klávesu <span class="key">DEL</span> ).</li>
        <li>Po potvrzení kontrolního dotazu se může na obrazovce objevit okno <a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a>, do kterého zadáte skutečné datum a čas odstranění, pokud změnu do databáze zapisujete dodatečně.</li>
        <li>Poté objekt ze stromu zmizí.</li></ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud v okně <a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a> pro zadání data a času povolíte volbu <strong>Příště toto okno nezobrazovat a použít aktuální datum a čas</strong>, okno se příště neotevře. Můžete ji opět povolit pomocí <strong>Nástroje - Nastavení</strong>, kde na kartě <strong>Obecné</strong> vypněte volbu <strong>Více Vytvářet záznamy historie s aktuálním datem a časem</strong>   </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění: V případě, že se jedná o historické údaje, je nutné, abyste si je nechali zobrazit:</div>
        Pokud jsou povolena <a href="object-access-rights">Práva ve stromu objektů</a>, nelze odstranit objekty, pro které uživatel nemá práva na odstranění všech podřízených objektů    </div>


    <p>
        Objekt nebyl z databáze zcela odstraněn, ale byl pouze přesunut do koše. Koš není ve stromu objektů normálně viditelný. Jeho zobrazení můžete povolit pomocí příkazu <strong>Zobrazení - Skryté objekty</strong> (to může provést pouze uživatel s rolí <i>správce správy majetku</i> )    </p>
    <p>Objekt vyjmutý z koše můžete přesunout zpět do stromu.</p>
    <p>
        Obsah koše můžete z databáze nevratně odstranit kliknutím pravým tlačítkem myši na objekt koše ve stromu a výběrem příkazu z nabídky - Vyprázdnit koš    </p>
    <p>Koš může vyprázdnit pouze uživatel s právy správce.</p>

</asp:Content>
