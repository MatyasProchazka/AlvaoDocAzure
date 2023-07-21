<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Zobrazit</h1>
<p>Nabídka umožňuje zobrazit nebo skrýt prvky <a href="../license-and-install-overview">Přehledu licencí a instalací</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Organizace a nákladová střediska</strong> - zobrazení údajů pro konkrétní organizaci nebo nákladové středisko. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Nákladové středisko je účetní jednotka, kterou některé společnosti používají k rozpočtování nákladů v rámci organizace.</div></li>
 <li><strong>Produkty osvobozené od auditu</strong> - zobrazí také produkty, které jsou nastaveny jako neauditované. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 V místní nabídce každého produktu je <a href="audit">možnost auditovat</a>, pokud vyberete možnost <strong>Ne</strong>, produkt nebude auditován.</div></li>
 <li><strong>Pouze komerční a shareware</strong> - zobrazí pouze produkty s typem licence komerční nebo shareware (vynechá freeware).</li>
 <li><strong>Obnovit</strong> - obnoví obsah okna.</li>
 <li>
<a href="../products/product">Detail produktu</a> - zobrazení a případná úprava vybraného produktu.</li>
	</ul>
</asp:Content>
