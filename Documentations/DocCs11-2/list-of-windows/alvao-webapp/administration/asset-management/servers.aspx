<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Servery (zastaralé)</h1>
<p>Na této stránce můžete spravovat servery, které mají <a href="../../../../alvao-asset-management/implementation/detection/collector">ALVAO Asset Management Collector</a>. </p>

<p>Možnosti:</p>
<ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Nový server</strong> - přidání <a href="servers/create-server">nového serveru</a> do seznamu. </li>
  <li><strong>Upravit</strong> - úprava vlastností a nastavení serveru. Nabídka obsahuje stejné příkazy jako v blocích <a href="servers/detail">náhledu serveru</a>. </li>
  <li><strong>Odstranit</strong> - odstranění vybraného serveru.</li>
  <li><strong>Povolit</strong> - obnoví činnost AM Collectoru na vybraném serveru, pokud byl server zakázán, viz příkaz <em>Zakázat</em>.</li>
  <li><strong>Zakázat</strong> - zastaví činnost nástroje AM Collector na vybraném serveru.</li>
  </ul>
  </li>
 
	<li><strong>Tabulka serverů</strong> - obsahuje všechny servery a jejich vybrané atributy. <a href="../../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>. </li>
	<li><strong>Vybraný server</strong> - po výběru serveru v tabulce se vpravo zobrazí <a href="servers/detail">zobrazení</a> s informacemi o vybraném serveru. V každém bloku náhledu se zobrazí příkaz <em>Upravit</em>, který umožňuje upravit nastavení serveru. </li>
</ul>

<div class="note">
 <div class="icon"></div>
	<div class="title">Poznámka:</div>
  Změna nastavení spuštěného serveru se projeví do 5 minut. Pokud chcete, aby se změna nastavení projevila dříve, restartujte službu Collector na serveru.</div>

</asp:Content>
