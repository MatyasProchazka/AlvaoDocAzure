<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Provozní doba</h1>
	<p>Tato stránka slouží ke správě <a href="../../../../alvao-service-desk/implementation/services/operating-hours">provozní doby</a> služeb.</p>

	<p>Možnosti:</p>
	<ul><li><strong>Příkazový panel</strong><ul>
  <li><strong>Nová provozní doba</strong> - vytvoření <a href="operating-hours/new-operating-hours">nové provozní doby</a></li>
  <li><strong>Upravit</strong> - úprava vybraných provozních hodin. Nabídka obsahuje stejné příkazy jako bloky na <a href="operating-hours/detail">panelu</a> vybraných provozních hodin vpravo  </li>
  <li><strong>Odstranit</strong> - odstranění vybraných provozních hodin.</li>
 </ul>
 </li>
  <li><strong>Tabulka provozních hodin</strong> - obsahuje všechny provozní doby a jejich vybrané atributy. Tabulku můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
  <li><strong>Vybrané provozní doby</strong> - po výběru provozních hodin v tabulce se vpravo zobrazí <a href="operating-hours/detail">náhled</a> s informacemi o vybraných provozních hodinách. V každém bloku panelu se zobrazí příkaz <em>Upravit</em>.</li>
 </ul>

</asp:Content>
