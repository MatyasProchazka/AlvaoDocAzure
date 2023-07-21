<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Dokument</h1>
<p>Na této záložce můžete upravovat údaje v <a href="../../../../../alvao-asset-management/documents">dokumentu</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Identifikační číslo 2</strong> - v případě potřeby zadejte další identifikační číslo dokumentu.<strong>(Identifikační číslo</strong> se zadává na kartě <a href="label">Štítek</a>.)</li>
 <li><strong>Zrušeno</strong> - zapněte, pokud dokument již není platný.</li>
 <li><strong>Složka dokladu</strong> - z nabídky vyberte <a href="../../../../../list-of-windows/alvao-webapp/administration/asset-management/document-folders">složky dokladu</a>.</li>
 <li><strong>Typ dokumentu</strong> - vyberte z nabídky <a href="../../../../../alvao-asset-management/documents">typ dokumentu</a>.</li>
 <li><strong>Datum vystavení</strong> - zadejte datum vystavení dokladu.</li>
 <li><strong>Příloha</strong> - připojte případné přílohy (např. sken faktury).</li>
 <li><strong>Dokument - Faktura</strong> - pokud je zvolen typ dokumentu <a href="../../../../../alvao-asset-management/documents/invoices">Faktura</a><ul>
 <li><strong>Dodavatel</strong> - vyberte z nabídky dodavatelů.</li>
 <ul><li>
 <a href="../organization">...</a> - nebo vyberte dodavatele ze seznamu organizací.</li></ul>
  </ul>
 </li>
 <li><strong>Doklad - Předávací protokol</strong>, pokud je zvolen typ dokladu Předávací <a href="../../../../../alvao-asset-management/documents/transfer-protocols">protokol</a><ul>
 <li><strong>Předávající osoba</strong> - z nabídky vyberte předávajícího uživatele.</li>
 <li><strong>Osoba přebírající</strong> - vyberte z nabídky předávajícího uživatele.</li>
  </ul>
 </li>
 <li><strong>Způsob podepisování (Předávací protokol</strong> ) - způsob podepisování předávacího protokolu (k dispozici pouze po aktivaci modulu <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a>).</li>
 <li><strong>Poznámka</strong> - zadejte poznámku k dokumentu.</li>
	</ul>
</asp:Content>
