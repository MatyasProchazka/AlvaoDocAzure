<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Produkt</h1>
<p>V tomto okně můžete upravovat údaje o produktu.</p>
	<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:</div>
	Karta <strong>Součásti balíčku</strong> se zobrazí pouze při úpravě produktu. Její položky lze upravovat pouze při editaci uživatelského produktu.</div>
<p>Záložky:</p>
<ul>
 <li><a href="product/general">Obecné</a></li>
 <li><a href="product/other">Další</a></li>
 <li><a href="product/package-components">Součásti balíčku</a></li>
 <li><a href="product/system">Systém</a></li>
</ul>


</asp:Content>
