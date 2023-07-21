<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pravidelná upozornění</h1>
<p>Tato stránka slouží ke správě <a href="../../../alvao-asset-management/implementation/periodic-alerts">pravidelných upozornění,</a>která jsou automaticky zasílána e-mailem.</p>
<p>Možnosti:</p>
<ul>
	<li><strong>Příkazový panel</strong><ul>
  <li><strong>Nová periodická výstraha</strong> - vytvoření <a href="periodic-alerts/create-periodic-alert">nové</a> výstrahy.</li>
  <li><strong>Upravit</strong> - úprava vybraného upozornění.</li>
  <li><strong>Odstranit</strong> - odstranění vybraných výstrah.</li>
  <li><strong>Povolit</strong> - povolení vybraného výstražného upozornění.</li>
  <li><strong>Disable (Zakázat)</strong> - zakázání vybraného výstražného upozornění.</li>
  </ul>
	</li>
	<li><strong>Tabulka periodických výstrah</strong> - obsahuje všechny výstrahy a jejich vybrané atributy. <a href="../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
	<li><strong>Vybrané periodické výstrahy</strong> - po výběru výstrahy v tabulce se v pravé části tabulky zobrazí <a href="periodic-alerts/detail">zobrazení</a> s informacemi o vybrané výstraze.</li>
</ul>

</asp:Content>
