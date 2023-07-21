<%@ Page masterpagefile="~/doc.master" Language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Datové dotazy</h1>
<p>Na této stránce se zobrazují výsledky datových dotazů v systému Alvao. Tato stránka je dostupná pouze v případě, že pro vás správce <a href="administration/data-queries">definoval</a> nějaký datový dotaz.</p> 

<p>Možnosti: </p>
	<ul>
  <li><strong>Příkazový panel</strong><ul>
      <li>rozbalovací nabídka se seznamem dostupných datových dotazů.</li>
      </ul>
  </li>
  <li><strong>Tabulka</strong> - obsahuje výsledky vybraného dotazu. Tabulku můžete <a href="../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
        <li><strong>Vybraný záznam</strong> - po výběru záznamu v tabulce se vpravo se zobrazí panel s příslušným dotazem.</li>
	</ul>

</asp:Content>