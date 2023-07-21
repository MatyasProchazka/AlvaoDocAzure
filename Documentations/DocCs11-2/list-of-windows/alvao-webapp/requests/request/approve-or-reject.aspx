<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Schválit nebo zamítnout</h1>
<p>Pomocí tohoto formuláře můžete schválit nebo zamítnout čekající <a href="../../../../alvao-service-desk/requests/request-approval">požadavek o schválení</a>.</p>

<p>Možnosti:</p>
  <ul>
  <li>
 <strong>Zpráva pro schvalovatele</strong> - zpráva popisující předmět schválení (tj. co přesně má být schváleno). Tuto zprávu obdržíte také v e-mailovém oznámení o zahájení schvalování.</li>
  <li>
 <strong>Komentář</strong> - v případě potřeby napište svůj komentář ke schválení nebo zamítnutí.</li>
 <li><strong>Přílohy</strong> - seznam příloh ke komentáři<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu.</li>
  </ul>
  </li>
  <li>
 <strong>Schválit</strong> - stisknutím tohoto tlačítka požadavek schválíte.</li>
  <li>
 <strong>Odmítnout</strong> - stiskněte toto tlačítko, pokud chcete požadavek odmítnout.</li>
  </ul>

</asp:Content>
