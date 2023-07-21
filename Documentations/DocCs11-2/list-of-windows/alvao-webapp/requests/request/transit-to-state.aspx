<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přejít do stavu</h1>
<p>Tento formulář slouží k přesunu vybraného požadavku do určitého stavu v <a href="../request">procesu řešení</a>. Konkrétní obsah formuláře závisí na nastavení systému a některá pole se v určitých situacích nemusí zobrazit.</p>

<p>Možnosti:<ul> <li><b>Komentář pro žadatele</b> - napište zprávu pro žadatele, která jim bude zaslána v e-mailovém oznámení o změně stavu požadavku.</li></ul><ul> <li><div class="note"> <div class="icon"></div><div class="title">Poznámka:</div>Toto pole se zobrazí pouze v případě, že má být žadateli během přechodu do stavu zasláno oznámení o změně stavu a <a href="../../administration/service-desk/process/detail/status-request/requester-notification-template">šablona oznámení o změně stavu žádosti</a> má proměnnou [$KomentářProŽadatele$] představující komentář pro žadatele. </div> </li> 
  
 <li><strong>Přílohy</strong> - seznam příloh pro komentář pro žadatele<ul> <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete připojit jako přílohu.</li> </ul> </li> <li><b>Náhled oznámení žadateli o změně stavu</b> - náhled výsledného oznámení, které žadatel obdrží.<br /><br /></li> <li><b>Komentář pro schvalovatele</b> - napište zprávu pro schvalovatele, která bude v e-mailovém oznámení zaslána mimo jiné i schvalovateli. V případě vícestupňového schématu schvalování se tento komentář odešle aktuálním schvalovatelům na začátku každého kroku. Toto pole se ve formuláři zobrazí pouze v případě, že přechod do nového stavu automaticky vyvolá schválení požadavku. <div class="note">
	 <div class="icon"></div>
	 <div class="title">Poznámka</div>: Tento blok formuláře se zobrazí pouze v případě, že <a href="../../administration/service-desk/process/detail/status-request/approval-message-template">šablona zprávy o schválení</a> obsahuje proměnnou [$CommentForApprover$] představující komentář pro schvalovatele. </div> </li> 
 <li><strong>přílohy</strong> - seznam příloh pro komentář schvalovatele<ul> <li><strong>Přidat přílohu</strong> - výběr souboru, který se má připojit jako příloha.</li> </ul> </li> <li><b>Náhled zprávy pro schvalovatele</b> - náhled výsledného oznámení pro schvalovatele.</li><br /> <li><em>Povinné položky</em> - následující položky požadavku</li>jsou <li> <b>povinné</b> pro stav, do kterého požadavek přechází. Povinné položky, které již mají hodnotu, jsou rovněž zobrazeny ve formuláři pro kontrolu a případnou změnu hodnot.</li><li><strong>Výkaz nákladů</strong> - v případě potřeby <a href="../../../../alvao-service-desk/requests/work-time">zobrazuje čas práce</a> strávený řešením požadavku</li> </ul></p>
  <div class="note">
 <div class="icon"></div>
	<div class="title">Poznámka:</div>
  Pokud je požadavek v současné době ve schvalovacím procesu, nelze stav požadavku změnit </div>
  

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>

