<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Zobrazit</h1>
<p>Nabídka Zobrazení slouží k úpravě zobrazení položek v hlavním okně konzoly AM.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Včetně podstromu</strong> - zobrazí záznamy v <a href="tab-view/diary">Logu</a>také pro podřazené objekty objektu vybraného ve <a href="object-tree">stromu</a><div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění: V případě, že se jedná o stromy, které se nacházejí ve stromové struktuře, je možné zvolit, zda se jedná o stromy, které se nacházejí ve stromové struktuře:</div>
 Je k dispozici pouze při zobrazení karty Protokol. Pokud je tato možnost stále nedostupná, klikněte myší kamkoli na kartu Protokol. </div></li>
 <li><strong>Skryté objekty</strong> - zobrazí skryté objekty ve stromu.</li>
 <li><strong>Odstraněné položky</strong> - zobrazení odstraněných položek v protokolu objektů.</li>
 <li><strong>Rozbalit/sbalit strom</strong> - rozbalí nebo sbalí všechny objekty ve stromu (a podstromech) aktuálně vybraného uzlu.</li>
 <li><a href="view/search-results">Nalezené objekty</a>- zobrazí výsledky posledního vyhledávání objektů (nalezené objekty nelze zobrazit, pokud od aktivace konzoly AM nebylo provedeno žádné vyhledávání).</li>
 <li><a href="view/list-of-objects">Seznamy objektů</a>- zobrazení dříve vytvořených <a href="../../alvao-asset-management/searching/list-of-objects">seznamů objektů</a>.</li>
 <li><strong>Obnovit</strong> - aktualizace seznamu objektů v tabulce, ve které je aktuálně vybraný objekt.</li>
	</ul>
</asp:Content>
