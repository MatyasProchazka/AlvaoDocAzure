<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Znovu otevřít</h1>
<p>Pomocí tohoto formuláře můžete <a href="../../../../alvao-service-desk/requests/reopen-for-further-resolution">znovu otevřít</a> vybrané vyřešené nebo uzavřené požadavky. Obsah formuláře se liší v závislosti na tom, zda jste zadavatelem požadavku nebo členem týmu pro řešení služeb.</p>
<p>Možnosti:</p>
	<ul>
 
 <li><strong>Důvod</strong> - napište zprávu pro řešitele požadavku, ve které vysvětlíte, proč požadavek znovu otevíráte. Toto pole se zobrazuje pouze žadatelům požadavku.</li>
  <li><strong>Zpráva pro žadatele</strong> - napište zprávu pro žadatele, která bude zaslána v e-mailovém oznámení. Toto pole se zobrazí pouze členům projektového týmu.</li>
 <li><strong>Přílohy</strong> - uveďte seznam příloh zprávy pro řešitele (pole<em>Důvod)</em> nebo žadatele<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu.</li>
  </ul>
  </li>
	<li><strong>Cost Report (Výkaz nákladů)</strong> - v případě potřeby uveďte <a href="../../../../alvao-service-desk/requests/work-time">pracovní dobu</a> strávenou na požadavku.</li>

 <li><strong>Neposílat oznámení žadateli</strong> - zapněte, pokud nechcete žadatele informovat, když je požadavek znovu otevřena. Toto pole se zobrazí pouze členům řešitelského týmu.</li>
	</ul>

</asp:Content>
