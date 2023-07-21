<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Náhled</h1>

  <p>Na této stránce si můžete prohlédnout obsah vytvořené tiskové sestavy.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Příkazový panel</b><ul>
  <li><b>Tisk</b> - stáhněte sestavu ve formátu PDF, kterou pak můžete vytisknout na své tiskárně.</li>
  <li><b>Odeslat</b> - odešle předávací protokol příjemci majetku k potvrzení na stránce <a href="../../../../../list-of-windows/alvao-webapp/search/persons/person">Moje dokumenty</a>. Tento příkaz je součástí modulu <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> a zobrazí se pouze v případě, že jako <a href="../print">způsob podepisování předávacích protokolů</a> byl zvolen <i>webový způsob</i>.</li>
  <li><b>Uložit</b> - uloží podepsaný předávací protokol. Příkaz je součástí modulu <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Elektronické předávací formuláře</a>. a zobrazí se pouze v případě, že jako <a href="../print">metoda podepisování předávacího protokolu</a> byla vybrána možnost <i>Elektronické pero</i>.</li>
  </ul>
  </li>
  </ul>

  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Pokud zavřete okno náhledu interního předávacího protokolu, aniž byste vytvořili dokument PDF (tj. aniž byste použili tlačítko <b>Tisk</b> nebo <b>Odeslat</b> či <b>Uložit</b> ), bude vytvořený dokument po potvrzení hlášení, že chcete opustit stránku, označen jako neplatný.  </div>

</asp:Content>
