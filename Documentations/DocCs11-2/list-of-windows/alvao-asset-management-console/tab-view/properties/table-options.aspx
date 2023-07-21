<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Tabulka</h1>
<p>Nabídka umožňuje různé pohledy a reorganizaci objektů zobrazených v <a href="../../../../alvao-asset-management/searching/list-of-objects">Seznamu objektů</a>. Práce s tabulkami je podrobněji popsána v kapitole <a href="../../../../alvao-asset-management/working-with-tables">Práce s tabulkami</a>.</p>
<p>Možnosti: V nabídce jsou uvedeny možnosti, které se týkají tabulky:</p>
	<ul>
 <li><strong>Filtrovat podle výběru</strong> - přidá vybranou hodnotu do filtru sloupce <em>Název objektu</em>.</li>
 <li><strong>Filtr s vyloučením výběru</strong> - vyfiltruje ze sloupce <em>Název objektu</em> všechny položky s aktuálně vybranou hodnotou.</li>
 <li><strong>Povolit filtr</strong> - zobrazí pole pro zadání filtru a doplní naposledy použité filtry.</li>
 <li><strong>Obnovit filtr</strong> - zruší filtry ve všech sloupcích a skryje pole pro zadání filtru.</li>
 <li><a href="../../object-tree">Zobrazit strom</a> - zobrazí objekt v levé části okna ve stromové struktuře. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Chcete-li vytvořit stromovou strukturu, musíte v tabulce vybrat sloupec, podle kterého chcete objekty seskupit.<br/>Ve stromu se zobrazí všechny objekty, takže strom ignoruje filtrování v tabulce. </div></li>
 <li><strong>Zobrazit prvních 250 položek</strong> - tuto volbu vypněte, pokud chcete opravdu zobrazit větší počet položek. Načítání může chvíli trvat.</li>
 <li><strong>Uložit jako</strong> - uloží obsah tabulky do textového souboru (csv, html).</li>
 <li><strong>Analyzovat v tabulce MS Excel</strong> - zobrazí obsah tabulky v tabulce MS Excel.</li>
 <li><strong>Kopírovat</strong> - zkopíruje obsah vybraných buněk.</li>
 <li><strong>Kopírovat buňku</strong></li>
 <li><strong>Tisk</strong></li>
 <li><strong>Přerušit načítání</strong> - přeruší načítání obsahu tabulky (např. pokud trvá příliš dlouho).</li>
 <li><strong>Automaticky obnovovat</strong> - nastavení intervalu automatického obnovování obsahu tabulky v sekundách.</li>
 <li><strong>Obnovit</strong> - obnovení obsahu tabulky.</li>
	</ul>
</asp:Content>
