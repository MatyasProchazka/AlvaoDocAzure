<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	

<h1>Uživatelské role v požadavcích a službách</h1>

	<p>Uživatelské role ve službách se nastavují v nabídce <strong>WebApp - Administration - Service Desk - Services - Edit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/authorization">Permissions</a>.</p>

	<table>
 <thead>
  <tr>
 <th>Oprávnění</th>
 <th>Hlavní řešitel</th>
 <th>Řešitel</th>
 <th>Člen řešitelské skupiny</th>
 <th>Mimořádný řešitel</th>
 <th>Manažer</th>
 <th>Čtenář</th>
 <th>Zapisovatel požadavků</th>
 <th>Schvalovatel</th>
 <th>Žadatel/spolužadatell</th>
  </tr>
 </thead>
 <tbody>
  <tr>
 <td>Zobrazení všech požadavků ve službě</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Vytvoření nového požadavku ve službě</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Za sebe</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>- Zápis požadavku za žadatele</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Oznámení</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- O nových požadavcích ve službě</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- O požadavcích bez řešitele a řešitelské skupiny</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- O předání požadavku řešitelské</td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- O požadavcích v dané skupině řešitelů, ale bez konkrétního řešitele</td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- O požadavcích předaných k řešení danému uživateli</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Přijetí požadavku k vyřešení</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Přiřazení požadavku k řešení jinému řešiteli</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Řešení požadavků</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Bez řešitele a řešitelské skupiny</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Bez řešitele, ale předaných řešitelské skupině</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Předaných danému uživateli k řešení</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Předáných jinému řešiteli</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Schválení nebo zamítnutí požadavku</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
  </tr>
  <tr>
 <td>Deník Požadavku</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Zobrazit všechny záznamy</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
  </tr>
  <tr>
 <td>- Zobrazení záznamů pro žadatele</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>- Vytvoření záznamu</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">částečně</td>
  </tr>
  <tr>
 <td>Báze znalostí ve službě</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Zobrazení znalostí pro žadatele</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>- Zobrazení znalostí pro řešitele</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- <a href="../../../list-of-windows/alvao-webapp/knowledge-base/manage">Správa znalostí</a></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>Aktuální zprávy ve službě</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Zobrazení zpráv pro žadatele</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
  </tr>
  <tr>
 <td>- Zobrazení zpráv pro řešitele</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- <a href="../../../list-of-windows/alvao-webapp/news/manage">Správa zpráv</a></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td><a href="../../../alvao-service-desk/requests/ticket-templates">Šablony požadavků</a> ve službě</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- Použití šablon</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
  <tr>
 <td>- <a href="../../../list-of-windows/alvao-webapp/ticket-templates">Správa šablon</a></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td style="vertical-align:middle; text-align:center;">●</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
  </tr>
 </tbody>
	</table>
  
	<h5>Hlavní řešitel</h5>
 <p>Hlavní řešitel zpracovává nové požadavky, které ještě nemají řešitele, a podle potřeby je předává dalším řešitelům.</p>
 <p>Každá služba by měla mít alespoň jednoho hlavního řešitele. Jedinou výjimkou jsou služby označené jako <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">složky</a>, ve kterých nelze vytvářet nové požadavky.</p>
 <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Systém sám pravidelně kontroluje, zda všichni žadatelé ve všech službách mají přiřazeného hlavního řešitele. Pokud jsou zjištěny nedostatky, je jednou denně odesláno e-mailové upozornění správcům systému Alvao<i>(</i> role<i>Administrator</i> ). Nastavení služeb můžete zkontrolovat ihned po provedení změn v nabídce <em>Správa webových aplikací - Nastavení - </em><a href="../../../list-of-windows/alvao-webapp/administration/settings/settings-check">Kontrola nastavení</a></div>
 <p>Každý hlavní řešitel si může vybrat zástupce, který ho bude zastupovat v době jeho nepřítomnosti, v <em>nabídce Uživatel - Nastavení -</em> <a href="../../../list-of-windows/alvao-webapp/settings/out-of-office">Nepřítomnost</a>.</p>
  
	<h5>Řešitel</h5>
 <p>Úkolem řešitele služby je řešit požadavky, které mu předá hlavní řešitel.</p>
 <p>Pokud má služba pouze jednoho řešitele, jsou nové požadavky vytvořené nebo přesunuté do této služby automaticky předány k řešení tomuto řešiteli.</p>

	<h5>Člen řešitelské skupiny</h5>
 <p>Řešitelská skupina je skupina řešitelů, která funguje jako autonomní tým. Hlavní řešitel (nebo jiný řešitel) může přidělit požadavek k řešení celé skupině, která pak určí, který člen skupiny bude požadavek řešit. V jedné službě může být více řešitelských skupin.</p>

	<h5>Výjimečný řešitel</h5>
 <p>Výjimečný řešitel vidí pouze požadavky, které k řešení přiřadil jiný řešitel. Ostatní požadavky ve službě nevidí. Nevidí ani požadavky, které v minulosti řešil, ale poté je předal jinému řešiteli.</p>

	<h5>Správce služby</h5>
 <p>Správce služby dohlíží na řešení požadavků.</p>
 <p>Pokud manažer řeší požadavek bez řešitele, stává se automaticky řešitelem. V opačném případě však manažer nemůže převzít žádný požadavek k řešení a nemůže jej nikomu předat.</p>

	<h5>Servisní tým</h5>
 <p>Servisní tým se skládá z hlavních řešitelů, řešitelů, členů řešitelských skupin a servisních manažerů.</p>
 <p>Členové týmu mohou vyhledávat pouze osoby, které jsou ze stejné organizace jako oni, ze stejného řešitelského týmu nebo jsou žadateli o službu. Při vyhledávání organizací vidí pouze svou organizaci. Nevidí skutečné záznamy osob nebo jejich organizací.</p>
 <p>Tým služeb může být rozdělen na <a href="../../../alvao-service-desk/implementation/services/service-roles/multiple-teams-for-service">několik týmů</a> podle skupiny žadatelů. Každou skupinu žadatelů pak obsluhuje jiný řešitelský tým.</p>

	<h5>Čtenář služby</h5>
 <p>Vidí všechny požadavky dané služby, ale nemůže je řešit.</p>
 <p>Čtenář služby může vyhledávat stejné osoby a organizace, jako by byl členem řešitelského týmu.</p>
 <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:
	  Uživatele, kterým chcete zpřístupnit jenom konkrétní požadavek, nastavte jako <a href="../../../alvao-service-desk/requests/subscribers">Sledující</a> daného požadavku.

	  
 </div>

	<h5>Zpravodaj požadavků</h5>
 <p>Zpravodaj požadavků je obvykle členem řešitelského týmu jiné služby a může přesouvat požadavky, které nepatří do jeho služby, do služby, v níž je zpravodajem, nebo je vytvářet přímo pro žadatele požadavku. Jakmile byl požadavek přesunut nebo vytvořen, reportér již nemůže požadavek zobrazit.</p>

	<h5>Schvalovatel požadavků</h5>
 <p>Schvalovatel požadavku je uživatel, který má aktuálně požadavek schválit nebo zamítnout. Požadavek může mít současně více schvalovatelů. Schvalovatelem se může stát kterýkoli uživatel, protože požadavek lze ke schválení přiřadit komukoli.</p>
 <p>Schvalovatel vidí pouze požadavky, které má aktuálně schválit.</p>

	<h5>Žadatel o službu</h5>
 <p>Žadatel služby je uživatel, který má ke službě přiřazenou alespoň jednu SLA (viz WebApp - Administration - Service Desk - Service - Edit - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/sla">SLA</a>).</p>
 <p>Zadavatelé požadavků vidí pouze požadavky, které mají přiřazeny. V tabulce požadavků mohou zobrazit pouze <a href="../../../list-of-windows/alvao-webapp/requests/table-of-requests">vybrané sloupce</a>.</p>
 <p>Na <a href="../../../list-of-windows/alvao-webapp/requests/request">stránce s požadavky</a> nevidí položky:</p>
  <ul>
 <li>Priorita</li>
 <li>Poznámky</li>
 <li>Práce</li>
 <li>Interní cíl</li>
 <li>Vlastní položky osob a organizací pro žadatele a řešitele</li>
 <li>Údaje o řešiteli, pokud je řešitel z jiné organizace než žadatel</li>
 <li>Vlastní položky Související organizace</li>
 <li>Podrobnosti o spřízněné organizaci, pokud žadatel není z této organizace</li>
  </ul>
 <p>Vidí také zapnuté další položky požadavku, viz WebApp - Administration - Service Desk - Services - Service - Edit - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/extended">Extended</a> - Show Requester optional items.</p>
 <p>V protokolu požadavků se zobrazí pouze záznamy, které mají povolenou volitelnou položku <em>Zobrazit žadateli</em>.</p>
 <p>Má k dispozici omezené příkazy pro práci s požadavky.</p>
 <p>Žadatel (nebo účastník požadavku) může svůj požadavek znovu otevřít, pokud nevypršela <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/extended">lhůta pro znovuotevření</a> (nastavená ve službě požadavku).</p>
 <p>Může vyhledávat pouze osoby ve vaší organizaci. Ve výsledcích vyhledávání nevidí vlastní záznamy osob nebo organizací.</p>
 <p>Požadavek může mít další spolužadatele, kteří mají k požadavku stejná oprávnění jako žadatel. Spolužadatelem požadavku může být kterýkoli žadatel o službu.</p>

	<h5>Ostatní uživatelé</h5>
 <p>Uživatelé, kteří nemají přidělenou roli ve službě, nevidí v této službě žádné požadavky, i když jsou členy skupiny <a href="../../../alvao-asset-management/implementation/users/groups">Administrators (Správci)</a> nebo jiných <a href="../../../alvao-service-desk/implementation/users/groups">systémových skupin</a>.</p>


	<h2>Běžné nastavení oprávnění ve službách</h2>
 <ol>
  <li><strong>Pouze hlavní řešitelé</strong> - služba má pouze hlavní řešitele, kteří přebírají nové požadavky k řešení sami. Tento model je obvykle vhodný pro menší týmy rovnocenných řešitelů.</li>
  <li><strong>Hlavní řešitelé a řešitelé</strong> - hlavní řešitelé přebírají nové požadavky k řešení nebo je předávají dalším řešitelům. Ostatní řešitelé zpracovávají pouze požadavky, které jim předá hlavní řešitel, a aktivně neřadí nové požadavky do fronty.  Tento model je vhodný pro větší týmy, jejichž členové jsou rozděleni do několika linií. Hlavní řešitelé jsou tedy v první linii (L1) a ostatní řešitelé jsou ve druhé nebo další linii (L2, L3 atd.).</li>
  <li><strong>Hlavní řešitelé, řešitelé a řešitelské skupiny</strong> - oproti předchozímu modelu je ve službě navíc jedna nebo více řešitelských skupin. Hlavní řešitelé pak mohou přiřazovat požadavky autonomním skupinám řešitelů, jejichž členové určují, který člen bude požadavek řešit.  Skupiny řešitelů obvykle představují autonomní týmy z jiných útvarů nebo externích organizací (outsourcované služby), obvykle ve vyšším stupni L2, L3 apod.</li>
 </ol>

  


</asp:Content>


<asp:Content ID="Content2" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  </asp:Content>



