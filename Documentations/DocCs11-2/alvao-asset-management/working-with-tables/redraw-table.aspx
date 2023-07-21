<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Překreslení tabulky</h1>

    <p>
        Pomocí příkazu <strong>Tabulka - Obnovit</strong> z místní nabídky nebo stisknutím klávesy <span class="key">F5</span> můžete kdykoli překreslit obsah tabulky podle aktuálních dat v databázi.<br />
        Příkazem <strong>Tabulka - Automaticky obnovit</strong> z místní nabídky můžete nastavit časový interval, po kterém se má obsah tabulky automaticky překreslit    </p>
    <p>Většina tabulek může svůj obsah obnovovat na pozadí. Pokud se při najetí kurzorem myši na tabulku zobrazí probíhající operace (přesýpací hodiny), tabulka obnovuje obsah na pozadí. Pokud obnovení trvá déle, zobrazí se v tabulce indikátor načítání a operaci lze přerušit tlačítkem <strong>Přerušit načítání</strong>.</p>
    <p>Pokud se obnovuje velký počet záznamů, tabulka se postupně zaplňuje záznamy. Nově načtené záznamy se vloží na konec tabulky. Operaci lze přerušit pomocí klávesy <span class="key">ESC</span> nebo příkazu <strong>Tabulka - Přerušit načítání</strong> z místní nabídky.</p>


</asp:Content>
