<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Zjištěno</h1>
<p>Na této kartě se zobrazují údaje o instalaci zjištěné během detekce. Nemusí být zjištěna všechna data a nelze je změnit. (Data však nejsou &quot;zašedlá&quot;, aby bylo možné je kopírovat.)</p>
<p>Volby:</p>
	<ul>
 <li><strong>Product found (Nalezený produkt</strong> ) - zobrazí datum nalezení produktu.</li>
 <li><strong>Název produktu</strong> - zobrazí název produktu uvedený v souboru nebo záznamu v registru, který produkt identifikoval.</li>
 <li><strong>Jazyk</strong> - zobrazí jazyk produktu.</li>
 <li><strong>Verze</strong> - zobrazí verzi produktu.</li>
 <li><strong>ID produktu</strong> - zobrazí identifikační údaje produktu.</li>
 <li><strong>Datum instalace</strong> - zobrazí datum instalace produktu. Datum je načteno ze záznamu v registru.</li>
 <li><strong>Recognized By (Rozpoznáno podle</strong> ) - zobrazí název souboru nebo položku registru, podle které byl produkt identifikován.</li>
 <li><strong>Uninstall Detected</strong> - zobrazí datum, kdy byl produkt odinstalován.</li>
	</ul>
</asp:Content>
