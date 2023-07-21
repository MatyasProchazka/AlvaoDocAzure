<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nový podpis</h1>
<p>Tento formulář slouží k vytvoření nového podpisu.</p>
<p>Možnosti:</p>
<ul>
	<li><strong>Název</strong> - zadejte název podpisu, který se vybere z nabídky podpisů při psaní zpráv.</li>
	<li><strong>Podpis</strong> - zadejte podpis. Zadaný text se bude vkládat na konec nových zpráv, které v aplikaci napíšete.</li>
	<li><strong>Výběr typu podpisu</strong><ul>
  <li><strong>osobní</strong> - váš osobní podpis. Ostatní uživatelé nemají k vašemu podpisu přístup.</li>
  <li><strong>skupinový</strong> - podpis je přístupný všem členům řešitelských týmů všech služeb nebo vybraných služeb, viz následující možnost.</li>
 </ul>
	</li>
	<li><strong>Vyberte služby, pro které má být podpis nastaven jako výchozí</strong><ul>
  <li><strong>všechny služby</strong> - podpis bude dostupný ve všech službách.</li>
  <li><strong>vybrané služby</strong> - v tabulce vyberte služby, u kterých má být tento podpis dostupný.</li>
 </ul>
	</li>
</ul>
  

</asp:Content>
