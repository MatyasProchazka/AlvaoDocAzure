<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Součásti balíku</h1>
<p>V tabulce jsou uvedeny jednotlivé programy softwarového balíčku. Pokud vybraný produkt neobsahuje více programů, je tabulka prázdná.</p>
<p>Volby:</p>
	<ul>
 <li><strong>Přidat</strong> - přidání dalšího produktu.</li>
 <li><strong>Odstranit</strong> - odebrání vybraného produktu.</li>
	</ul>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 U produktů ze standardní softwarové knihovny není možné upravovat položky. Upravovat lze pouze uživatelské produkty - filtrujte pomocí &quot;&quot; (prázdný řetězec) ve sloupci <strong>Certifikováno</strong> </div>

</asp:Content>
