<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová instalace - produkty</h1>

<p>V levé tabulce<strong>(nabídka produktů)</strong> jsou zobrazeny všechny dostupné produkty v inventáři. V pravé tabulce<strong>(Vybrané počítače</strong>) přesuňte ty produkty, jejichž záznam o instalaci chcete zapsat do <a href="../record-installation">vybraných počítačů v předchozím kroku</a>.</p>
<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	Tabulky lze <a href="../../../../../alvao-asset-management/working-with-tables">přizpůsobit</a></div>

<p>Volby: 1. Vložte do počítače tabulku, která je určena k použití v počítači:</p>
	<ul>
 <li><strong>&gt;</strong> - přesunout produkty (vybrané v levé tabulce) do pravé tabulky.</li>
 <li><strong>&lt;&lt;</strong> - odstranění vybraných výrobků z pravé tabulky (přesunutí zpět do levé tabulky).</li>
	</ul>

</asp:Content>
