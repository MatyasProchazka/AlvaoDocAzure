<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Správce čtečky čárových kódů</h1>
	<p>V tomto okně můžete pracovat s kódy načtenými ze čtečky čárových kódů. <br/>
	<br/>
	Chcete-li snímat kódy, vyberte čtečku <strong>Symbol CS1504</strong> nebo <strong>Opticon OPN-2001</strong>. Kódy načtené v AM Console pak můžete vybírat a zadávat jako hodnotu vlastnosti (např. jako sériové číslo), hromadně vytvářet objekty z vybraných kódů, nastavovat čas a mazat obsah čtečky.</p>

	<ul>
 <li><strong>Kódy uvnitř čtečky</strong> - zobrazení seznamu čárových kódů načtených ze čtečky.</li>
 <li><strong>Volby:</strong>V případě potřeby můžete zobrazit i další <strong>možnosti,</strong>např  <ul>
 <li><strong>Načíst kódy</strong> - načtení kódů ze čtečky.</li>
 <li><strong>Nastavit čas</strong> - nastavení správného času uvnitř čtečky.</li>
 <li><strong>Vymazat čtečku</strong> - vymazání všech kódů uvnitř čtečky.</li>
 <li><a href="barcode-reader/object-prototype">Vytvořit objekty</a> - nastavení hromadného importu objektů z vybraných čárových kódů. Tato volba je aktivní pouze tehdy, pokud je ve stromu vybrán uzel a správce je otevřen z panelu tlačítek nebo nabídky.<br/> Objekty se vytvoří ve stromu pod aktuálně vybraným uzlem.</li>
 <li><strong>Stav &quot;použito</strong> &quot; - nastaví vybraným kódům stav &quot; <em>použito&quot;</em> (ikona se zeleným zatržítkem).</li>
 <li><strong>Stav &quot;smazáno</strong> &quot; - nastavení stavu <em>smazáno</em> (ikona s červeným symbolem křížku) na vybrané kódy . Tyto kódy se vymažou pouze virtuálně v paměti programu, nikoli uvnitř čtečky. ( <strong> Tlačítko slouží k vymazání čtečky. Vymazat čtečku</strong>).</li>
 <li><strong>Vyhledávání</strong> - vyhledá vybraný kód ve vlastnostech všech objektů v celé databázi a zobrazí výsledek vyhledávání.</li>
 <li><strong>Vybrat</strong> - pokud je okno otevřeno pomocí ikony čárového kódu v okně <em>Upravit vlastnost</em>, lze do hodnoty této vlastnosti přenést jeden aktuálně vybraný kód. Vybraný kód se zároveň nastaví do stavu <em>použit</em>.</li>
  </ul>
 </li>
 <li><strong>Zobrazit &quot;smazané&quot;</strong> - v seznamu načtených kódů se zobrazí i kódy, které byly dříve smazány.</li>
 <li><strong>Zobrazit &quot;použitý</strong> &quot; - v seznamu načtených kódů se zobrazí také kódy, které byly dříve použity.</li>
	</ul>

	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Obsah tabulky kódů a stavy kódů (smazáno, použito) jsou uloženy pouze v paměti programu a vše v tomto okně je po ukončení programu AM Console nenávratně ztraceno.</div>

</asp:Content>
