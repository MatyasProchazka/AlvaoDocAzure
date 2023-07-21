<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Změna hodnoty nemovitosti</h1>
	<p>Tato funkce slouží k hromadnému nastavení hodnoty vlastnosti pro více objektů nebo k úpravě <a href="../../../../alvao-asset-management/implementation/node-class">druhu objektu</a>. </p>
	<ul>
	<li><strong>Upravit vlastnost</strong> - vyberte, pokud chcete změnit vlastnost vybraných objektů. <ul>
	<li><strong>Vlastnost</strong> - z nabídky vyberte vlastnost, jejíž hodnotu chcete nastavit. Nabídka může zobrazovat dvě části oddělené oddělovačem &quot;-------------------------&quot;. V horní části nad oddělovačem jsou vlastnosti, které se vyskytují u všech objektů, a v části pod oddělovačem jsou vlastnosti, které se nevyskytují u všech objektů.</li><li>Při výběru vlastnosti, která se nevyskytuje u všech vybraných objektů, se navíc pod nabídkou zobrazí varovný indikátor.</li> <li><strong>Hodnota</strong> - zadejte nebo vyberte novou hodnotu vybrané vlastnosti z nabídky. Nabídka hodnoty se zobrazí pouze v případě, že vlastnost používá číselník hodnot. Pokud je vybraná vlastnost <em>pouze</em> typu <em>výběr</em>, lze hodnotu vybrat pouze z nabídky. </li></ul> </li>

	 
	<li><strong>Upravit druh objektu</strong> - výběrem změníte <a href="../../../../alvao-asset-management/implementation/node-class">druh vybraných objektů</a><ul>
	<li><strong>Druh objektu</strong> - z nabídky vyberte nově vybraný druh objektu. <ul><li><a href="../../tools/lists/node-classes">...</a>- případně vyberte druh objektu v samostatném okně. Zobrazuje se pouze uživatelům s rolí <em>Administrator AM</em>.</li></ul>
	</li>
 </ul>
	</ul>
	
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
 <ul><li>Po změně druhu objektu se objekt automaticky sjednotí podle příslušné šablony (pokud existuje).</li>
 
 <li>Po změně druhu objektu z "počítače" na jiný druh se automaticky zruší licence objektu a odstraní se instalace, detekce a požadavky na detekce.</li>
 
 <li>Druh objektu může změnit pouze uživatel s rolí <em>AM Administrator</em> nebo <em>Asset Administrator</em>. <em>Správce majetku</em> může změnit druh objektu <strong>pouze u počítačů a pouze u jiného typu počítače</strong>.</li></ul></div>
</asp:Content>
