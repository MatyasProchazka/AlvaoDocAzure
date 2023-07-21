<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Tisková zpráva</h1>
<p>V tomto okně můžete prohlížet tiskové sestavy a dále s nimi pracovat.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Soubor</strong><ul>
 <li><strong>Tisk PDF</strong> - interně otevře přeposílací sestavu ve výchozím prohlížeči souborů PDF.</li>
 <li><strong>Odeslat k podepsání</strong> - odešle interní předávací protokol k podepsání přes web. Tento příkaz je k dispozici pouze v modulu <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a>.</li>
 <li><strong>Vytisknout .</strong>.. - vytiskne protokol.</li>
 <li><strong>Náhled</strong> - náhled protokolu pro tisk.</li>
 <li><strong>Uložit jako</strong> - uložení souboru (*.html) na disk.</li>
 <li><strong>Odeslat do MS Word</strong> - otevře dokument v MS Word.</li>
 <li><strong>Režim úprav</strong> - zapnutí režimu úprav - zpřístupnění úprav textu zprávy.</li>
 <li><strong>Zavřít</strong> - zavření tiskové sestavy.</li>
  </ul>
 </li>
 <li><strong>Úpravy</strong><ul>
 <li><strong>Vrátit zpět</strong> - vrátí zpět poslední provedenou změnu.</li>
 <li><strong>Znovu</strong> - opakování poslední provedené úpravy.</li>
 <li><strong>Vyjmout</strong> - zkopíruje vybraný text do schránky a odstraní jej z dokumentu.</li>
 <li><strong>Kopírovat</strong> - zkopíruje vybraný text do schránky.</li>
 <li><strong>Vložit</strong> - vloží text do schránky v místě, kde se nachází kurzor.</li>
 <li><strong>Odstranit</strong> - odstraní vybraný text z dokumentu.</li>
 <li><strong>Vybrat vše</strong> - možnost vybrat celou zprávu.</li>
 <li>
<a href="../../../tab-view/properties/find">Najít</a> - vyhledání textu dokumentu.</li>
  </ul>
 </li>
 <li><strong>Formátování</strong><ul>
 <li><a href="font">Písmo</a></li>
 <li><strong>Odstranit formátování</strong> - odstranění formátování, které jste provedli ve vybraném textu.</li>
  </ul>
 </li>
	</ul>

</asp:Content>
