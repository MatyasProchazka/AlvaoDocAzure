<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Podřazené objekty</h1>

<p>V horní části karty <em>Podřazené objekty</em> jsou uvedeny všechny podřazené objekty objektu, který je ve stromu aktuálně vybrán. Pokud vyberete objekt v tabulce, zobrazí se v dolní části jeho <a href="diary">číselník</a>.<br/>U objektů typu počítač se může zobrazit stavová ikona:</p>
  <ul>
 <li><img src="objects/PcUnknown.gif" /> Stav zapnutí počítače v síti není znám (nebyla vyvolána funkce ping).</li>
 <li><img src="objects/PcOn.gif" /> Počítač je zapnutý (poslední volání funkce ping bylo úspěšné).</li>
 <li><img src="objects/PcOff.gif" /> Počítač; je vypnutý nebo nedostupný (poslední volání funkce ping bylo neúspěšné)</li>
  </ul>Záložku Podřazené objekty lze zobrazit také v <a href="../../../alvao-asset-management/searching/list-of-objects">Seznamu objektů</a>. Toto okno umožňuje pracovat s objekty v <a href="../../alvao-asset-management-console">hlavním okně AM console</a> a mít jejich seznam stále na očích.</p>
<p>Možnosti místní nabídky na kartě <em>Podřazené objekty</em>:</p>
	<ul>
 <li><strong>Označit ve stromu</strong> - tučně zvýrazní ve <a href="../object-tree">stromu</a> objektů vybraný objekt v tabulce</li>
 <li>
<a href="../object/choose-object">Přesunout</a> - přesun vybraného objektu pod jiný objekt. Pokud vyberete objekt typu počítač, budete dotázáni, zda chcete <a href="objects/move-options">Přesunout</a> pouze počítače nebo počítače včetně sestav. </li>
 <li><a href="../view/list-of-objects">Zobrazit v seznamech objektů</a> - otevření zobrazeného seznamu objektů v samostatném okně <a href="../../../alvao-asset-management/searching/list-of-objects">Seznamy objektů</a>   <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o objekty, které se nacházejí v objektu, můžete si zvolit, zda je chcete zobrazit:</div>
        Před otevřením seznamu objektů v samostatném okně můžete použít filtry a omezit tak seznam na objekty, které vás zajímají.<br/>Objekty v samostatném okně lze ještě zobrazit ve stromu. S vytvořeným seznamem tak můžete pracovat, aniž byste o něj přišli úpravou konkrétních objektů. 
    </div>
 </li>
 <li>
  <a href="../../../list-of-windows/alvao-webapp/requests/new-request">Nový požadavek</a> - vytvoření nového požadavku v <a href="../../../alvao-service-desk">ALVAO ServiceDesk</a> vztahujícího se k vybraným objektům.</li>
 <li><a href="../add-objects-to-ticket">Přidat do požadavku</a> - přidání vybraných objektů do existujícího požadavku v <a href="../../../alvao-service-desk">ALVAO ServiceDesk</a>.</li>
 <li><strong>Související požadavky</strong> - zobrazení požadavků v <a href="../../../alvao-service-desk">ALVAO ServiceDesk</a>, které souvisejí s vybraným objektem.</li>
 <li><a href="properties/table-options">Tabulka</a>- nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">přizpůsobit tabulku</a>. Například vytvářet filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazovat více řádků.</li>
 <li><a href="properties/find">Najít</a>- vyhledávání textu v zobrazené tabulce.</li>
 <li>
<a href="../software/license-and-install-overview/table/html-document">Tisk</a> - otevření detailů vybraných objektů v okně pro tisk HTML. Podoba a obsah těchto detailů závisí na vybrané sestavě (print-set.epq).</li>
 <li><strong>Odstranit</strong> - odstraní vybrané objekty z aktivních záznamů správy majetku, tj. přesune je do koše.</li>
 <li>
<a href="../tools/lists/documents">Přidat odkaz na dokument</a> - přidá odkaz na vybraný <a href="../../../alvao-asset-management/documents/links-between-objects-and-documents">objekt do existujícího dokumentu</a>.</li>
 <li><a href="objects/edit">Upravit</a> - editace vlastnosti nebo <a href="../../../alvao-asset-management/objects-and-properties">typu</a> vybraných objektů.</li>
	</ul>

</asp:Content>
