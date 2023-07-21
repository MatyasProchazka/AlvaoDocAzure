<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Poznámka</h1>
<p>Tento formulář lze použít k přidání nové <em>události</em> na kartu <a href="../request">Komunikace</a>, tj. poznámky, zápisu z telefonického hovoru, zápisu z osobní schůzky atd.</p>

<p>Možnosti: V případě, že se jedná o událost, která se stala předmětem jednání, je možné zadat, že se jedná o událost, která se stala předmětem jednání:</p>
  <ul>
  <li>
 <strong>Příkazový panel</strong> <ul> <li><strong>OK</strong> - uložení události na</li> kartu <li> <a href="../request">Komunikace</a></li> <li><strong>Příloha</strong> - připojení přílohy.</li> <li>Tento příkaz má stejnou funkci jako tlačítko <em>Přidat přílohu</em> ve formuláři</li>. <li><b>Poznámka/Telefonní hovor/Osobní schůzka</b> - případně změňte typ události, kterou chcete vytvořit. Pokud vyberete typ události <i>Zpráva</i>, formulář se změní na formulář <a href="message">Zpráva</a> pro odeslání e-mailové</li> </ul>zprávy <ul>. <li><strong>Přechod do stavu</strong> - přesun do jiného stavu podle <a href="../request">postupu řešení</a></li> </ul></li>
  <li><strong>Předmět</strong> - zadejte předmět události.</li>
  <li><strong>Text -</strong> zadejte podrobnější informace o události.</li>
  <li><strong>Přílohy</strong> - seznam příloh<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete připojit jako přílohu. Soubory můžete připojit také přetažením do formuláře.</li>
  </ul>
  </li>
  <li><strong>Datum a čas</strong> - v případě potřeby upravte datum a čas události.</li>
  <li><strong>Od </strong>- v případě potřeby změňte autora události.</li>
  <li><strong>Komu</strong> - v případě potřeby uveďte, s kým jste hovořili telefonicky nebo diskutovali osobně. </li>
  <li><strong>Zobrazit žadateli</strong> - zapněte, pokud chcete, aby žadatel viděl událost na kartě <a href="../request">Komunikace</a> vybraného požadavku.</li>
  <li><strong>Čeká na žadatele</strong> - zapněte, pokud chcete, aby se doba od zapsání události počítala jako doba <a href="../../../../alvao-service-desk/requests/wait-for-response">čekání na žadatele</a>.</li>
  <li><strong>Důležité</strong> - tuto možnost zapněte, pokud se jedná o důležitou událost, například odeslání nebo upřesnění požadavku. Na kartě <a href="../request">Komunikace</a> bude událost zvýrazněna symbolem modré vlaječky.</li>
  <li><strong>Řešení požadavku</strong> - tuto možnost povolte, pokud událost obsahuje popis způsobu řešení požadavku. Na kartě <a href="../request">Komunikace</a> bude událost zvýrazněna symbolem zelené vlaječky.</li>
	<li><strong>Výkaz nákladů</strong> - alternativně <a href="../../../../alvao-service-desk/requests/work-time">zobrazte čas práce</a> strávený řešením požadavku.</li>

  </ul>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>

