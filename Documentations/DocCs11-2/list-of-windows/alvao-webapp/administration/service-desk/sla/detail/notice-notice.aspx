<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pravidlo oznamování</h1>

<p>Toto okno slouží k vytvoření a úpravě jednoho pravidla oznámení. Pro jednu <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a> může existovat více pravidel.</p>

<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Podrobnější vysvětlení jednotlivých uživatelských rolí naleznete <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">zde</a></div>

<p>Volby: V případě, že se chcete vrátit do systému, můžete použít následující možnosti: 1:</p>

<ul>
  <li><strong>Závažnost výstrahy</strong> - vyberte ikonu, která se zobrazí v tabulce Požadavky ve sloupci Výstrahy a v záhlaví požadavku, pokud je splněna podmínka pravidla výstrahy.</li>
  <li><strong>Typ výstrahy</strong><ul>
  <li><strong>Upozornění na nevyřízený požadavek</strong> - vyberte, zda chcete zasílat upozornění v případě nečinnosti uživatele. <ul>
  <li><strong>Neaktivní uživatelé</strong> - vyberte z nabídky skupinu uživatelů, na jejichž nečinnost má být upozornění zasláno.   Uživatel je považován za neaktivního, pokud na něm závisí další zpracování požadavku a během zadané doby nečinnosti nebyl v protokolu požadavků vytvořen žádný záznam. <em>řešitel Skupina</em> může být neaktivní pouze v případě, že požadavek nemá konkrétního řešitele. <em>Požadavek</em> může být neaktivní pouze v případě, že čeká na odpověď (tj. např. řešitel odeslal zprávu žadateli a povolil možnost <a href="../../../../../../alvao-service-desk/requests/send-message">čekat na odpověď</a> ). Viz také <a href="../../../../../../alvao-service-desk/requests/wait-for-response">čekání na žadatele</a></li>
  <li><strong>Doba nečinnosti</strong> - zadejte dobu nečinnosti, po které bude zasláno oznámení. Doba nečinnosti se započítává do provozní doby SLA.</li>
  </ul>
  </li>
  <li><strong>First response deadline expires in (Lhůta první odpovědi vyprší za</strong> ) - vyberte, zda chcete zasílat oznámení, když se blíží lhůta první odpovědi.<br />
  Zadejte dobu do první odpovědi ve formátu hodiny:minuty. Oznámení bude odesláno, pokud doba do uplynutí lhůty první odpovědi na požadavek klesne pod zadanou dobu. Pokud zadáte hodnotu 0, bude upozornění odesláno pouze po uplynutí doby první odpovědi.  </li>
  <li><strong>Lhůta pro vyřešení vyprší za</strong> - vyberte, zda chcete zasílat upozornění, když se blíží vyřešení požadavku.<br />
  Zadejte čas do uplynutí lhůty pro vyřešení ve formátu hodiny:minuty. Oznámení bude odesláno, pokud doba do uplynutí lhůty pro vyřešení klesne pod zadanou hodnotu. Pokud zadáte hodnotu 0, bude upozornění odesláno pouze v případě, že uplyne lhůta pro vyřešení.  </li>
  <li><strong>Interní cílová lhůta vyprší za</strong> - vyberte, chcete-li odesílat upozornění, když se blíží <a href="../../../../../../alvao-service-desk/requests/internal-target">interní cílová</a> lhůta.<br />
  Zadejte čas do interní cílové lhůty ve formátu hodiny:minuty. Upozornění se odešle, když doba do termínu interního cílového požadavku klesne pod zadanou hodnotu. Pokud zadáte hodnotu 0, výstraha se odešle pouze tehdy, když vyprší interní cílová lhůta.  </li>
  </ul>
  </li>
  <li><strong>Odeslat upozornění e-mailem</strong> - tuto možnost povolte, pokud chcete upozornění odeslat e-mailem. Pokud tato možnost není povolena, upozornění se zobrazí pouze v tabulce požadavků a na stránce s požadavky. <ul>
  <li><strong>Individuálně a okamžitě</strong> - výstrahy budou odeslány, jakmile bude splněna podmínka odeslání pravidla.   Pro každý požadavek bude odesláno samostatné upozornění z e-mailové adresy služby. <ul>
  <li><strong>Opakovat upozornění každý</strong> - tuto možnost povolte, pokud chcete upozornění opakovat, když se vyskytne trvalý problém, a zadejte dobu opakování ve formátu hodiny:minuty. Období se počítá v provozních hodinách.  </li>
  </ul>
  </li>
  <li><strong>Odesílat hromadně v</strong> - výstrahy budou odesílány v souhrnné zprávě jednou denně.<br />
  Zadejte čas, ve kterém bude odeslána souhrnná zpráva pro všechny požadavky, které mají nastaven stejný čas odeslání a splňují alespoň jedno z pravidel pro odesílání výstrah.  Souhrnná zpráva se odesílá pouze ve dnech, kdy je služba otevřena podle provozní doby uvedené v SLA.    <ul>
  <li><strong>Nastavit odesílatele</strong> - nastavte e-mailovou adresu, ze které budou zasílána souhrnná upozornění.   Toto nastavení je společné pro všechna pravidla ve všech SLA.  </li>
  </ul>

  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Čas odeslání je uložen v UTC a nerespektuje přechody mezi letním a zimním časem. Pokud například zadáte čas v létě, bude v zimě posunut o hodinu, a tak se zobrazí v nastavení.  </div>

  </li>
  <li><strong>Příjemci upozornění</strong> - z nabídky vyberte příjemce upozornění, kterému bude zasláno e-mailové upozornění. <ul>
  <li><strong>Vyhledat osobu nebo skupinu</strong> - zadejte část jména uživatele nebo názvu skupiny uživatelů a poté vyberte uživatele nebo skupinu z nabídky.   Toto pole se zobrazí pouze v případě, že jste vybrali příjemce upozornění <em>Other Recipients (Jiní příjemci)</em> </li>
  </ul>
  </li>
  </ul>
  </li>
</ul>

</asp:Content>
