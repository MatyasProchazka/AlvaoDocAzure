<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Produkty</h1>
<p>V tabulce jsou uvedeny všechny platné softwarové produkty v systému. Pokud chcete zobrazit neplatné produkty, použijte <strong>příkaz v místní nabídce Zobrazit neplatné produkty.</strong></p>
	
	<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:</div>
	Možnosti okna se mění v závislosti na tom, <strong>odkud bylo okno&lt;/strong Produkty</strong> otevřeno.</div>
<div class="tooltip">
	<div class="icon"></div>
	<div class="title">Tip: V případě, že se chcete podívat do okna, můžete se podívat do okna, kde se zobrazí možnost Strong:</div>
	Můžete <a href="../../../alvao-asset-management/working-with-tables">si přizpůsobit</a></div>

<p>Možnosti: V nabídce se zobrazí možnost "Nastavení":</p>
	<ul>
 <li><a href="products/product">Nový</a> - přidání nového výrobku.</li>
 <li><a href="products/product">Upravit</a> - úprava vybraného produktu.</li>
 <li><strong>Odstranit</strong> - odstranění vybraného produktu ze seznamu. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Odstranit lze pouze ty produkty, které nejsou spojeny s jinými informacemi v databázi (např. produkt je licencovaný). Certifikované produkty nelze odstranit.</div></li>
 <li><a href="products/substitute">Nahradit</a> - nahradí uživatelské produkty certifikovanými. Certifikované produkty jsou dodávány prostřednictvím knihovny vzorků softwarových produktů dostupných na internetu.</li>
	</ul>
<p>Možnosti místní nabídky:</p>
	<ul>
 <li>
<a href="license-and-install-overview/audit">Audit</a> - nastavení auditu pro vybraný produkt.</li>
 <li>
 Nastavit<a href="license-and-install-overview/alternative-sw">alternativní schválený software</a> - nastavení <a href="../../../alvao-asset-management/software-management/software-regular-auditing">alternativního schváleného softwaru</a> pro vybraný produkt.</li>
 <li>
<a href="license-and-install-overview/product-state">Upravit stav produktu</a> - úprava stavu vybraného produktu (schválený/neschválený, ...).</li>
 <li><strong>Zobrazit neplatné produkty</strong> - zobrazí v tabulce i neplatné produkty.</li>
 <li><strong>Tabulka</strong> - <a href="../../../alvao-asset-management/working-with-tables">přizpůsobení tabulky</a>.</li>
 <li>
<a href="license-and-install-overview/table/find">Najít</a> - vyhledání textu v obsahu tabulky.</li>
	</ul>

</asp:Content>
