<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Organizace</h1>
<p>Tato stránka slouží ke správě <a href="../../../alvao-service-desk/implementation/users/companies">organizací</a>.</p>
  
<p>Možnosti:</p>
<ul>
	<li><strong>Příkazový panel</strong><ul>
  <li><strong>Nová organizace</strong> - vytvoření <a href="organization/create-organization">nové organizace</a>.</li>
  <li><strong>Upravit -</strong> upravit vybranou organizaci. </li>
  <li><strong>Odstranit</strong> - odstranění vybrané organizace.  <div class="caution">
 <div class="icon"></div>
  <div class="title">Upozornění:</div>
  Pokud organizace obsahuje uživatele, budou tito uživatelé také odstraněni. Pokud chcete uživatele zachovat, odstraňte je z organizace před jejím odstraněním.</div>
  </li>
 </ul>
	</li>
	<li><strong>Tabulka organizací</strong> - obsahuje všechny organizace a jejich vybrané atributy. Tabulku můžete <a href="../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
  
	<li><strong>Vybraná organizace</strong> - po výběru organizace v tabulce se v pravé části tabulky zobrazí <a href="organization/detail">náhled s</a> informacemi o vybrané organizaci.</li>
</ul>

</asp:Content>
