<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Průvodce dotazem - Krok 3</h1>
<p>Ve třetím kroku vytváření <a href="../../../alvao-asset-management/searching/query">dotazu do databáze</a> definujte, co chcete sledovat u vlastností objektu vybraných v <a href="query-wizard-2">kroku 2</a>.<br/>Položky v seznamu (vlastnosti objektu) představují sloupce tiskové sestavy, které budou výsledkem dotazu. Pořadí položek určuje pořadí sloupců ve výsledku. Obsah okna se mění podle toho, kterou vlastnost v tabulce vyberete - parametry se nastavují pro každou vlastnost zvlášť.</p>
<p>Možnosti: V případě, že se jedná o položku, která se nachází v tabulce, je možné ji zadat:</p>
	<ul>
 <li><a href="set-column">Upravit</a> - upraví záhlaví vybraného sloupce.</li>
 <li><strong>Nahoru</strong> - posune vybraný sloupec v tabulce o jeden řádek výše.</li>
 <li><strong>Dolů</strong> - přesun vybraného sloupce o jeden řádek níže v tabulce.</li>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Tlačítka nahoru a dolů obsahují pouze šipku a nejsou umístěna v pravém dolním rohu tabulky.</div>
 <li><strong>Zahrnout pouze řádky, kde</strong> - případně zadejte podmínku, kterou mají hodnoty splňovat: vyberte operátor a zadejte hodnotu, kterou chcete porovnat. např. pro velikost paměti RAM můžete zadat podmínku &quot;&lt;64&quot; <ul><li><strong>A</strong>, <strong>NEBO</strong> - nebo vyberte operátor spojování a zadejte druhou podmínku, kterou by hodnoty měly splňovat. Vyberte <strong>A</strong>, pokud musí být splněny obě podmínky současně, a <strong>A</strong>NEBO</strong>, pokud stačí, když je splněna alespoň jedna podmínka.</li></ul></li>
 <li><strong>Zahrnout do tiskové sestavy</strong> - zapněte, pokud chcete, aby se vybraný sloupec zobrazil ve výsledné tiskové sestavě.</li>
 <li><strong>Typ vlastnosti</strong><ul>
 <li><strong>Nerozlišovat</strong> - vyberte, zda může být vlastnost vlastní nebo zděděná.</li>
 <li><strong>Vlastní</strong> - vyberte, pokud se mají používat pouze vlastní vlastnosti.</li>
 <li><strong>Zděděné</strong> - vyberte, pokud chcete použít pouze zděděné vlastnosti.</li>
  </ul>
 </li>
 <li><strong>Agregační funkce</strong> - povolte ty funkce, jejichž výsledek se má zobrazit v zápatí výsledného tiskového systému.  <ul>
 <li><strong>Počet</strong> - zobrazí počet položek vlastností.</li>
 <li><strong>Součet</strong> - zobrazí součet hodnot vlastností.</li>
 <li><strong>Průměr</strong> - zobrazí průměrnou hodnotu vlastností.</li>
 <li><strong>Minimum</strong> - zobrazí minimální hodnotu vlastností.</li>
 <li><strong>Maximum</strong> - zobrazí maximální hodnotu vlastností.</li>
  </ul>
 </li>
 

	</ul>
</asp:Content>
