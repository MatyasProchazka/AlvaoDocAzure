<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Rozšířené nastavení oznámení</h1>
  <p>
  Nastavení e-mailových <a href="../../../../alvao-service-desk/implementation/services/notifications">oznámení</a> pro každou službu. </p>
  <p>
  Možnosti:</p>
  <ul>
  <li>V <strong>tabulce</strong> vyberte službu, pro kterou chcete změnit nastavení oznámení. Pomocí možnosti <em>&lt;Všechny služby&gt;</em>můžete změnit výchozí nastavení pro všechny služby hromadně. <ul>
  <li>Upravit nastavení - možnosti pro jednotlivé <a href="../../../../alvao-service-desk/implementation/services/notifications">typy oznámení</a><ul>
  <li><strong>Výchozí</strong> - tuto možnost vyberte, pokud chcete pro tuto službu použít nastavení v části <em>&lt;Všechny služby&gt;</em>. Pokud tuto možnost vyberete v části <i>&lt;Všechny služby&gt;</i>, použijí se <a href="../../../../alvao-service-desk/implementation/services/notifications">nastavení specifická pro danou službu</a> definovaná správcem systému Alvao.  </li>
  <li><strong>Odeslat</strong> - vyberte, pokud chcete toto oznámení přijímat. </li>
  <li><strong>Neodesílat -</strong> vyberte, pokud nechcete oznámení přijímat.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>

  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Oznámení hlavním řešitelům jsou zasílána v jazyce a časovém pásmu služby. Individuální nastavení jednotlivých hlavních řešitelů nejsou brána v úvahu.  </div>

</asp:Content>
