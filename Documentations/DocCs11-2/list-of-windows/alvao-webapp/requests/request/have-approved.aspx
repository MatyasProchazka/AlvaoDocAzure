<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Zahájení schvalování</h1>
  <p>Pomocí tohoto formuláře můžete zahájit <a href="../../../../alvao-service-desk/requests/request-approval">schvalování</a> vybraných žádostí.</p>
  <p>Možnosti:</p>

  <ul>
  <li><strong>Změnit stav požadavku na</strong> - z nabídky vyberte stav požadavku, na který se má požadavek změnit před zahájením schvalování. Tato možnost se zobrazí pouze v případě, že z aktuálního stavu žádosti lze přesunout více stavů schválení.</li>
  <li><b>Vybrat schvalovatele</b> - zadejte část jména schvalovatele a z nabídky vyberte hledanou osobu. Tím se vybraná osoba přidá do seznamu schvalovatelů pod pole. Tímto způsobem vyberte všechny schvalovatele, kterým chcete požadavek předat ke schválení. Stejným způsobem můžete vyhledat skupinu uživatelů - do seznamu schvalovatelů se pak přidají všichni členové skupiny.<br />
  Pokud je v nastavení procesu nastaven <a href="../../administration/service-desk/process/detail/status-request/behavior">automatický přechod</a> do dalšího stavu po dokončení schvalování, toto pole není k dispozici.  </li>
  <li><strong>Schválit pomocí schématu</strong> - vyberte ze seznamu <a href="../../administration/service-desk/approval-scheme">schéma</a>, podle kterého chcete požadavek schválit. Tato možnost je k dispozici pouze v případě, že je v nastavení procesu povolen <a href="../../administration/service-desk/process/detail/status-request/behavior">automatický přechod</a> do dalšího stavu po dokončení schvalování.</li>
  <li><strong>Schválit podle</strong> - z nabídky vyberte osobu, která má požadavek schválit. Tato možnost je k dispozici pouze v případě, že je v nastavení procesu povolen <a href="../../administration/service-desk/process/detail/status-request/behavior">automatický přechod</a> do dalšího stavu po dokončení schvalování.</li>
  <li><strong>Vyprší za (hodiny</strong> ) - zadejte počet hodin, po kterých schválení vyprší s výsledkem <em>Vypršelo</em>.</li>
  <li><strong>Zpráva pro schvalovatele</strong> - zadejte případné podrobnější informace pro schvalovatele. Komentář bude spolu s přílohami zaslán schvalovateli (schvalovatelům) v e-mailovém oznámení. V případě vícestupňového schématu schvalování je tento komentář zaslán aktuálním schvalovatelům na začátku každého kroku.</li>
  <li><strong>Přílohy</strong> - seznam příloh komentáře pro schvalovatele <ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu.</li>
  </ul>
  </li>
  <li><strong>Náhled zprávy pro schvalovatele</strong> - v případě potřeby zobrazí náhled oznámení, která schvalovatelé obdrží.</li>
  </ul>

</asp:Content>
