<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Procesy</h1>

<p>Tato stránka slouží ke správě <a href="../../../../alvao-service-desk/implementation/services/processes">procesů</a>.</p>

<p>Možnosti:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nový proces</strong> - vytvoření <a href="process/create-process">nového procesu</a>. </li>
  <li><strong>Upravit</strong> - úprava vybraného procesu. Nabídka obsahuje stejné příkazy jako bloky v <a href="process/detail">náhledu</a> procesu.</li>
  <li><strong>Odstranit</strong> - odstranění vybraného procesu.</li>
  </ul>
  </li>
  <li><strong>Tabulka procesů</strong> - zobrazí procesy a jejich vybrané atributy. Tabulku můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
  <li><strong>Vybraný proces</strong> - po výběru procesu v tabulce se vpravo zobrazí <a href="process/detail">zobrazení</a> s informacemi o vybraném procesu.  V každém bloku náhledu se zobrazí příkaz <em>Upravit</em>.</li>
  </ul>

</asp:Content>
