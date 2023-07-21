<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový server </h1>
  <p>Tento formulář slouží k nastavení nového serveru s nainstalovaným nástrojem <a href="../../../../../alvao-asset-management/implementation/detection/collector">Asset Management Collector</a>.</p>
  <p>Funkce:</p>
  <ul>
  <li><strong>Obecné</strong><ul>
  <li><strong>Název hostitele</strong> - zadejte síťový název serveru.</li>
  <li><strong>Popis</strong> - zadejte případný popis serveru.</li>
  </ul>
  </li>
  <li><strong>Detekce</strong><ul>
  <li><strong>Zpracování detekce</strong><ul>
  <li><strong>Detekovat a vyhodnotit (plánování vyhodnocení se neprojeví</strong> ) - vyberte, zda má Collector vyhodnotit detekovaná data ihned po provedení detekce. Collector zapíše změny do stromu objektů a do <em>registru Instalace</em>.</li>
  <li><strong>Detekovat a naplánovat vyhodnocení</strong> - vyberte, zda má Collector provést detekci, ale nevyhodnocovat detekovaná data. kolektor pouze naplánuje vyhodnocení dat.   <div class="note">
  <div class="icon"></div>
   <div class="title">Poznámka:</div> Pokud chcete použít plánování, doporučujeme použít toto nastavení.</div>
  <div class="tip">
  <div class="icon"></div>
   <div class="title">Tip:</div> Při nasazení více instancí nástroje Collector v síti můžete tuto možnost použít, aby některé instance pouze detekovaly počítače a například jedna instance mohla detekce vyhodnocovat. Tím se urychlí sběr dat (a zpozdí jejich vyhodnocení).</div>
  </li>
   </ul>
  </li>
  <li>Pomocí <strong>příkazu PING zjistíte, zda je počítač zapnutý</strong><ul>
  <li><strong>Detekce metodou "Agent přes TCP/IP</strong> " - zvolte, chcete-li povolit funkci PING pro ověření přítomnosti počítače v síti pro detekci <em>Agentem přes TCP/IP</em>.</li>
  <li><strong>Detekce metodou "bez Agenta</strong> " - vyberte pro aktivaci ověření přítomnosti počítače v síti pomocí funkce PING pro detekci <em>bez Agenta</em>.</li>
  </ul>
  <div class="note">
  <div class="icon"></div>
   <div class="title">Poznámka:</div>Tyto možnosti jsou ve výchozím nastavení povoleny. Doporučujeme je vypnout pouze v případě, že v síti nefunguje funkce PING (v takovém případě by Collector určil všechny počítače jako zakázané).</div>
  </li>
  <li><strong>Znovu zjistěte počítač v</strong><ul>
  <li><strong>__ minutách při vypnutém počítači</strong> - zadejte v minutách nejbližší dobu, kdy se má Collector znovu pokusit detekovat vypnutý počítač. </li>
  <li><strong>__ minut v případě chyby detekce</strong> - zadejte v minutách nejbližší čas, kdy by se měl Collector znovu pokusit detekovat počítač po posledním neúspěšném pokusu o detekci. </li>
  </ul>
  </li>
 <li><strong>Zpracovat v jednom bloku</strong> - Collector zpracovává požadavky v blocích. V každém bloku zpracuje nejvýše zadaný počet požadavků a na konec bloku umístí čekání (stav čekání)   <ul>
   <li><strong>__ detekce počítače</strong> - Zadejte maximální počet detekcí, které má Collector provést v rámci jednoho bloku.</li>
   <li><strong>__ vyhodnocovací operace detekce</strong> - zadejte maximální počet naplánovaných vyhodnocovacích operací, které má Collector provést v rámci bloku  <div class="note">
   <div class="icon"></div>
   <div class="title">Poznámka:</div>
  <ul>
  <li>Collector, který provádí vyhodnocovací operace, se také stará o přidělování a odebírání softwarových licencí, které mají povolenou možnost <strong>Automaticky přidělovat</strong>.</li>
  <li>Vyhodnocovací operace vytváří Collector s povolenou možností <strong>Detekce a plánování vyhodnocování</strong>.</li>
  <li>Vyhodnocovací operace se vytvářejí také za účelem opětovného vyhodnocení detekce softwaru při načtení nové verze <a href="../../../../../alvao-asset-management/software-management/custom-swlib">Knihovny softwarových produktů</a>.</li>
  </ul>
  </div>
   </li>
   </ul>
 </li>
 <li><strong>Stav čekání mezi zpracováním bloků -</strong> zadejte délku čekací doby mezi bloky v minutách.</li>
 <li><strong>Provádět detekce pouze na počítačích, které odpovídají filtru-</strong> zadejte filtr definující počítače, které mají být detekovány touto instancí kolekce. <br />
  Příklad: Pokud chcete, aby instance Collector detekovala pouze počítače, které se nacházejí někde v objektu "ALVAO Branch", použijte filtr: <br />
 <pre class="console" translate="no">EXISTS (
SELECT *
FROM tblNodeParent NP 
INNER JOIN tblNode N ON NP.lintParentNodeId=N.intNodeId
WHERE NP.lintNodeId=D.lintComputerNodeId
 AND N.txtName=N'Office ALVAO'
)</pre>
  <div class="note">
  <div class="icon"></div>
	  <div class="title">Poznámka:</div><br />
	  Jedná se o podmínku v SQL dotazu do databáze, která vybírá požadavky na provedení detekce.<br/>V ukázce se objevuje alias D, který představuje tabulku tblDetect.</div>
 </li>
 <li><strong>Provádět vyhodnocovací operace pouze pro počítače odpovídající filtru</strong> - Zadejte filtr, který definuje počítače, pro které má tato instance Collectoru provádět vyhodnocovací operace. Filtr má stejný formát jako filtr pro provádění detekcí.</li>
  </ul>
 <div class="note">
  <div class="icon"></div>
	  <div class="title">Poznámka:</div><br />
	 Počítače, které jsou umístěny ve stromové struktuře pod objektem typu <em>Sklad</em>, nejsou v žádném případě detekovány.</div>
  </li>
  <li><strong>Plánování</strong> - nastavení plánování detekcí počítačů. <ul>
 <li><strong>Plán detekce (zatížení sítě) . </strong>- Zapněte, pokud mají detekce probíhat pouze v určitém časovém intervalu.  
  <ul>
 <li><strong>Detekovat počítače denně pouze v následujícím intervalu</strong> - určete, od kdy do kdy mají detekce probíhat.  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
    Intervaly jsou uloženy v UTC a nerespektují přechod mezi letním a zimním časem. Pokud například zadáte interval v létě, bude v zimě posunut o hodinu a jako takový se zobrazí v nastavení.</div>
  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Toto nastavení se nevztahuje na metodu detekce <em>autonomního agenta</em>.</div></li>
    <li><strong>Výjimky (rozvrh se nevztahuje na následující dny</strong>) - Vyberte dny, ve kterých budou detekce prováděny po celý den (nebudou podléhat rozvrhu detekce).</li>
  </ul>
  <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Plánováním detekcí lze omezit zatížení sítě, např. v provozní době, kdy je třeba využít plnou kapacitu sítě.</div>

 </li>
 <li><strong>Schedule for evaluations and automatic detection loading (SQL Server load) (Plánování vyhodnocování a automatického načítání detekcí (zatížení SQL Serveru</strong>)) - Zapněte, pokud se má vyhodnocování detekcí provádět pouze v určitém časovém intervalu. <ul>
 <li><strong>Vyhodnocovat detekce denně pouze v následujícím intervalu -</strong> určete, od kdy do kdy má vyhodnocení probíhat.  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Viz výše uvedená poznámka k plánu detekce.</div></li>
  <li><strong>Výjimky (plán se nevztahuje na následující dny</strong>) - vyberte dny, ve kterých bude vyhodnocování probíhat celý den (nebude podléhat plánu vyhodnocování).</li>
  </ul>
 <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Plánováním vyhodnocování detekcí je možné omezit zatížení SQL serveru například v provozní době, kdy zaměstnanci přistupují k databázi na tomto SQL serveru. Zejména vyhodnocení detekce softwaru je náročná operace, která může SQL server značně zatížit.</div>
  <div class="caution">
 <div class="icon"></div>
  <div class="title">Upozornění:</div>
  Toto nastavení ovlivňuje také funkci automatického načítání detekce.</div>
 </li>
  </ul>
 </li>
  <li><strong>Načítání souborů</strong> - nastavení pro ruční detekci počítače. <ul>
 <li><strong>Automatické načítání souborů ruční detekce (*.CXM </strong>) - Povolte, pokud chcete, aby server načítal soubory ruční detekce z určité složky. <ul>
 <li><strong>Automaticky načítat soubory CXM ze složky</strong> - zadejte cestu ke složce, kterou bude Collector sledovat a ze které bude načítat nové detekce do databáze. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Zadaná cesta je složka v konfigurovaném počítači, ale tlačítko <strong>..</strong>. prochází složky v místním počítači. Nastavte cestu tak, aby odpovídala struktuře disků a složek, jak je vidět z nakonfigurovaného serveru.</div></li>
 <li><strong>Pokud proces načítání proběhl úspěšně</strong><ul>
 <li><strong>Přesunout soubor CXM do podsložky "Zpracováno</strong>" - vyberte, zda se má soubor CXM po načtení detekce přesunout do složky "Zpracováno".</li>
 <li><strong>Odstranit soubor CXM</strong> - vyberte, zda má být soubor CXM po načtení detekce odstraněn.</li>
 </ul>
 </li>
 <li><strong>Pokud se načtení nezdařilo</strong><ul>
 <li><strong>Přesunout soubor CXM do podsložky "Failed" (Neúspěšné</strong>) - vyberte, zda má být soubor CXM, který se nepodařilo načíst, přesunut do složky "Failed" (Neúspěšné).</li>
 <li><strong>Smazat soubor CXM</strong> - vyberte, zda má být soubor CXM, který se nepodařilo načíst, smazán.</li>
 </ul>
 </li>
 </ul>
 <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  U automaticky načtených detekcí jsou objekty typu <em>Assembly</em> (počítač) ve složce "Počítače z načtených detekcí" v kořeni stromu objektů. U počítače, který již ve stromu existuje, se stávající detekce pouze aktualizuje.</div>
 </li>
	</ul>
  </li>
  <li><strong>Knihovna sw produktů</strong> - nastavení aktualizací <a href="../../../../../alvao-asset-management/software-management/custom-swlib"> knihoven softwarových produktů</a><ul>
 <li><strong>Automatická aktualizace</strong><ul>
 <li><strong>Stáhnout z webu</strong> - zapněte, pokud má Collector automaticky stahovat nejnovější knihovny softwarových produktů z webu.<ul>
  <li><strong>Období ověřování dostupnosti knihovny (dny</strong> ) - zadejte ve dnech, jak často se má kontrolovat, zda je na webu výrobce k dispozici nová knihovna sw produktů.</li>
  </ul>
  </li>
  <li><strong>Načíst ze zálohy</strong> - tuto možnost aktualizace knihovny doporučujeme použít, pokud Collector nemá přístup k internetu. Pak pravidelně jednou týdně stáhněte soubor <a href="https://www.alvao.com/downloads/swlib2.swl">https://www.alvao.com/downloads/swlib2.swl</a> z webu a uložte jej do složky na disku serveru.<p>Cestu ke složce zadejte tak, aby odpovídala struktuře disku a složek z pohledu nakonfigurovaného serveru.</p>
  </li>
  <li><strong>Neaktualizovat</strong> - Collector nebude automaticky aktualizovat knihovnu.</li>
 <li><strong>Automaticky vyhodnotit stávající detekce podle nové knihovny</strong> - Povolte, pokud chcete automaticky vyhodnotit stávající detekce softwaru podle nové knihovny softwarových produktů.</li>
  </ul>
 </li>
 <li><strong>Odesílat požadavky na změny v knihovně softwarových produktů přes internet</strong> - zapněte, pokud chcete, aby Collector odesílal požadavky na změny do knihovny softwarových produktů.<br/>Požadavky na změny zahrnují <em>požadavky na přidání nového produktu</em>nebo <em>požadavky s nerozpoznaným softwarem</em>.</li>
 <li id="l"><strong>Automaticky vyhledávat nerozpoznaný software</strong>- zapněte, pokud má Collector jednou týdně vyhledávat v celé databázi nerozpoznaný software.<br/>Nerozpoznané záznamy se uloží, a pokud odešlete požadavky na změny do knihovny sw produktů (výše uvedená možnost), budou odeslány specialistům technické podpory ALVAO, kteří nerozpoznaný software přidají do standardní knihovny. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Každou fázi (vyhledání záznamů a odeslání požadavků) může provádět jiný Collector.</div>

 <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Automatické vyhledávání nerozpoznaného softwaru se provede pouze v případě, že knihovna v databázi není starší než jeden měsíc.</div></li>
 <li><strong>Odmítnutí zasílání informací o nerozpoznaném a novém softwaru</strong><ul>
 <li><strong>Pokud potřebujete další informace, můžete mě kontaktovat na e-mailu</strong> - vyberte, zda vás v případě potřeby mohou kontaktovat pracovníci technické podpory, a vyplňte kontaktní osobu e-mailu.</li>
 <li><strong>Nepřeji si být kontaktován. Chci zasílat údaje anonymně</strong> - vyberte, zda chcete údaje zasílat anonymně. Naši specialisté vás nebudou moci kontaktovat, takže pokud některé nerozpoznané výrobky nebude možné identifikovat podle vámi zaslaných záznamů, výrobek nebude zařazen do standardní knihovny.</li>
  </ul>
 </li>
	</ul>
  </li>
  </ul>

</asp:Content>
