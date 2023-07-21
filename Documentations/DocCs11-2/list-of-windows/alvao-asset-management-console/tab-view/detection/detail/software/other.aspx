<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Další</h1>
<p>Na této záložce můžete spravovat pravidlo rozpoznávání produktů pomocí <a href="../../../../../../alvao-asset-management/software-management/custom-swlib">Vlastní knihovny softwarových produktů</a>.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pravidla pro produkty ze standardní softwarové knihovny nelze upravovat.</div>

<p>Možnosti: V této položce můžete zadat, zda chcete použít některou ze softwarových knihoven:</p>

	<ul>
 <li><strong>Platné pravidlo</strong> - povolte, pokud chcete pravidlo označit jako platné. Platné pravidlo se používá při rozpoznávání softwarových produktů.</li>
 <li><strong>UID</strong> - zobrazí identifikační číslo produktu. <ul><li><strong>...</strong> - přiřadit pravidlu nové UID.</li></ul>
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Číslo UID neměňte, pokud vás k tomu program nevyzve.</div></li>
 <li><strong>Pořadí pravidel</strong> - určete pořadí pravidel pro rozpoznávání softwarových produktů. Hodnota 0 znamená, že pravidlo bude vyhodnoceno jako první. <ul><li><strong>...</strong> - přiřaďte pravidlu pořadí. Automaticky přidá pořadí o jedno vyšší, než je nejvyšší pořadí jiného pravidla. Tím se sníží priorita upravovaného pravidla pro vyhodnocení.</li></ul>
 </li>
 <li><strong>Datum</strong> - zobrazí datum poslední úpravy pravidla.</li>
 <li><strong>Certifikovaný</strong> - zobrazí autora pravidla.</li>
 <li><strong>Produkt</strong> - z nabídky vyberte produkt, který je tímto pravidlem rozpoznán.</li>
 <ul><li>
<a href="../../../software/products/product/general">..</a>. - výběr produktu v samostatném okně.</li></ul>
	</ul>


</asp:Content>
