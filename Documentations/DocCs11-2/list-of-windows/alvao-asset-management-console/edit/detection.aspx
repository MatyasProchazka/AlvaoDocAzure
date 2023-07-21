<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová detekce</h1>
<p>V tomto okně můžete nastavit detekci počítače (název počítače najdete v závorce v názvu okna).</p>
<p>Záložky:</p>
	<ul>
 <li><a href="detection/general">Obecné</a></li>
 <li><a href="detection/scope">Oblast působnosti</a></li>
 <li><a href="detection/detection-way">Způsob detekce</a></li>
	</ul>
<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámky:</div>
	<ul>
	Pokud je na záložce <strong>Obecné</strong> nastavena možnost <strong>Použít uložená nastavení</strong>, záložky <strong>Rozsah</strong> a <strong>Způsob detekce</strong> nejsou k dispozici. Pokud vyberete možnost <strong>Použít různé způsoby detekce</strong> (záložka <strong>Rozsah</strong> ), budou místo záložek <strong>Metoda detekce</strong> k dispozici záložky <strong>Hardware</strong> a <strong>Software</strong>, kde můžete nastavit různé způsoby detekce</ul></div>
</asp:Content>
