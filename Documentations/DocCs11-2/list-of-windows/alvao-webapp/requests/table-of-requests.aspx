<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

  <h1>Seznam požadavků</h1>
  <p>
  Seznam požadavků se zobrazuje v ALVAO WebApp na stránce <a href="../requests">Požadavky</a> a také na některých dalších stránkách.</p>

  <p>
  Pokud chcete přizpůsobit řazení nebo filtrování požadavků v aktuálním pohledu, použijte příkaz <b>Tabulka</b> pro přepnutí zobrazení seznamu na tabulku, <a href="../../../alvao-asset-management/working-with-tables">upravte tabulku podle potřeby</a> a poté přepněte zobrazení zpět pomocí příkazu <b>Dlaždice</b>. Příkazy pro přepnutí režimu zobrazení jsou k dispozici také v nabídce zobrazení - <b>Možnosti zobrazení - Zobrazit tabulku/dlaždice</b>. V nabídce <b>Nastavení</b> - <a href="../settings/view">Zobrazení</a> najdete další možnosti nastavení vzhledu jak seznamu dlaždic, tak i tabulky.  </p>

  <p>
  V režimu <i>Tabulka</i> můžete na rozdíl od výchozího režimu <i>Dlaždice</i>  vybrat více požadavků najednou a provádět s nimi hromadné operace.  </p>

  <h2>Počet nepřečtených požadavků v pohledu</h2>
  <p>
  Pomocí příkazu v nabídce aktuálního pohledu - <b>Možnosti zobrazení - Zobrazit počet nepřečtených požadavků</b> s názvem zobrazení za ním zobrazíte počet nepřečtených požadavků v zobrazení, i když zobrazení není právě aktivní. Díky tomu lze na stránce snadno zjistit, že do zobrazení byl přidán nový požadavek nebo zpráva, aniž by bylo nutné obnovovat stránku nebo přepínat zobrazení.  </p>

  <h2>Archiv požadavků</h2>
  <p>
  Vyřešené a uzavřené požadavky jsou automaticky přesunuty do archivu 6 měsíců po vyřešení. Ve výchozím nastavení se archivované požadavky nezobrazují v tabulce požadavků. Můžete je zobrazit pomocí příkazu v nabídce zobrazení - <b>Možnosti zobrazení - Zobrazit archiv</b>. Pokud je uzavřený požadavek znovu otevřen, je automaticky přesunut z archivu zpět mezi aktivní požadavky.  </p>

 <a name="ShowTicketRelations"></a><h2>Vazby mezi požadavky</h2>
  <p>
  Používáte-li vazby mezi požadavky, v režimu <i>Tabulka</i> použijte příkaz v nabídce aktuálního zobrazení - <b>Možnosti zobrazení - Zobrazit vazby</b>, abyste umožnili procházení <a href="../../../alvao-service-desk/requests/relations">odkazů</a> přímo v tabulce. Ve sloupci <i>RequestName (Název požadavku)</i> se zobrazí šipky pro rozbalení linkss u požadavků, které mají propojené další požadavky. V zobrazení pak pro lepší orientaci mezi propojenými požadavky doporučujeme zobrazit také sloupec <a href="#TicketRelationType">Typ vazby</a>. Pomocí příkazu <b>Skrýt vazby</b> můžete zobrazení propojených žádostí v tabulce vypnout.  </p>

  <h2>Sloupce tabulky</h2>
  <p>V tabulce požadavků můžete zobrazit níže uvedené sloupce.</p>
  <p>Běžní žadatelé (tj. žadatelé, kteří nejsou členy projektového týmu služby) mají pro zjednodušení k dispozici pouze omezený rozsah sloupců, viz hodnota em>Ano</em> ve sloupci <em>K dispozici běžným žadatelům</em> v tabulce níže.</p>

  <table>
  <tr>
  <th>Název sloupce</th>
  <th>Popis</th>
  <th>K dispozici pro běžné žadatele</th>
  </tr>
  <tr>
  <td>Aktuální cíl</td>
  <td>Cíl, kterého má řešitel v daném požadavku aktuálně dosáhnout, tj. první odpověď, vyřešení požadavku nebo jiný interní cíl. V případě první odezvy a vyřešení požadavku je aktuální cíl a jeho termín <a href="../../../alvao-service-desk/implementation/services/operating-hours">nastaven automaticky podle zvolené SLA</a>.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Aktuální cíl (termín splnění)</td>
  <td>Termín <a href="../../../alvao-service-desk/requests/deadline">odpovědi, řešení</a> nebo <a href="../../../alvao-service-desk/requests/internal-target">interního cíle</a>, tj. cíle uvedeného ve sloupci <em>current-target</em>.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Aktuální cíl (zbývající hodiny)</td>
  <td>Doba, která zbývá do vypršení aktuálního cíle. Údaje se počítají v <a href="../../../alvao-service-desk/implementation/services/operating-hours">provozních hodinách</a>a lze je doplnit <a href="#icons">ikonami</a>.<br />
  <img src="../../../alvao-service-desk/requests/hdtlCloseToDeadline.png" alt="Less than 8 hours left until deadline" />
  Do data aktuálního cíle zbývá méně než 8 hodin.<br />
  <img src="../../../alvao-service-desk/requests/hdtlAfterDeadline.png" alt="The deadline for the current goal is exceeded" />
  Termín aktuálního cíle je překročen.<br />
  <img src="../../../alvao-service-desk/requests/hdtlSlaPaused.png" alt="The request has a suspended SLA" />
  Požadavek má pozastavené SLA.<br />
  </td>
  <td>Žádné</td>
  </tr>
  <tr>
  <td class="auto-style1">Celková spokojenost</td>
  <td class="auto-style1">Zpětná vazba od žadatele - celková spokojenost s řešením</td>
  <td class="auto-style1">Ne</td>
  </tr>

  <tr>
  <td>Čas na cestě (hodiny)</td>
  <td>Součet všech položek &quot;čas na cestě&quot;, které byly u požadavku vykázány.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Čeká na e-mail</td>
  <td>E-mail adresáta posledního e-mailu, od kterého čekáme na odpověď.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Čekání na žadatele (hodiny)</td>
  <td>Pokud je povolena funkce Waiting for Requester (Čekání na zadavatele), tj. řešení nemůže aktuálně pokračovat bez odpovědi zadavatele, je v poli uveden počet hodin čekání. Pokud je čekání na žadatele zakázáno, je pole prázdné.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td class="auto-style1">Čekání na žadatele (hodiny)</td>
  <td class="auto-style1">Celková doba v hodinách (včetně čekání na žadatele) v rámci požadavku.</td>
  <td class="auto-style1">Ne</td>
  </tr>
  <tr>
  <td>Číslo požadavku</td>
  <td>Jedinečná značka požadavku přidělená při jeho vytvoření.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Číslo zařízení</td>
  <td>Číslo zařízení je jedinečné číslo, které bylo zařízení přiděleno při jeho vytvoření v systému správy majetku. Pokud používáte Service Desk v kombinaci se správou aktiv, můžete do požadavku uvést číslo zařízení, kterého se požadavek týká.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Čtenář</td>
  <td>Zobrazí se &quot;Ano&quot;, pokud je přihlášený uživatel pouze čtenářem služby, nikoli členem týmu pro její řešení.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Doba otevření (hodiny)</td>
  <td>Celková doba, po kterou byl požadavek otevřen, tj. od okamžiku podání požadavku do jeho vyřešení nebo do současnosti, pokud je požadavek otevřený. Pokud byl požadavek znovu otevřen, hodnota v tomto sloupci zahrnuje dobu, kdy byl požadavek dočasně vyřešen.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Doba otevření bez čekání na žadatele (hodiny)</td>
  <td>Celkový počet hodin, po které byl požadavek otevřen, tj. od doby, kdy byl požadavek podán, do doby, kdy byl vyřešen (nebo do současnosti), S VÝJIMKOU doby, po kterou byl žadatel v očekávání (během níž nemohlo probíhat řešení).</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Doba otevření bez pozastavení SLA (hodiny)</td>
  <td>Celkový počet hodin, po které byl požadavek otevřen, tj. od doby podání požadavku do doby jeho vyřešení (nebo až do současnosti), NEZAHRNUJÍCÍ dobu, po kterou byl požadavek SLA pozastaven.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Dopad</td>
  <td><a href="../../../alvao-service-desk/implementation/services/impact-urgency">Dopad</a> (ne)vyřešeného požadavku</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Ikony</td>
  <td>

  <p>
  Ikony znázorňující aktuální stav požadavku:<br />

  <img src="../../../alvao-service-desk/requests/hdtlResolved.png" alt="Resolved request" />
  Vyřešený požadavek<br />
  <img src="../../../alvao-service-desk/requests/removed.png" alt="Request removed" />
  Odstraněný požadavek<br />
  <img src="../../../alvao-service-desk/requests/hdtlNew.png" alt="Request has no solver" />
  Požadavek nemá řešitele.<br />
  <img src="../../../alvao-service-desk/requests/hdtlNoDeadline.png" alt="Request has no resolution date set" />
  Požadavek nemá nastaven datum vyřešení.<br />
  <img src="../../../alvao-service-desk/requests/hdtlSlaPaused.png" alt="Request has SLA suspended" />
  Požadavek má pozastavené SLA.<br />
  <img src="../../../alvao-service-desk/requests/hdtlApproval.png" alt="Request has approval in progress" />
  Na požadavku probíhá schvalování.  </p>
  Seřaďte požadavky podle tohoto sloupce:<br />
  <ol>
  <li>požadavek nemá určen termín vyřešení a nemá řešitele</li>
  <li>požadavek má termín vyřešení a nemá řešitele</li>
  <li>požadavek nemá termín vyřešení a má řešitele</li>
  <li>požadavek má určen termín pro vyřešení a má řešitele</li>
  <li>požadavek je vyřešen</li>
  <li>požadavek je uzavřen</li>
  </ol>
  V případě rovnosti pořadí se sekundární pořadí stanoví podle toho, o kolik byla překročena aktuální lhůta k vyřešení cíle, respektive / podle času do aktuální lhůty k vyřešení cíle.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Interní cíl</td>
  <td>Název interního cíle v řešení požadavku stanoveného členem řešitelského týmu.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Interní cíl (termín)</td>
  <td>Termín interního cíle</td>
  <td>Ne</td>
  </tr>

  <tr>
  <td>K vyřešení</td>
  <td>Hodnota &quot;Ano&quot; (&quot;1&quot;) znamená, že jste aktuálně odpovědný za řešení požadavku, tj. jste řešitelem požadavku, nebo jste členem řešitelské skupiny, které byl požadavek přidělen, nebo požadavek nemá řešitele a jste hlavním řešitelem služby požadavku (nebo hlavním řešitelem služby pro zadavatele). V opačném případě je sloupec nastaven na hodnotu &quot;Ne&quot; (&quot;0&quot;)  </td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Ke schválení</td>
  <td>Pokud je požadavek ve <a href="../../../alvao-service-desk/requests/request-approval">schvalování</a> a přihlášený uživatel je jedním ze schvalovatelů, je tato položka nastavena na &quot;1&quot; (&quot;Ano&quot;).</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Komentáře a poznámky</td>
  <td>Zpětná vazba od žadatele - další komentáře a poznámky k řešení požadavku.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Lhůta pro znovu otevření požadavku ze žadatelem je do (datum)</td>
  <td>Lhůta, do které může žadatel požadavek znovu otevřít, pokud není spokojen s vyřešením požadavku. Lhůta pro znovuotevření se počítá od vyřešení požadavku a lze ji nastavit v <strong>aplikaci ALVAO WebApp - Administrace - Service Desk - Služby - Upravit službu - Vlastnosti</strong> - sekce <strong>Pokročilé</strong>.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Můj požadavek</td>
  <td>Zobrazí se "Ano", pokud jste žadatelem nebo spolužadatelem požadavku.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Naléhavost</td>
  <td><a href="../../../alvao-service-desk/implementation/services/impact-urgency">Naléhavost</a> řešení požadavku</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Název požadavku</td>
  <td>Aktuální název požadavku.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Nejvyšší služba</td>
  <td>Kořenová služba, která je nadřazená službě, v níž je požadavek založen. Kořenové služby se zobrazují na domovské stránce <a href="../../../itil/service-catalog-management">Katalogu služeb</a>.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Objekty</td>
  <td>Název prvního objektu z ALVAO Asset Management, který je spojen s požadavkem, viz záložka Požadavek - <a href="request">Objekty</a>.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Odbornost</td>
  <td>Zpětná vazba od žadatele - hodnocení odbornosti řešitelského týmu.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Odstraněn</td>
  <td>Datum odstranění u odstraněných požadavků.<br />
  Pro zobrazení odstraněných žádostí v nabídce <strong>Zobrazit</strong> zapněte volbu Odstraněné položky.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Organizace</td>
  <td><a href="../../../alvao-service-desk/implementation/users/companies">Organizace</a> přidružená k požadavku (může to být organizace žadatele nebo ručně nastavená organizace).</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Počet otevřených podřazených požadavků</td>
  <td>Počet otevřených podřazených požadavků. Konkrétní požadavky lze nalézt na záložce Vazby. Podrobnosti naleznete na stránce <a href="../../../alvao-service-desk/requests/relations">Vazby</a>.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Počet podřazených požadavků</td>
  <td>Počet podřazených požadavků daného požadavku. Podrobnosti viz položka výše.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Počet vazeb</td>
  <td>Počet požadavků, pro které má daný požadavek zadány nějaké <a href="../../../alvao-service-desk/requests/relations">vazby</a>.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Popis požadavku</td>
  <td>Popis požadavku uvedený ve zprávě o vytvoření požadavku.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Pořadí řešení požadavku</td>
  <td>Pořadí, v jakém bude požadavek řešen. Pořadí řešení požadavku se udržuje pro každého řešitele zvlášť.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Poslední aktivita (datum)</td>
  <td>Datum a čas posledního záznamu (aktivity) v protokolu požadavků.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Pozastavení SLA (hodiny)</td>
  <td>Počet hodin aktuálně probíhajícího pozastavení SLA z důvodu čekání na žadatele nebo stav požadavku.</td>
  <td>Ne</td>
  </tr>
  <tr>
 <td>SLA pozastaveno (hodiny</td>) <td>Celková doba v hodinách, po kterou byla SLA pro požadavek pozastavena (včetně právě probíhajícího pozastavení SLA</td>). <td>ne</td></tr>
  <tr>
  <td>Poznámky</td>
  <td>Poznámky k požadavku</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Požadováno pro</td>
  <td>Jméno a příjmení uživatele, pro kterého byl požadavek vytvořen.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Práce (v hodinách)</td>
  <td>Součet všech prací vykázaných pro vyřešení požadavku.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Priorita</td>
  <td>Priorita řešení požadavku pro interní potřeby řešitelského týmu.<br />
  Význam zobrazených ikon:<br/>
  <img src="../../../alvao-service-desk/requests/Priority5.png" alt="Critical" />Kritický<br/>
  <img src="../../../alvao-service-desk/requests/Priority4.png" alt="High" />Vysoký<br />
  (bez ikony) Střední<br />
  <img src="../../../alvao-service-desk/requests/Priority2.png" alt="Low" />
  Nízká<br/>
  <img src="../../../alvao-service-desk/requests/Priority1.png" alt="Scheduling" />Plánování<br />
  <br />
  Prioritu mohou stanovit sami členové řešitelského týmu nebo může být určena hodnotami položek <a href="../../../alvao-service-desk/implementation/services/impact-urgency">dopadu a naléhavosti</a>. </td>
  <td>Ano</td>
  </tr>
  <tr>
 <td>Proces</td> <td><a href="../../../alvao-service-desk/implementation/services/processes">Proces</a>, který je nastaven na službě, která požadavek zpracovává.</td> <td>ano</td></tr>
  <tr>
  <td>Profesionalita</td>
  <td>Zpětná vazba žadatele - hodnocení profesionality řešení požadavku.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Přečteno</td>
  <td>Obsahuje hodnotu <em>Ano</em>, pokud jste požadavek přečetli, tj. v požadavku na kartě <em>Komunikace</em> nejsou žádné nové zprávy nebo jiné události, které jste ještě nečetli. Hodnota <em>Ne</em> znamená, že jste požadavek nečetli.  <p>Tyto hodnoty se zobrazují pouze u požadavků, jejichž nepřečtenost sledujete, viz <em>Webová aplikace - Uživatelské menu - Nastavení - </em><a href="../../../list-of-windows/alvao-webapp/settings">Zobrazení</a><em>- Požadavky - V seznamech požadavků zvýrazněte nepřečtené požadavky</em>. U ostatních požadavků má tento sloupec prázdnou hodnotu.  </p>
  </td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Přijat</td>
  <td>Pokud byl požadavek vytvořen z e-mailu zaslaného do servisní schránky, zobrazuje se datum přijetí do systému.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Rychlost řešení</td>
  <td>Zpětná vazba od žadatele - spokojenost s rychlostí řešení</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Řešitel</td>
  <td>Aktuální řešitel požadavku</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Řešitel (e-mail)</td>
  <td>E-mailová adresa řešitele požadavku</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Řešitel (kancelář)</td>
  <td>kancelář řešitele</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Řešitel (mobilní)</td>
  <td>Mobilní telefonní číslo řešitele požadavku</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Řešitel (oddělení)</td>
  <td>Oddělení řešitele požadavku</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Řešitel (telefon do zaměstnání)</td>
  <td>Pracovní telefonní číslo řešitele</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Řešitelská skupina</td>
  <td>Aktuální řešitelská skupina, které je požadavek přiřazen k řešení.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Skupina</td>
  <td>Položka umožňující další řazení požadavků do skupin, což umožňuje snadnější filtrování a statistické vyhodnocování požadavků.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>SLA</td>
  <td><a href="../../../alvao-service-desk/implementation/services/sla">Dohoda o úrovni služeb</a>, podle které je daný požadavek řešen.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Sledování požadavku</td>
  <td>Zobrazuje Ano, pokud přihlášený uživatel <a href="../../../alvao-service-desk/requests/subscribers">sleduje požadavek</a>.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Služba</td>
  <td><a href="../../../alvao-service-desk/implementation/services">Služba,</a> v rámci které je požadavek aktuálně řešen.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Související organizace</td>
  <td><a href="../../../alvao-service-desk/implementation/users/companies">Organizace, které</a> se požadavek týká. Obvykle se jedná o žádající organizaci, ale může to být i jiná organizace, např. v případě interního požadavku na proaktivní vzdálenou kontrolu provozu systému u konkrétního zákazníka se jedná o zákazníka, zatímco zadavatelem požadavku je interní zaměstnanec (např. člen týmu řešení služby).</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Spolužadatelé</td>
  <td>Jméno a příjmení <a href="../../../alvao-service-desk/implementation/services/service-roles">spolužadatele</a> požadavku. Pokud je spoluuživatelů více, zobrazí se text "(více spoluuživatelů)". Spoluuživatele můžete upravit na kartě <a href="../../../list-of-windows/alvao-webapp/requests/request">Požadavek</a> - Obecné</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Stav</td>
  <td>Stav podle postupu řešení požadavku. Postup řešení je definován <a href="../../../alvao-service-desk/implementation/services/processes">postupem</a> služby.</td>
  <td>Ano</td>
  </tr>
 <tr>
  <td>Štítek</td>
  <td>Barva štítku, kterou jste tento požadavek označili, viz příkaz <a href="request">Požadavek</a> - Štítek. Požadavek můžete označit pouze jednou barvou. Vybraný štítek se zobrazuje pouze vám. Ostatní uživatelé mohou mít stejný požadavek označený jinou barvou tagu.</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td><a name="TicketRelationType"></a> Typ vazby</td>
  <td>Tento sloupec obsahuje hodnoty pouze v tabulce na <a href="request">stránce Požadavek</a> - záložka <em>Vazby</em> a v ostatních tabulkách požadavků pouze v případě, že jsou povoleny <a href="#ShowTicketRelations">vazby mezi požadavky</a>.<br />
  <br />
  Například na stránce požadavku 1 na kartě <em>Odkazy</em>:<table>
  <thead>
  <tr>
  <th>Typ odkazu</th>
  <th>Číslo požadavku</th>
  <th>Název požadavku</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Předchází před</td>
  <td>2</td>
  <td>požadavek 2</td>
  </tr>
  </tbody>
  </table>
  Tento řádek v tabulce znamená, že požadavek 1 <a href="../../../alvao-service-desk/requests/relations">předchází</a><em> </em>požadavku 2.<br />
  Na stránce s <a href="../requests">požadavky a</a> <a href="#ShowTicketRelations">zobrazenými vazbami</a> to bude vypadat takto:<br />
  <table>
  <thead>
  <tr>
  <th>Typ odkazu</th>
  <th>Číslo požadavku</th>
  <th>Název požadavku</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td></td>
  <td>1</td>
  <td>v požadavku 1</td>
  </tr>
  <tr>
  <td>Předchází před</td>
  <td>2</td>
  <td>&gt; požadavek 2</td>
  </tr>
  </tbody>
  </table>
  <br />
  </td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Termín</td>
  <td>Stanovená <a href="../../../alvao-service-desk/requests/deadline">lhůta pro vyřešení</a> požadavku</td>
  <td>Ano</td>
  </tr>
 <tr>
  <td>Upozornění</td>
  <td>Upozornění na problém s požadavkem, např. na blížící se termín vyřešení požadavku SLA, viz SLA - <a href="../administration/service-desk/sla/detail/notice-notice">pravidlo pro oznamování</a></td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Uzavřeno</td>
  <td>Datum <a href="../../../alvao-service-desk/requests/close-request">uzavření</a> požadavku</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Vyřešeno</td>
  <td>Datum <a href="../../../alvao-service-desk/requests/resolve-request">vyřešeného</a> požadavku</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Vytvořeno</td>
  <td>Datum <a href="../../../alvao-service-desk/requests/new-request">vzniku požadavku</a> (tj. zadání požadavku do systému)</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Vzdálenost (km)</td>
  <td>Součet všech kilometrů, které byly ujety v rámci řešení požadavku.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Závažnost upozornění</td>
  <td>Závažnost upozornění pro problém požadavku, viz <em>sloupec Upozornění</em>.</td>
  <td>Ne</td>
  </tr>
  <tr>
  <td>Způsob podání požadavku</td>
  <td>Způsob vytvoření požadavku, tj. typ události vytvoření požadavku. <div class="ticket">
 <div class="icon"></div>
  <div class="title">Tip: Podle hodnoty lze rozlišit, jestli žadatel podal požadavek samoobslužně (formulář, e-mail), nebo jestli ho zapsal hlavní řešitel (telefon, osobní jednání, …)  </div>
  </td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel</td>
  <td>Jméno a příjmení uživatele, který požadavek zadal.  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  V požadavku jsou uloženy kontaktní údaje žadatele platné v době vytvoření požadavku. Dodatečné změny kontaktních údajů v sekci <em>Administrace</em> - <a href="../administration/users">Uživatelé</a> se neprojeví v existujících požadavcích.  </div>
  </td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (e-mail)</td>
  <td>E-mail žadatele</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (e-mail 2)</td>
  <td>Druhý e-mail žadatele</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (pozice)</td>
  <td>Funkce, kterou žadatel zastává</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (jiný kontakt)</td>
  <td>Další kontakt na žadatele, pokud existuje</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (úřad)</td>
  <td>Označení úřadu žadatele</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (mobilní)</td>
  <td>Číslo mobilního telefonu žadatele</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (oddělení)</td>
  <td>Oddělení, kde žadatel pracuje</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (organizace)</td>
  <td>Organizace žadatele</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (telefon do zaměstnání)</td>
  <td>Pracovní telefon žadatele požadavku</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td>Žadatel (telefon do zaměstnání 2)</td>
  <td>Druhý pracovní telefon žadatele požadavku</td>
  <td>Ano</td>
  </tr>
  <tr>
  <td><em>položky požadavku, žadatel, řešitel, SLA, služba a související organizace</em></td>
  <td>Další sloupce představující <a href="../../../alvao-service-desk/implementation/custom-items">vlastní položky</a> požadavku, osoby, SLA, služby nebo organizace.</td>
  <td>Ne</td>
  </tr>
  </table>
  

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    </style>
</asp:Content>



