<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Průvodce dotazem - Krok 2</h1>
<p>Ve druhém kroku vytváření <a href="../../../alvao-asset-management/searching/query">databázového dotazu</a> definujte vlastnosti, které chcete sledovat.<br/>Obsah okna se mění podle toho, který objekt vyberete v <strong>seznamu objektů</strong> - parametry se nastavují pro každý objekt zvlášť.</p>
<p>Možnosti: V nabídce jsou uvedeny možnosti, které je možné použít při výběru objektu, a to např:</p>
	<ul>
 <li><strong>Seznam objektů</strong> - vyberte objekt, jehož vlastnosti se zobrazí v okně <strong>Seznam vlastností</strong>.<br/>Na začátku je uveden pouze kontrolní objekt vybraný v prvním kroku. Pomocí <strong> tlačítka Add Object (Přidat objekt)</strong> můžete do seznamu přidat další objekty, jejichž vlastnosti se mají zobrazit ve výsledku dotazu.</li>
 <li><strong>Seznam vlastností</strong> - zapněte všechny vlastnosti vybraného objektu, které chcete v dotazu použít,<br/>tj. chcete je zobrazit ve výsledku dotazu, nebo pro ně nastavte nějakou podmínku, např. &quot;velikost RAM menší než 64 MB&quot;.</li>
 
 <li><strong>Směr hledání</strong> - vyberte směr hledání vybraného objektu vzhledem k řídicímu objektu.<br/>Musí být vybrán jiný objekt než řídicí objekt. Typicky se prohledávají podřazené objekty. <ul>
 <li><strong>Dceřiný objekt</strong> - vyberte, zda chcete hledat směrem dolů, tj. mezi podřízenými objekty řídicího objektu.</li>
 <li><strong>Nadřazený objekt</strong> - vyberte, chcete-li hledat směrem nahoru, tj. mezi nadřazenými objekty.</li>
  </ul>
 </li>
 <li><strong>Úroveň</strong> - vyberte hloubku prohledávání vybraného objektu.<ul>
 <li><strong>Hloubka</strong> - vyberte, zda se hledaný objekt může nacházet kdekoli ve stromu podřízených objektů řídicího objektu.</li>
 <li><strong>Povrch</strong> - vyberte, zda hledaný objekt musí být přímým podřízeným objektem řídicího objektu, tj. nikoli podřízeným objektem podřazeného objektu.</li>
  </ul>
 </li>
 <li><strong>Kvalita</strong> - vyberte kvalitu vyhledávání vybraného objektu.<ul>
 <li><strong>Vše</strong> - vyberte, chcete-li prohledat celý podstrom řídicího objektu.</li>
 <li><strong>Nejbližší</strong> - vyberte, chcete-li vyhledat pouze ty objekty, které jsou v podstromu řídicího objektu na nejbližší úrovni.</li>
  </ul>
 </li>
 <li><strong>Pouze neprázdné objekty</strong> - zapněte, pokud má být řídicí objekt ve výsledku dotazu pouze v případě, že vybraný podřízený/podřazený objekt existuje.</li>
 <li>
<a href="../edit/new-object/object-template">Přidat objekt</a> - přidá další objekt do <b>seznamu objektů</b>.</li>
 <li><strong>Odstranit objekt</strong> - odebere vybraný objekt.</li>
	</ul>
</asp:Content>
