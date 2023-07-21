<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Zpráva</h1>
  <p>Tento formulář slouží k <a href="../../../../alvao-service-desk/requests/send-message">odeslání e-mailové zprávy</a> týkající se vybraného požadavku. Zpráva bude odeslána z e-mailové adresy služby požadavku a zobrazí se na záložce <a href="../request">Komunikace</a>.</p>

  <p>Možnosti:</p>
  <ul>
  <li>
 <strong>Příkazový panel</strong><ul>
  <li><strong>Odeslat</strong> - odeslání zprávy</li>
  <li><strong>Příloha</strong> - připojte ke zprávě přílohu. Tento příkaz má stejnou funkci jako tlačítko <em>Přidat přílohu</em> ve formuláři.</li>
  <li><b>Zpráva</b> - pokud se v průběhu psaní zprávy rozhodnete, že napsaný text nechcete odeslat jako zprávu, ale chcete jej pouze uložit do protokolu požadavků, např. jako poznámku nebo zápis z osobní schůzky, vyberte z této nabídky požadovaný typ události. Tím se změní formulář na <a href="note">poznámku</a>.</li>
  <li><strong>Přechod do stavu</strong> - přesun do jiného stavu požadavku podle <a href="../request">postupu řešení</a>.</li>
  </ul>
  </li>
  <li><strong>Komu</strong> - zadejte alespoň část jména příjemce zprávy a vyberte tohoto příjemce z rozbalovací nabídky. E-mailovou adresu příjemce můžete také zadat přímo do řádku.</li>
  <li><strong>Kopírovat</strong> - v případě sekundárního příjemce zadejte sekundárního příjemce zprávy.</li>
  <li><strong>Předmět -</strong> zaškrtněte a upravte předmět zprávy.</li>
  <li><strong>Text-</strong> napište zprávu. Pomocí tlačítka <em>Znalostní báze</em> v příkazovém řádku nad vstupním polem můžete do textu zprávy vložit text některé znalosti ze znalostní báze.</li>
  <li><strong>Přílohy</strong> - seznam příloh zprávy.<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu. Soubory můžete připojit také přetažením do formuláře.</li>
  </ul>
  </li>
  <li><strong>Zobrazit žadateli</strong> - zapněte, pokud chcete, aby žadatel viděl zprávu na kartě <em>Komunikace</em> vybraného požadavku.</li>
  <li><strong>Čekat na odpověď</strong> - zapněte, pokud chcete dobu mezi odesláním zprávy a obdržením odpovědi od žadatele započítat jako <a href="../../../../alvao-service-desk/requests/wait-for-response">čekání na žadatele</a>. Čas se do <em>čekání na žadatele</em> započítává pouze v případě, že je zpráva adresována žadateli.</li>
  <li><strong>Důležité</strong> - tuto možnost zapněte, pokud došlo k důležité události, například k odeslání nebo vyjasnění požadavku. Na kartě <a href="../request">Komunikace</a> bude událost zvýrazněna symbolem modré vlaječky.</li>
  <li><strong>Řešení požadavku</strong> - tuto možnost povolte, pokud událost obsahuje popis způsobu řešení požadavku. Na kartě <a href="../request">Komunikace</a> bude událost zvýrazněna symbolem zelené vlaječky.</li>
	<li><strong>Zpráva o nákladech</strong> - v případě potřeby <a href="../../../../alvao-service-desk/requests/work-time">zobrazí čas práce</a> strávený řešením požadavku.</li>

  </ul>


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

