<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Majetek</h1>
	<ul>
 <li><strong>Název vlastnosti</strong> - zobrazte název vlastnosti.</li> <li><strong>Hodnota</strong> - zadejte hodnotu vlastnosti. <ul><li>V seznamu, který je připojen k tomuto vstupnímu řádku, můžete vybrat hodnotu ze seznamu výchozích hodnot pro tuto vlastnost.</li>
 <li>Hodnotu je možné zadat také ze správce čtečky čárových kódů pomocí tlačítka se symbolem čárového kódu vedle pole <em>Hodnota</em>.</li></ul>
 <li><strong>Tato vlastnost určuje název objektu</strong> - pokud je toto pole zaškrtnuto, název objektu, který obsahuje tuto vlastnost, se automaticky vytvoří podle hodnoty této vlastnosti. Název objektu se může skládat až z 8 vlastností - hodnoty vlastností jsou seřazeny v definovaném pořadí. Pokud změníte hodnotu vlastnosti, která definuje název objektu, změní se i název objektu ve stromu.<ul> <li><strong>Pořadí v názvu objektu</strong> - číslo, které určuje pořadí hodnoty této vlastnosti v názvu objektu. Při změně pořadí se automaticky upraví i pořadí ostatních vlastností.</li> </ul> </li> <li><a href="../../../../alvao-asset-management/implementation/tree-design#inheritance">Zdědit vlastnost</a> - pokud tuto možnost povolíte, bude vlastnost zděděna do všech podřízených objektů, tj. bude viditelná na kartě <em>Vlastnosti</em> v <a href="../../../alvao-asset-management-console">hlavním okně</a> ve všech podřízených objektech</li></ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
	<ul><li>Toto dialogové okno lze zobrazit pouze v <a href="../../../../alvao-asset-management/implementation/object-templates">šabloně objektu</a>. Mimo šablonu objektu lze měnit pouze hodnoty vlastností.</li>
	
  <li>Hodnoty některých vlastností nelze měnit. Pokud má objekt ve stromu povolenou volbu <em>Automaticky aktualizovat při detekci</em>, nelze hodnoty detekovaných vlastností měnit (hrozí přepsání hodnot při další detekci). Pokud je objekt načten z <b>Active Directory</b>, nelze měnit ani hodnoty vlastností načtených z AD (hrozí přepsání hodnot při dalším importu). Informace o nemožnosti změnit hodnotu se v takových případech zobrazuje také ve zprávě pod položkou <em>Hodnota</em>.</li>
	
 <li>Seznam hodnot je dynamicky sestaven z hodnot dané vlastnosti pouze z objektů příslušného typu. Pokud je vlastnost nastavena jako jedinečná, je seznam vyplněn hodnotami vlastnosti napříč všemi objekty v databázi.</li></ul>
	</div>
</asp:Content>
