<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Skupiny</h1>
<p>Tato stránka zobrazuje skupiny uživatelů v systému Alvao a vybrané parametry jejich nastavení.</p>

<p>Možnosti:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nová skupina</strong> - vytvoření <a href="groups/create-group">nové skupiny</a>.</li>
  <li><strong>Upravit -</strong> úprava vlastností a oprávnění uživatelů. Nabídka obsahuje stejné příkazy jako bloky v <a href="groups/detail">náhledu skupiny</a>. </li>
  <li><strong>Odstranit</strong> - odstranění vybrané skupiny.</li>
  </ul>
  </li>
  <li><strong>Tabulka skupin</strong> - obsahuje všechny skupiny Alvao a jejich vybrané atributy. <a href="../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
  <li><strong>Vybraná skupina</strong> - po výběru skupiny v tabulce se vpravo zobrazí <a href="groups/detail">náhled</a> s informacemi o vybrané skupině, jejích oprávněních a dalších nastaveních. V jednotlivých blocích náhledu se zobrazuje příkaz <em>Upravit</em>, který umožňuje upravit nastavení skupiny.</li>
  </ul>

</asp:Content>
