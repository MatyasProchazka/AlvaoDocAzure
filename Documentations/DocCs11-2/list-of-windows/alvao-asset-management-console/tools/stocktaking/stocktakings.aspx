<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Kontrolní seznam majetku</h1>
<p>V tabulce je uveden seznam všech <a href="../../../../modules/alvao-inventory-audits/stocktaking">kontrol aktiv</a>. V jednom okamžiku může být otevřen pouze jeden soupis.</p>
<p>Volby: 1:</p>
<ul>
 <li><strong>Otevřít</strong> - otevře vybraný soupis v <a href="../stocktaking">hlavním okně kontroly majetku</a>.</li>
 <li><strong>Přidat</strong> - přidání nové kontroly majetku do seznamu. Tento příkaz je k dispozici pouze v případě, že jsou všechny existující inventury uzavřeny.</li>
 <li><a href="edit">Upravit</a> - upraví vybranou kontrolu majetku.</li>
 <li><strong>Odstranit</strong> - vymazání vybrané kontroly majetku.</li>
</ul>
<p>Možnosti místní nabídky:</p>
<ul>
	<li><strong>Záznam do deníku objektu</strong> - zapíše výsledky inventury do deníku objektu. Lze provést pouze v případě, že jsou <a href="../../../../modules/alvao-inventory-audits/stocktaking#close">splněny podmínky zápisu</a>.</li>
	<li>
<a href="../../../../list-of-windows/alvao-asset-management-console/tab-view/properties/table-options">Tabulka</a>- nabídka umožňuje <a href="../../../../alvao-asset-management/working-with-tables">upravit tabulku</a>. Například vytvořit filtry, <a href="../../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazit více sloupců.</li>
 <li>
<a href="../../../../list-of-windows/alvao-asset-management-console/tab-view/properties/find">Najít</a> - vyhledání textu v zobrazené tabulce.</li>
</ul>
</asp:Content>
