<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Související požadavky</h1>

  <p>Na této stránce najdete všechny požadavky, které souvisejí s vybraným objektem (tj. požadavky, které mají tento objekt uveden na stránce <a href="../../requests/request">Objekty</a> ).</p>

  <p>
  Možnosti: V nabídce jsou uvedeny požadavky, které mají být vyřízeny:</p>
  <ul>
  <li>
 <b>Příkazový panel</b><ul>
  <li><b>Nový požadavek</b> - vytvoření nového požadavku s odkazem na zobrazený objekt.  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Administrátor Alvao může obsah rozbalovací nabídky služby upravit v nabídce <i>Správa - Service Desk - Služby - <a href="../../administration/service-desk/service/objects">Objekty</a></i></div>
  </li>
  <li><b>Související šablony</b> - zobrazí <a href="../../ticket-templates">šablony požadavků</a>, které mají v poli <i>Objekty</i> nastaven zobrazený objekt.</li>
  <li><a href="add-request">Přidat požadavek</a> - váže zobrazený objekt k jinému požadavku.</li>
  <li><b>Odebrat požadavek</b> - odstraní vazbu objektu na vybraný požadavek.</li>
  <li><b>Vybrané propojené požadavky</b> - nabídka příkazů pro operace s vybranými požadavky v tabulce.</li>
  </ul>
  </li>
  </ul>

</asp:Content>
