<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Kontrola sítě</h1>
<p>Tato stránka slouží k nastavení automatického vyhledávání nových počítačů v síti. Vyhledávání musíte nejprve povolit v příkazu <em>Nastavení</em>.</p>
<p>Volby:</p>
	<ul>
 <li><strong>Příkazový panel</strong><ul>
 <li><a href="ip-range">New Range (Nový rozsah</a> ) - přidání nového rozsahu nebo IP adresy.</li>
  <li><a href="settings">Nastavení</a> - nastavení vyhledávání v síti.</li>
 <li><a href="ip-range">Upravit</a> - úprava vybraného rozsahu.</li>
 <li><strong>Odstranit</strong> - odstranění vybraného rozsahu.</li>
  </ul>
 </li>
	  <li><strong>Tabulka rozsahů IP adres</strong> - rozsahy IP adres, ve kterých se vyhledávají nové počítače. Pro lepší celkový přehled jsou v tabulce uvedeny rozsahy pro všechny servery (AM Collector) běžící v této databázi, nikoli pouze pro upravovaný server. Rozsahy týkající se upravovaného serveru jsou označeny ikonou. <a href="../../../../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
	</ul>
	
</asp:Content>
