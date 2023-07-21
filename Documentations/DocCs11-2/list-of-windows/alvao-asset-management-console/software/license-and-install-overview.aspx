<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přehled licencí a instalací</h1>
<p>V tomto okně najdete srovnání zakoupených licencí a nainstalovaného softwaru.</p>
<p>Možnosti:</p>
	<ul>
 <li>Hlavní nabídka<ul>
  <li><a href="license-and-install-overview/view">Zobrazit</a></li>
  <li><a href="license-and-install-overview/table">Tabulka</a></li>
  <li><a href="license-and-install-overview/actions">Akce</a></li>
  <li><a href="license-and-install-overview/tools">Nástroje</a></li>
  </ul>
  </li>
  <li><strong>Tabulka produktů</strong> - horní tabulka obsahuje seznam produktů. Když v ní vyberete produkt, zobrazí se ve spodní části okna seznam počítačů, na kterých je produkt nainstalován nebo licencován.</li>
  <li><strong>Tabulka zařízení a uživatelů</strong> - ve spodní tabulce jsou zobrazena zařízení a uživatelé, na kterých je nainstalován nebo přiřazen vybraný produkt v horní tabulce. Zobrazují se typy záznamů:<ol>
 <li>Instalace vybraného produktu, na které se vztahuje nebo nevztahuje licence.</li>
 <li>Nepotřebně přidělené licence pro vybraný produkt.</li>
 <li>Instalace jiného produktu, na které se vztahuje licence vybraného produktu (informace ve sloupci &quot;Nainstalovaný produkt&quot; se pak liší).</li>
</ol>

 </li>
	</ul>
  <h2>Sloupce tabulky produktů</h2>

 <ul>
  <li><strong>Ikona</strong> - ikona <img src="../tools/stocktaking/Exclamation.png" />se zobrazuje u produktů, u kterých je problém s licencí, softwarovým profilem nebo stavem produktu.</li>
  <li><strong>Produkt</strong> - název produktu.</li>
  <li><strong>Operační systém</strong> - informace o tom, zda je produkt "operační systém".</li>
  <li><strong>Vydavatel</strong> - vydavatel produktu.</li>
  <li><strong>Instalace bez přidělených licencí</strong> - počet instalací produktu, na které se nevztahuje žádná licence.</li>
  <li><strong>Riziko</strong> - číselná hodnota, kterou lze použít k odhadu rizika spojeného s používáním nelicencovaného softwaru - tato hodnota ukazuje číslo = cena produktu x počet chybějících licencí. Pro zobrazení této hodnoty je třeba ke sledovaným produktům přičíst cenu produktu. Cenu lze nastavit v přehledu produktů např. pomocí <strong>Software - Products (software</strong>) a vložením hodnoty s cenou příslušného softwaru.</li>
  <li><strong>Instalace přidělené bez důvodu</strong> - počet licencí, které jsou přiděleny, ale není nainstalován žádný produkt, který by licence mohla pokrýt.  
  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 licence "OEM" a "CAL" se do počtu zbytečně přidělených licencí nezapočítávají.</div>

  
  </li>
  <li><strong>Nesoulad</strong> - rozdíl mezi počtem zakoupených licencí a počtem instalací. Záporné číslo v tomto sloupci znamená, že chybí stanovený počet licencí pro daný produkt. Zakoupené licence by měly být uvedeny v <a href="../../../alvao-asset-management/software-management/licenses">registru licencí</a><div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Každá instalace produktu, která nemá přiřazenou licenci, čerpá právě 1 licenci, a to i v případě licence jádra. Proto v případě instalací bez přiřazených licencí jádra bude tento sloupec pravděpodobně zobrazovat vyšší hodnotu, než je skutečný počet volných licencí. </div>

  </li>
  <li><strong>Licence na skladě (na zařízení</strong> ) - Počet dostupných (volných) licencí na skladě pro licence na zařízení. V případě multilicencí se uvádí hodnota &quot;999999&quot;.</li>
  <li><strong>Licence na skladě (na uživatele</strong> ) - počet dostupných (volných) licencí na skladě pro licence na uživatele. Pro multilicence se zadává &quot;999999&quot;.</li>
  <li><strong>Licence na skladě (na jádro</strong> ) - počet dostupných (volných) licencí na skladě pro licence na jádro.</li>
  <li><strong>Celkový počet licencí (na zařízení</strong> ) - celkový počet zakoupených licencí na zařízení.</li>
  <li><strong>Celkem licencí (na uživatele</strong> ) - celkový počet licencí zakoupených na uživatele.</li>
  <li><strong>Celkový počet licencí (na jádro</strong>) - celkový počet zakoupených licencí na jádro</li>
  <li><strong>Unlimited/Floating</strong> - (neomezený počet licencí) - hodnota Ano znamená, že máme k dispozici neomezený počet licencí.</li>
  <li><strong>Instalace</strong> - celkový počet instalací produktu na počítačích v síti.</li>
  <li><strong>Zvláštní instalace</strong> - tento atribut označuje instalaci softwaru, u které nechceme čerpat licenci, např. umístění produktu na souborový server, testovací instalace produktu v rámci přejímacího řízení apod.</li>
  <li><strong>Sdílená licence</strong> - počet instalací na přenosných počítačích, na které se vztahuje licence pro stolní počítače. Některé produkty lze v rámci jedné licence instalovat na stolní počítač i notebook jednoho uživatele. Tento sloupec udává počet instalací na přenosných počítačích.</li>
  <li><strong>Typ</strong> - typ softwaru. Tento údaj je pouze orientační. Stejné produkty se mohou prodávat pod různými licencemi.</li>
  <li><strong>Audit</strong> - Má být produkt zobrazen v této tabulce? Produkt můžete z hodnocení vyloučit tak, že na něm stisknete pravé tlačítko myši a vyberete příkaz z nabídky - <a href="license-and-install-overview/audit">Audit.</a>.., ve kterém zvolíte <strong>Ne.</strong><br/>Skryté produkty budou v tomto okně viditelné, jakmile povolíte zobrazení neauditovaných produktů pomocí <strong>Zobrazit -</strong>. Neauditované produkty</strong>.</li>
  <li><strong>Parametr1</strong> - uživatelský parametr výrobku.</li>
  <li><strong>Parametr2</strong> - uživatelský parametr výrobku.</li>
  <li><strong>Popis produktu</strong> - poznámka/popis produktu.</li>
  <li><strong>Stav produktu</strong> - obsahuje nastavený stav produktu.</li>
  <li><strong>Schválená verze</strong> - pokud je stav produktu nastaven na "Schváleno" nebo "Schváleno - plánováno vyřazení", obsahuje tento sloupec přesnou verzi schváleného produktu.</li>
  <li><strong>Product status updated by (Stav produktu aktualizoval</strong> ) - zde je uvedena osoba, která naposledy provedla změnu stavu produktu.</li>
  <li><strong>Stav produktu aktualizován</strong> - tento údaj udává, kdy byla naposledy provedena změna stavu produktu.</li>
  <li><strong>Bude vyřazen z provozu</strong> - pokud je stav produktu nastaven na "Schválen - plánováno vyřazení", tento sloupec uvádí datum, kdy se stav produktu změní na "Vyřazen".</li>
  <li><strong>Požadavek</strong> - pokud je stav produktu nastaven na "Schvaluje se", lze zde zadat číslo požadavku ze Service Desku, kde se toto schválení řeší.</li>
  <li><em>Vlastní položky produktu</em></li>
 </ul>

	<h2>Sloupce tabulky zařízení a uživatelů</h2>
 <ul>
 <li><strong>Chybová zpráva</strong> - zobrazuje chybu přiřazené licence, softwarového profilu nebo stavu produktu</li>. <li>Ikona <img src="../tools/stocktaking/Exclamation.png" />se zobrazí, pokud je ve sloupci zobrazena nějaká chybová zpráva.</li> <li><strong>Druh záznamu</strong> - zobrazí typ záznamu: <ul>. </ul> </li> </ul><img src="../tab-view/software/SwInstallation.GIF" /> <ul> <li> <ul> <li> <strong>Instalace</strong> - produkt je nainstalován v počítači.</li> <li>Stav licence nebo softwarového profilu se zobrazuje v příslušných sloupcích.</li> </ul> </li> </ul><img src="../tab-view/software/SwLic.PNG" /> <ul> <li> <ul> <li> <strong>Licence</strong> - licence vybraného produktu je přiřazena počítačům.</li> </ul> </li> <li> <ul> <li>Může to být:</li> <ul> <li> licence "CAL",</li> <li>redundantně přidělená licence,</li> <li>licence pokrývající instalace jiného produktu.</li> <p>Další informace naleznete ve sloupcích "Stav licence", "Typ licence" a "Instalovaný produkt". </p> </ul> </ul> </li> </ul><img src="../tab-view/software/SwProfReq.GIF" /> <ul> <li> <ul> <li> <strong>Požadovaný produkt</strong> - v počítači chybí instalace produktu, který je v softwarovém profilu definován jako "požadovaný".</li> </ul> </li> <li><strong>Objekt</strong> - název objektu ve stromu, na kterém je produkt nainstalován nebo licencován.</li> <li><strong>Cesta ve stromu</strong> - zobrazení cesty ve stromu, kde se zobrazený objekt nachází.</li> <li><strong>Nadřazený objekt</strong> - nadřazený objekt ve stromu (</li>např, <li>Uživatel), pod kterým se objekt nachází.</li> <li><strong>Stav licence</strong> - zobrazí stav licence pro vybraný produkt na vybraném počítači. Možné hodnoty: <li><strong>Není</strong></li>potřeba <li>- licence pro produkt není potřeba (jedná se o freewarový produkt</li>). <li><strong>Přidělena</strong> - licence pro produkt je přidělena.</li> <li><strong>Chybí</strong> - licence pro produkt není přidělena, ale je potřeba (produkt je komerční/sharewarový)</li>. <li>Jedná se o chybový stav</li>. <li><strong>Přeplněno</strong> - licence k produktu je počítači přidělena, ale produkt není v počítači nainstalován (počítač čerpá licenci zbytečně</li>). <li>Jedná se o chybový stav.</li> <li><strong>Speciální</strong> - instalace je označena jako speciální (sharewarový produkt, zkušební instalace apod.). Licenci v tomto případě hlídá správce systému.</li> <li><strong>Sdílená</strong> - počítač sdílí licenci s jiným počítačem (např. notebook sdílí licenci se stolním počítačem)</li> </ul><p>Licenci můžete počítači přiřadit buď v záznamu o získání licence v registru licencí (viz. <a href="../../../alvao-asset-management/software-management/licenses">Registr licencí</a>) na kartě <strong>Položky licence</strong>, nebo kliknutím na počítač v tomto seznamu a výběrem příkazu - Přidělit licenci počítači... z nabídky, který otevře okno <a href="license-and-install-overview/actions/allocate-license">Přidělit licenci</a> s volnými nepřidělenými licencemi, nebo příkazem - Přidělit licenci počítači automaticky, který automaticky vybere první volnou licenci. K odebrání licence slouží příkaz - Odebrat licenci počítači.</p>
 </li>
 <li><strong>Licence z produktu</strong> - název produktu, jehož licence pokrývá instalaci produktu.</li> <li><strong>Licence</strong> - název licence, která pokrývá instalaci produktu.</li> <li><strong>Typ licence</strong> - typ licence.</li> <li><strong>Licenční model</strong> - na zařízení, na uživatele, na připojení, na procesor.</li> <li><strong>Počet přidělených licencí</strong> - počet licencí přidělených objektu</li> <li><strong>Aktivační klíč</strong> <strong>(licence</strong> ) - - aktivační klíč přiděleného licenčního prvku.</li>
 <li><strong>Inventární číslo licence</strong> - inventární číslo přiřazené licenční položky.</li> <li><strong> Nákladové středisko (licence</strong></li>) - <li>nákladové středisko, ke kterému je licence přiřazena.</li> <li><strong>Organizace (licence)</strong></li>- <li>organizace, ke které je licence přiřazena.</li> <li><strong>Licenci vytvořil</strong></li>- <li>osoba, která licenci vytvořila.</li> <li><strong>Licence byla vytvořena</strong> - datum, kdy byla licence vytvořena.</li> <li><strong>Licenci přidělil/odebral</strong> - osoba, která licenci přidělila (pokud byla přidělena), nebo osoba, která licenci naposledy odebrala (pokud nebyla přidělena)</li>.
 <li><strong>Licence přidělena/odejmuta</strong> - datum, kdy byla licence naposledy přidělena nebo případně odebrána.</li> <li><strong>Poznámka k licenci</strong> - zobrazte poznámku uvedenou u licence, sdílené licence nebo speciální instalace -. v závislosti na licenčním pokrytí produktu v počítači.</li> <li><strong>Dokument</strong> - označení dokumentu, pro který byla přidělená licence zakoupena (dokument je uveden u nákupu licence)</li>.
 <li><strong>Sdílí licenci s</strong> - zobrazí se název objektu, ze kterého je licence sdílena - počítač nebo uživatel.</li> <li><strong>Produkt</strong> - zobrazí se vybraný produkt (může být užitečné, pokud je v horním seznamu vybráno více produktů najednou).</li> <li><strong>Instalovaný produkt</strong> - přesný název nainstalovaného produktu rozpoznaný knihovnou softwarových produktů SWLIB.</li> <li><strong>Speciální instalace</strong> - hodnota Ano znamená, že se jedná o speciální instalaci produktu. Tuto hodnotu můžete změnit stisknutím pravého tlačítka myši na položce a výběrem možnosti - Speciální instalace z nabídky.</li> <li><strong>Instalováno</strong> - datum instalace produktu.</li> <li><strong>Instalováno</strong> - osoba, která instalaci provedla.</li> <li><strong>Zjištěný produkt</strong> - přesný název nainstalovaného produktu zjištěný detekcí ze systémového registru nebo ze spustitelného souboru.</li> <li><strong>Zjištěná verze</strong> - přesná hodnota verze nainstalovaného produktu zjištěná detekcí ze systémového registru nebo ze spustitelného souboru.</li>
 <li><strong>Detected ProductID (zjištěné ID produktu)</strong> - hodnota ProductID nainstalovaného produktu zjištěná detekcí ze systémového registru nebo ze spustitelného souboru.</li> <li><strong>Activation Key (zjištěný aktivační klíč</strong> ) - zobrazení zjištěného aktivačního klíče produktu.</li> <li><strong>Software from (poslední detekce softwaru</strong> ) - datum posledního vyhodnocení detekce softwaru v počítači.</li> <li><strong>Software Profile Status (stav profilu softwaru</strong> ) - zobrazení údaje o stavu instalace produktu oproti definici profilu softwaru. Možné hodnoty:<ul> <li><strong>Volitelný</strong> - produkt je v profilu definován jako volitelný nebo je pro počítač nastavena volba <strong>Všechen software je povolen</strong>. V tomto případě se instalace produktu vůči softwarovému profilu nesleduje.</li> <li><strong>Povinný</strong></li></ul>-<ul> <li>produkt je v profilu definován jako povinný.</li> <li><strong>Zakázaný</strong> - produkt je v profilu definován jako zakázaný. Produkt je nainstalován, ale je zakázán - např. někdo produkt nainstaloval bez souhlasu správce apod.  Všechny produkty, které nejsou v profilu povoleny, jsou ve výchozím nastavení zakázány (pokud není povolen veškerý software v počítači).</li> <li>Jedná se o chybový stav.</li> <li><strong>Chybí</strong> - produkt je v profilu definován jako povinný, ale v počítači není nainstalován.</li></ul><ul> <li>Tento stav je chybový</li></ul>. <p>Nastavení profilu počítače lze nastavit ve stromu objektů vyvoláním příkazu - Edit....</p>. <p>Poté lze profil nastavit na <strong>záložce</strong> <strong>Objekt - Profil softwaru</strong> (tato záložka je viditelná pouze pro objekty typu &quot;počítač&quot; a &quot;počítačová sestava&quot;). Nastavení profilu lze provést také hromadně na <strong>kartě Objekty - Software. Počítače</strong> vyvoláním příkazu <strong>Změnit profil softwaru.</strong>.. z kontextové nabídky.</p> </li>Ve <li>stromu objektů (počítač nebo uživatel), na kterém je produkt nainstalován nebo licencován</li>, lze nastavit <li><strong>libovolné vlastnosti</strong>. Sloupce jsou pojmenovány podle názvu vlastnosti s příponou "(objekt)"</li><p>Sloupce pro modul <a href="../../../modules/alvao-sam-assistant">ALVAO SAM Assistant</a>:</p>
 <ul>
  <li><strong>Výstrahy odeslané</strong> - celkový počet odeslaných výstrah.</li>
  <li><strong>Poslední výstraha</strong> - datum, kdy byla odeslána poslední výstraha.</li>
  <li><strong>Další plánovaný alert</strong> - datum, kdy bude odeslán další alert.</li>
</ul>
 <p>Ve spodní tabulce můžete také zobrazit jakoukoli hodnotu vlastnosti počítače (i zděděnou), položky vlastní licence a položky vlastního produktu.</p>
 <p>Obsah tabulky můžete vytisknout pomocí příkazu <strong>Tabulka - Tisk</strong> z místní nabídky nebo ji můžete dále zpracovat v aplikaci Microsoft Excel pomocí příkazu <strong>Tabulka - Analýza v tabulce MS Excel</strong>.</p>

	<h2>Scénáře použití</h2>

 <ul>
  <li>Správce SAM kontroluje legálnost používání softwaru v organizaci. Vyhledává instalace softwaru, na které se nevztahují licence, a řeší je.</li>
  <li>Správce SAM kontroluje, zda nedochází ke zbytečným nákupům softwarových licencí. Vyhledává zbytečně přidělené licence a skladové licence.</li>
  <li>Kontroluje, zda zjištěný aktivační klíč produktu odpovídá aktivačnímu klíči přidělené licenční položky.</li>
  <li>Exportuje přehled vybraných produktů (instalací na počítačích) do aplikace MS Excel</li>
 </ul>
	
 <h3>Kontrola chybějících licencí</h3>
    <ol>
        <li>V AM Console použijte <strong>Software - Přehled licencí a instalací</strong>.</li>
        <li>V horním a dolním seznamu vyberte možnost <strong>Zobrazit</strong> chybějící licence.</li>
        <li>V horním seznamu je ve sloupci Installations with no licenses assigned (Instalace bez přidělených licencí) uveden počet instalací, na které se nevztahuje žádná licence.<br />
            Pro každý produkt       <ol>
				<li>Vyberte produkt v seznamu pomocí myši. V dolním seznamu kliknutím myši vyberte produkt a kliknutím na něj zobrazte seznam počítačů, kterým chybí licence.</li>
                <li>Vyberte tyto počítače ve spodním seznamu a přiřaďte jim licenci pomocí příkazů &quot;Přiřadit licenci&quot; nebo &quot;Přiřadit licenci automaticky&quot;.</li>
            </ol>
        </li>
    </ol>

  <h4>Stanovení priorit podle rizika sankcí</h4>
 
 <p>Nejprve řešte licence k produktům, které představují pro organizaci největší riziko sankce v případě softwarového auditu.</p>
 <p>Doporučený postup:</p>
 <ol>
 <li>V AM Console použijte příkaz Software - Produkty.</li>
 <li>V seznamu vyhledejte hlavní produkty používané v organizaci a pomocí příkazu Upravit přidejte orientační cenu 1 licence (záložka Produkt - Cena). Významné produkty jsou ty, které jsou nainstalovány na velkém počtu počítačů nebo mají vysokou cenu licence.</li>
 <li>V horním seznamu zobrazte sloupec Riziko. Tento sloupec zobrazuje celkovou cenu potenciálně chybějících licencí produktu.</li>
 </ol>

  <h4>Řízení orientace bez přidělování licencí</h4>
  Pokud nechcete přidělovat licence konkrétním počítačům, můžete kontrolovat licence pouze podle sloupce Nesoulad, který musí být nulový nebo musí mít kladné číslo.  
 <h3>Vyhledání zbytečně přidělených licencí</h3>
  
  <ol>
 <li>V AM Console použijte příkaz Software - &quot;Přehled licencí a instalací&quot;.</li>
 <li>V horním a dolním seznamu vyberte možnost <strong>Zobrazení</strong>. Zbytečně přidělené licence</strong>.</li>
 <li>V seznamu vyberte jeden produkt. Ve spodním seznamu se zobrazí počítače, na kterých je licence přidělena, ale produkt není nainstalován. Licenci můžete z počítače odebrat pomocí příkazu &quot;Odebrat licenci počítače&quot; z místní nabídky.</li>
  </ol>
  <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Položka se sdílenou licencí ve spodním seznamu je zobrazena bez ikony upozorňující na nepřidělenou licenci. Také v případě speciální instalace se předpokládá, že takovou licenci hlídá správce systému.</div>

 <h3>Zkontrolujte, zda se zjištěný aktivační klíč produktu shoduje s aktivačním klíčem přiřazené licence</h3>
  
  <ol>
 <li>V hlavní nabídce použijte příkaz <strong>Software - Přehled licencí a instalací</strong>.</li>
 <li>Zobrazí se okno <strong>Přehled licencí a instalací</strong>.</li>
 <li>Vyberte konkrétní produkt - ve spodní tabulce se zobrazí instalace produktu.</li>
 <li>Zkontrolujte, zda <strong>se</strong> hodnoty ve <strong>sloupcích shodují s aktivačním klíčem (zjištěným)</strong> a <strong>aktivačním klíčem (licencí</strong>).</li>
  </ol>

 <h3>Export přehledu vybraných produktů (instalace na počítačích) do aplikace MS Excel</h3>

  <ol>
 <li>V horním seznamu vyberte více produktů.</li>
 <li>V dolním seznamu se zobrazí počítače, na kterých jsou vybrané produkty nainstalovány (nebo mají přebytečnou licenci). Ve sloupci <strong>Produkt</strong> se zobrazuje název produktu.</li>
 <li>Ve spodní tabulce z místní nabídky použijte příkaz <strong>Tabulka - Analyzovat v tabulkovém procesoru MS Excel</strong>.</li>
 <li>Zobrazí se tabulka MS Excel se souhrnem vybraných produktů.<br />
 Poznámka: Aktuální zobrazení tabulky se přenese do MS Excel - pořadí a viditelnost sloupců.</li>
  </ol>

 <h3>Aktualizace záznamů o instalaci</h3>
 Pokud jsou v seznamu níže uvedeny počítače, ze kterých byl produkt nedávno odinstalován, můžete provést aktuální detekci softwaru na těchto počítačích následujícím způsobem:<ol>
 <li>V horním seznamu vyberte požadovaný software.</li>
 <li>V dolním seznamu vyberte počítače, na kterých by již software neměl být.</li>
 <li>V místní nabídce vyberte možnost <strong>Detect....</strong>.</li>
 <li>Otevře se okno pro vytvoření požadavku na novou detekci, kde můžete nastavit požadovanou metodu detekce a případně povolit funkci <strong>Detekovat a okamžitě vyhodnotit</strong>, aby se změny v záznamech objevily co nejdříve. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Pokud vyberete metodu detekce "autonomní agent", bude detekce prováděna v závislosti na aktuálním intervalu agenta, který kontaktuje webovou službu. </div>

 </li>
  </ol>


</asp:Content>
