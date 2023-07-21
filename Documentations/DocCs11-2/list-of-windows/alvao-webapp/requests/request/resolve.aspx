<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Vyřešit</h1>
  <p>Tento formulář slouží k <a href="../../../../alvao-service-desk/requests/resolve-request">vyřešení</a> vybraného požadavku. Tím se požadavek dostane do stavu <em>Vyřešeno</em> nebo <em>Uzavřeno</em>, v závislosti na nastavení systému.</p>
  <p>Možnosti:</p>

  <ul>
  <li>
 <strong>Message for requester (Zpráva pro žadatele)</strong> - napište žadateli zprávu, která mu bude zaslána v e-mailovém oznámení.<br />
  <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Pro často se opakující text zprávy vytvořte články ve <a href="../../../../alvao-service-desk/knowledge-base">znalostní databázi</a>. Poté pomocí tlačítka <em>Znalostní báze</em> vložte obsah článku do zprávy.  </div>
  </li>
  <li><strong>Přílohy</strong> - seznam příloh zprávy pro žadatele<ul>
  <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu.</li>
  </ul>
  </li>

  <li>
 <strong>Vyřešit zpětně do</strong> - pokud jste požadavek vyřešili dříve, např. osobně na pracovišti žadatele, a do aplikace ji zadáváte dodatečně, zadejte datum a čas skutečného vyřešení požadavku. Čas, do kterého můžete zapsat vyřešení zpětně, může být omezen <a href="../../administration/service-desk/process/detail/status-request/behavior">systémovým nastavením</a>.</li>
	<li><strong>Výkaz nákladů</strong> - je-li to relevantní, uveďte <a href="../../../../alvao-service-desk/requests/work-time">pracovní dobu</a> strávenou řešením požadavku.</li>

  <li><strong>Nezasílat oznámení žadateli</strong> - zapněte, pokud nechcete žadatele informovat e-mailem o vyřešení požadavku, např. pokud jste jej informovali osobně nebo byl požadavek omylem znovu otevřen.</li>
  </ul>

</asp:Content>
