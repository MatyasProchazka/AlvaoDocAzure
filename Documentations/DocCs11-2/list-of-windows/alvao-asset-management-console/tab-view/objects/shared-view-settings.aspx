<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení sdílení</h1>
	<p>Toto okno slouží k nastavení <a href="../../../../alvao-asset-management/working-with-tables/table-views">sdílení zobrazení</a> v tabulce.</p>
 
	Možnosti:<ul>
	<li>
	<strong>Vlastník zobrazení</strong> - vyberte uživatele, který bude vlastníkem zobrazení. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud předáte vlastnictví jinému uživateli, nebudete již moci pohled upravovat. </div>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Při vytváření sdíleného pohledu se toto pole nezobrazuje. Vlastníkem nového sdíleného zobrazení budete vy. </div>
	</li>
	<li>
 <strong>Sdílet s</strong> - pomocí příkazů <strong>Přidat</strong> a <strong>Odebrat</strong> nastavte skupiny uživatelů, se kterými bude pohled sdílen, aby jej mohli používat. </li>
	</ul>
	
</asp:Content>
