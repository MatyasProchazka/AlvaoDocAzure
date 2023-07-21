<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Vyberte ikonu</h1>
<p>Toto okno umožňuje vybrat ikonu služby z knihovny ikon a také tuto knihovnu spravovat.</p>
<p>Možnosti:</p>
	
<ul>
  <li><strong>Vyhledávání</strong> - zadejte část názvu ikony. Ikony zobrazené pod tímto řádkem se při zadávání okamžitě filtrují.</li>
  <li><strong>Ikony</strong> - tabulka ikon v knihovně. Vyberte ikonu, kterou chcete použít, poklepáním myší toto okno okamžitě zavřete. Případně můžete ikonu vybrat klepnutím myší a potvrzením výběru tlačítkem OK.<br />
  Chcete-li ikonu z knihovny <strong>odebrat</strong>, klikněte na ni myší. V pravém horním rohu ikony se zobrazí křížek pro její odstranění. Systémové ikony nelze z knihovny odstranit.</li>
	<li><strong>Načíst ze souboru</strong> - přidání nových ikon do knihovny načtením ze souborů. Obrázky musí být ve formátu PNG, doporučená velikost je 64x64 pixelů.</li>
  <li><strong>OK</strong> - potvrdí výběr a zavře okno.</li>
  <li><strong>Zrušit</strong> - zruší výběr a zavře okno.</li>
</ul>
	
</asp:Content>
