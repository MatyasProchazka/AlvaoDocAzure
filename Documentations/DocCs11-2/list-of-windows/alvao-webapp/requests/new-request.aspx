<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový požadavek</h1>
  <p>
  Pomocí tohoto formuláře můžete vytvořit nový požadavek na konkrétní službu.  Konkrétní obsah a vzhled formuláře závisí na situaci, ve které jej používáte, na službě, které požadavek zadáváte, a na nastavení systému. Pokud zadáváte požadavek jako žadatel (např. z katalogu služeb), zobrazí se zjednodušený formulář. Pokud vytváříte požadavek jako člen řešitelského týmu služby, jsou ve formuláři k dispozici všechny položky požadavku  <p>
  Možnosti: V případě, že je požadavek vyřízen, můžete si vybrat, zda jej chcete vyřídit:</p>

  <ul>
  <li><strong>Příkazový panel</strong> <ul> <li><strong>Příloha</strong> - k popisu požadavku připojíte přílohu. Tento příkaz má stejnou funkci jako tlačítko <em>Přidat přílohu</em>. ve formuláři.<li><strong>Kopírovat hodnoty</strong> - vyplní formulář odpovídajícími hodnotami z propojeného požadavku. Tento příkaz se zobrazí pouze v případě, že byl formulář otevřen příkazem <a href="../requests">Nový propojený požadavek</a>. Pole <em>Žadatel</em>, <em>Služba</em> a <em>SLA</em> se nekopírují.<li><strong>použít šablonu</strong> - vyberte <a href="../../../alvao-service-desk/requests/ticket-templates">šablonu požadavku</a>, kterou chcete použít pro vyplnění formuláře.</li><li>Položky, pro které nejsou v šabloně definovány žádné hodnoty, zůstanou beze změny.</li> <li><strong>Požadavky žadatele</strong> - zobrazí tabulku s existujícími požadavky žadatele, které jsou již ve formuláři vyplněny. </li> </ul>
  
  </li>
  <li><strong>New request (select link type) (Nový požadavek (vyberte typ propojení</strong> )) - vyberte, jakým typem propojení má být nový požadavek propojen s požadavkem, která je uvedena pod vstupním polem. Tento povel se zobrazí pouze v případě, že byl formulář otevřen pomocí povelu <a href="../requests">Nová propojená požadavek</a>, viz <a href="../../../alvao-service-desk/requests/relations">Propojení žádostí</a>.</li>

  <li>
 <strong>Žadatel požadavku</strong> - zadejte alespoň část jména žadatele požadavku a poté vyberte žadatele požadavku z rozbalovací nabídky.  <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Pokud <a href="../../../alvao-service-desk/requests/new-request-call-centre">připojíte systém Alvao k ústředně</a>, příchozí hovor automaticky otevře tento formulář na hlavní obrazovce řešitele a příslušný žadatel požadavku bude automaticky vyhledán a vyplněn na základě telefonního čísla volajícího.  </div>
  </li>

  <li><strong>Neregistrovaný uživatel</strong> - tuto možnost povolte, pokud žadatel požadavku není registrovaným uživatelem Alvao (tj. není registrován v <em>Administraci</em> - <a href="../administration/users">Uživatelé</a>).</li>
  <li><strong>Kontaktní údaje</strong> - pokud je žadatelem neregistrovaný uživatel, vyplňte jeho kontaktní údaje. <ul>
  <li><em>Jméno a příjmení</em></li>
  <li><em>Mobilní telefon</em></li>
  <li><em>E-mail, E-mail 2</em></li>
  <li><em>Pracovní telefon</em></li>
  <li><em>Organizace</em> - zadejte část názvu organizace a v rozevírací nabídce vyberte požadovanou organizaci.</li>
  <li><em>Oddělení</em>, <em>pozice</em>, <em>kancelář</em></li>
  <li><em>Další kontakty</em></li>
  </ul>
  </li>
  <li><strong>Služba</strong> - zadejte část názvu služby, do které chcete vložit nový požadavek, a v rozevírací nabídce vyberte hledanou službu.  <ul><li><strong>...</strong> - nebo vyberte službu ve stromu služeb.</li></ul>
  </li>
  <li><strong>Požadováno pro jiného uživatele</strong> - tuto možnost povolte, pokud chcete vytvořit požadavek pro jiného uživatele, např. požadujete vybavení pro svého podřízeného nebo kolegu. Zadejte alespoň část jména uživatele, pro kterého požadavek vytváříte, a poté jej vyberte z rozevírací nabídky. Nabízejí se pouze uživatelé, kteří mají SLA ke službě a jsou ze stejné organizace jako žadatel. </li>
  <li><strong>Název požadavku</strong> - zadejte výstižný název požadavku.</li>
  <li><strong>Popis</strong> - zadejte podrobný popis požadavku.</li>
  <li><strong>Attachments (Přílohy)</strong> - seznam příloh k požadavku<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete připojit jako přílohu. Soubory můžete připojit také přetažením do formuláře.</li>
  </ul>
  </li>
  <li><strong>Objekty</strong> - z rozevírací nabídky vyberte objekt, kterého se požadavek týká. Ve výchozím nastavení nabídka obsahuje majetek svěřený žadateli. Pokud chcete vybrat jiný objekt, zadejte do vstupního řádku část jeho názvu nebo sériové, inventární či evidenční číslo. Můžete také zadat typ objektu, např. zadáním &quot;monitor: dell&quot; můžete vyhledat všechny objekty typu <em>Monitor</em>, jejichž název začíná řetězcem <em>dell</em>.<ul>
  <li><strong>...</strong> - vyhledejte objekt a vyberte jej ve stromu objektů.</li>
  </ul>
  </li>
  <li><strong>SLA</strong> - z rozevírací nabídky vyberte <a href="../../../alvao-service-desk/implementation/services/sla">SLA</a>. Pokud je nabídka prázdná, nemá žadatel ve vybrané službě SLA a nemůže pro tuto službu zadávat požadavky.  </li>
  <li><strong>Dopad</strong> - z nabídky vyberte dopad požadavku, např. <a href="../../../itil/incident-management">incident podle ITIL</a>.</li>
  <li><strong>Urgency (Naléhavost)</strong> - z nabídky vyberte naléhavost požadavku, např. <a href="../../../itil/incident-management">incident ITIL</a>.</li>
  <li><strong>Priorita</strong> - v případě potřeby vyberte z nabídky příslušnou prioritu.<br />
  Priorita může být určena automaticky na základě zvoleného <em>Impact</em>. a <em>Urgency</em>( <em>Dopad</em> a <em>naléhavost</em>).</li>



  <li><strong>Related organisations (Související organizace</strong> ) - v případě potřeby zadejte část názvu organizace, které se požadavek týká, a poté vyberte hledanou organizaci z rozbalovací nabídky.</li>
  <li><strong>Číslo zařízení</strong> - v případě potřeby zadejte číslo zařízení, kterého se požadavek týká.</li>
  <li><strong>Způsob podání požadavku</strong> - z rozevírací nabídky vyberte, prostřednictvím kterého komunikačního kanálu byl požadavek podán. Toto pole se zobrazí pouze v případě, že požadavek podáváte jménem jiného žadatele.</li>

  <li><strong>Přiřadit mně</strong> - povolte, pokud chcete být řešitelem požadavku.</li>
  <li><strong>Přiřadit</strong> - zapněte, pokud chcete požadavek přiřadit konkrétnímu řešiteli nebo skupině řešitelů. <ul>
  <li><strong>Skupina řešitelů</strong> - zadejte část názvu skupiny řešitelů a poté vyberte příslušnou skupinu z rozbalovací nabídky. Pole se zobrazí pouze v případě, že alespoň jedna skupina má u služby nastavenou možnost "Skupina řešitelů".</li>
  <li><strong>Fronta požadavků bez řešitele</strong> - tuto možnost vyberte, pokud chcete požadavek vrátit <a href="../../../alvao-service-desk/implementation/services/service-roles">hlavním řešitelům</a> služby (pokud je požadavek přiřazen skupině <em>Hlavní</em> řešitel) nebo všem řešitelům jiné skupiny řešitelů (pokud je požadavek přiřazen jiné skupině řešitelů než <em>Hlavní</em>).</li>
  <li><strong>Přiřadit řešiteli</strong> - tuto možnost vyberte, pokud chcete požadavek přiřadit konkrétnímu řešiteli. Poté zadejte část názvu řešitele a z rozevírací nabídky vyberte příslušného řešitele.</li>
  <li><strong>Změnit stav požadavku na</strong> - z rozevírací nabídky vyberte stav, na který se má požadavek změnit po přiřazení k řešiteli.</li>
  <li><strong>Zpráva pro řešitele</strong>- případně napište zprávu pro řešitele, která mu bude zaslána v e-mailovém oznámení po přiřazení požadavku k řešení. Pokud jste změnili stav požadavku, je zpráva předvyplněna pokyny pro řešitele podle <em>postupu řešení</em></li>
  </ul>
  </li>

  <li><strong>Zpráva o nákladech</strong> - pokud je to relevantní, <a href="../../../alvao-service-desk/requests/work-time">hlásí čas práce</a> strávený vytvořením požadavku.</li>

  </ul>
</asp:Content>

