<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Existující objekty</h1>
<p>V tabulce je uveden seznam existujících objektů. V seznamu můžete vybrat objekt, který chcete vytvořit. Pokud vyberete počítačovou sestavu, bude vytvořena včetně přímých potomků. V seznamu se nezobrazují počítačové komponenty.</p>
	<ul>
 <li>Výběr potvrďte tlačítkem <b>OK</b>. Případně výběrem možnosti <b>Zrušit</b> výběr zrušte.</li>
	</ul>
<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	Objekty v tabulce jsou seřazeny podle data vytvoření, ale stejně jako zbytek tabulky lze toto řazení <a href="../../../../alvao-asset-management/working-with-tables">upravit.</a></div>
<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Pokud je v seznamu více než 250 položek, zobrazí se v pravém dolním rohu tlačítko, které po kliknutí zobrazí všechny položky.</div>


</asp:Content>
