<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Služby</h1>
<p>Na této stránce můžete spravovat <a href="../../../../alvao-service-desk/implementation/services">služby,</a> ke <a href="../../../../alvao-service-desk/implementation/services">kterým</a> žadatelé zadávají své požadavky.</p>

 <p>Možnosti:</p>
  <ul>
  <li><strong>Příkazový panel</strong> <ul> <li><strong>Nová služba</strong> - vytvoření <a href="service/create-service">nové služby</a> </li>. 
 <li><strong>Tabulka/strom</strong> - přepnutí režimu zobrazení služeb</li>. <li><strong>Zobrazit smazané/Skrýt smazané</strong> - zobrazení nebo skrytí služeb, které jsou označeny jako smazané, viz příkaz <em>Smazat</em>. Tyto příkazy jsou dostupné pouze ve stromu (viz <em>Zobrazit jako strom</em>). </li>
 <li><strong>Upravit</strong> - úprava vlastností a uživatelských oprávnění vybrané služby.</li> <li>Nabídka obsahuje stejné příkazy jako v <a href="service/detail">náhledových</a> blocích služby</li>. <li><strong>Smazat</strong> - označí vybranou službu v databázi jako smazanou (nelze ji trvale odstranit z databáze, pouze označit příznakem <em>Smazat</em> ) </li>. Takto <li>označené služby se v aplikaci běžně nezobrazují, ale lze je zobrazit příkazem <em>Zobrazit smazané</em>; </li> <li><strong>Kopírovat</strong> - zkopíruje vybranou službu, případně včetně všech dílčích služeb. Po tomto příkazu použijte příkaz <em>Vložit</em>.</li> <li>Příkaz <em>Kopírovat</em> můžete vyvolat také pomocí <span class="key">klávesové zkratky Ctrl+C</span>.</li> <li><strong>Vložit</strong> - vloží kopii služby určené posledním použitím příkazu <em>Kopírovat</em> do vybrané služby ve stromu. Příkaz <em>Vložit</em> můžete vyvolat také pomocí <span class="key">klávesové zkratky Ctrl+V</span>. </li> <li>Zkopírují se všechna nastavení služby s výjimkou nastavení v bloku <a href="service/detail/edit">Čtení zpráv</a></li></ul>. <ul> <li><div class="tip"> <div class="icon"></div><div class="title">Tip:</div>Služby ve stromu můžete kopírovat také myší metodou přetažení</div> </li>se <li><div class="tip"> <span class="key">stisknutou klávesou Ctrl</span>.</div> </li> <li><strong>Obnovit smazané</strong> - obnoví vybrané služby, které jsou označeny jako smazané, viz <em>Odstranit</em>.</li> <li><strong>Přepsat oprávnění -</strong> přepíše všechna oprávnění nastavená u vybraných služeb oprávněními <a href="service/multi-edit/authorization">konkrétní služby</a>. Tento příkaz je k dispozici pouze pro 2 nebo více vybraných služeb v tabulce.</li> <li>Oprávnění jedné služby můžete přepsat příkazem <a href="service/detail/authorization">Upravit - Oprávnění</a> - <em>Přepsat</em></li>. <li><strong>Odebrat oprávnění</strong> - odebere všechna oprávnění nastavená na vybrané službě</li>. <li>Tento příkaz je k dispozici pouze pro 2 nebo více vybraných služeb v tabulce.</li> <li>Oprávnění jedné služby můžete odebrat příkazem <a href="service/detail/authorization">Upravit - Oprávnění</a> - <em>Odebrat</em></li>. <li><strong>Přepsat SLA</strong> - přepíše všechna SLA nastavená na vybraných službách nastavením SLA <a href="service/multi-edit/sla">konkrétní služby</a>. Příkaz je k dispozici pouze pro 2 nebo více vybraných služeb v tabulce.</li> <li>Nastavení SLA jedné služby můžete přepsat příkazem <a href="service/detail/sla">Upravit - SLA</a> - <em>Přepsat</em></li>. <li><strong>Odebrat SLA</strong> - odebrání všech SLA nastavených na vybraných službách</li>. <li>Tento příkaz je k dispozici pouze pro 2 nebo více vybraných služeb v tabulce.</li> <li>Nastavení SLA jedné služby můžete odebrat příkazem <a href="service/detail/sla">Upravit - SLA</a> - <em>Odebrat</em></li>. <li><strong>Export</strong> - export vybrané služby včetně podřízených služeb a souvisejících nastavení (proces, vlastní položky atd.) do souboru, viz <a href="../../../../alvao-service-desk/implementation/services/service-transfer">Přenos služeb</a>. Pokud nevyberete žádnou službu, vyexportují se všechny služby ve stromu služeb. <li><strong>Importovat</strong> - importovat služby ze souboru. Služby obsažené v souboru se vytvoří jako podřízené služby pod aktuálně vybranou službou.</li> <li>Pokud nevybereš žádné služby, budou nové služby importovány do kořene stromu služeb </li> </ul></li>
  <li><strong>Strom služeb -</strong> služby zobrazené ve stromu (viz <em>Zobrazit jako strom</em>).<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Služby ve stromu můžete přesouvat myší pomocí metody drag &amp; drop.</div>

	
 </li>
  <li><strong>Tabulka služeb</strong> - služby zobrazené v tabulce (viz <em>Zobrazit jako tabulku</em>). Tabulku můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
   V tabulce můžete vybrat více služeb a <a href="service/multi-edit">hromadně je upravovat</a>. Služby v tabulce můžete vybrat kliknutím do prvního sloupce &quot;roura&quot; nebo výběrem řádků pomocí <span class="key">kláves Ctrl</span> nebo <span class="key">Shift</span>.</div>
	

  </li>
  <li><strong>Vybraná služba</strong> - po výběru služby ve stromu nebo v tabulce se vpravo zobrazí <a href="service/detail">náhled s</a> informacemi o vybrané službě.  V každém bloku náhledu se zobrazí příkaz <em>Upravit</em>, který umožňuje upravit nastavení služby.</li>
  </ul>



 <h2>Jak navrhnout strukturu služby</h2>
  <ul>
  <li>
 Žadatelé vybírají službu postupně od kořene k listům stromu. Doporučujeme sestavit strom pokud možno tak, aby na cestě od kořene k listům byli žadatelé schopni intuitivně vybrat správnou službu pro vložení svého požadavku.</li>
  <li>
 Pro členění stromu služeb lze použít pomocné služby se zapnutou volbou <a href="service/create-service">Složka</a>. Do složek nelze přidávat nové požadavky.</li>
  <li>
 Pro často používané služby můžete vytvořit <a href="service/create-service">zástupnou službu</a> na dostupnějším místě v katalogu služeb.</li>
  </ul>

  <h2>Vazby na hlavní stránce</h2>
  <p>Služby ve složce <i>Vazby na hlavní stránce</i> se zobrazují jako dlaždice na hlavní stránce pod vyhledávacím polem. Pokud chcete na hlavní stránce zobrazit odkaz na formulář pro odeslání požadavku na konkrétní službu, vytvořte zástupce této služby ve složce <i>Vazby na hlavní stránce</i> v katalogu. Odkaz se na hlavní stránce zobrazí pouze uživatelům, kteří mají k dané službě přiřazenou SLA. Pokud chcete zobrazit odkaz na jakoukoli jinou stránku v aplikaci ALVAO WebApp nebo jinde, vytvořte službu a zadejte url této stránky do pole <i><a href="service/detail/new-ticket-items">New Ticket Submission Form (Formulář pro podání nového ticketu</a> ) - Custom Form URL (Vlastní URL formuláře</i> ) a přiřaďte libovolnou SLA v této službě uživatelům, kterým se má odkaz zobrazit.  <br />Na hlavní stránce se zobrazí maximálně 8 odkazů. Vazby se zobrazují ve stejném pořadí jako služby v katalogu.</p>
  
 </asp:Content>

