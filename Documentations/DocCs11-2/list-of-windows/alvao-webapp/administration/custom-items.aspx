<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Vlastní položka</h1>
<p>Tato stránka slouží ke správě <a href="../../../alvao-service-desk/implementation/custom-items">vlastních polí</a>.</p>

<p>Možnosti:</p>
	<ul>
  <li><strong>Příkazový panel</strong><ul>
   <li><strong>Nová vlastní položka</strong> - Přidat <a href="custom-items/create-custom-item">nové pole</a>.</li>
   <li><strong>Upravit</strong> - úprava vybraného pole. Nabídka obsahuje stejné příkazy jako bloky v <a href="custom-items/detail">náhledu pole</a>.</li>
   <li><strong>Odstranit</strong> - odstranění vybraných polí.</li>
  </ul>
  </li>
  <li><strong>Tabulka vlastních polí</strong> - tabulka obsahuje pohledy pro každou entitu (Request (požadavek), Service (služba), SLA (dohoda o úrovni služeb), ...), které zobrazují vlastní položky dané entity. <a href="../../../alvao-asset-management/working-with-tables">Tabulku si</a> můžete <a href="../../../alvao-asset-management/working-with-tables">přizpůsobit podle potřeby</a>.</li>
  <li><strong>Vybrané pole</strong> - po výběru pole v tabulce se v pravé části tabulky zobrazí <a href="custom-items/detail">náhled</a> s informacemi o vybraném poli.  V každém bloku náhledu se zobrazí příkaz <em>Upravit</em>, který umožňuje daný blok upravit.  </li>
	</ul>

</asp:Content>
