<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Vlastnosti</h1>

<p>V horní části karty <em>Vlastnosti</em> je tabulka vlastností aktuálně vybraného objektu ve <a href="../object-tree">stromu</a> a ve spodní části je <a href="diary">záznam</a> tohoto objektu. <br/>
Ikony stavu vlastností mají následující význam:</p>
 
 <ul>
  <li><img src="properties/PropInh.jpg" />Zděděná vlastnost - vlastnost je zděděna do tohoto objektu z nadřazeného objektu, jehož název je uveden ve sloupci <em>Objekt</em>.</li>
  <li><img src="properties/prop_locked.jpg" />Pouze pro čtení - hodnota vlastnosti je načtena z Active Directory nebo hw detekce, a proto ji nelze ručně měnit.</li>
  <li><img src="properties/alert.jpg" />Alert - s vlastností není něco v pořádku. Najeďte na ikonu a v bublině se zobrazí podrobnější popis chyby.</li>
 </ul>
 
<p>Možnosti místní nabídky na kartě <strong>Vlastnosti</strong>:</p>
	<ul>
 <li>
 
 <a href="../tools/lists/properties-definition">Nová vlastnost</a> - přidá novou vlastnost k vybranému objektu ve stromu.</li>
 <li><strong>Kopírovat</strong> - zkopíruje vybranou vlastnost.</li>
 <li><strong>Vložit</strong> - vloží vlastnost ze schránky (např. zkopírovanou z jiného objektu).</li>
 <li><strong>Odstranit</strong> - odstraní vybranou vlastnost z vlastností vybraného objektu ve stromu.</li>
 <li><strong>Funkce</strong><ul><li><a href="../../../alvao-asset-management/objects-and-properties/functions">Součet</a> - sečtení hodnoty vybrané vlastnosti ve všech podobjektech objektu vybraného ve stromu.</li></ul></li>
 <li><strong>Přejít na nadřazený objekt</strong> - přechod ve stromu na objekt, z něhož je vybraná vlastnost zděděna (pomocí nabídky <strong>Přejít</strong> - příkaz <strong>Zpět</strong> lze opět zobrazit původní objekt).</li>
 <li><a href="properties/table-options">Tabulka</a> - nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">upravit tabulku</a>. Například vytvářet filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazovat více řádků.</li>
 <li><a href="properties/find">Najít</a> - vyhledávání textu v zobrazené tabulce.</li>
 <li><strong>Vložit čárový kód</strong> - vloží kód ze čtečky čárových kódů do vybraného objektu.</li>
 <li><strong>Vygenerovat hodnotu</strong> - vygeneruje novou hodnotu vybrané vlastnosti podle <a href="../../../alvao-asset-management/objects-and-properties/setting-up-new-sequence">číselné řady,</a> kterou tato vlastnost používá. (Tato možnost je k dispozici pouze pro editovatelné vlastnosti, které nelze dědit.)</li>
 <li><a href="properties/property-edit">Upravit</a> - upraví hodnotu a chování vybrané vlastnosti.</li>
	</ul>

</asp:Content>
