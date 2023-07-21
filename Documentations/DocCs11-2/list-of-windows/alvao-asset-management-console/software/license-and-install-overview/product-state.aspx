<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Stav produktu</h1>
<p>V tomto okně můžete změnit <a href="../../../../alvao-asset-management/software-management/product-state">stav produktu</a> a související údaje.</p>
<p>Možnosti:</p>
	<ul>
 <li><span class="style1">Stav výrobku</span> - výběr z nabídky Stav výrobku.</li>
 <li><span class="style1">Schválená verze</span> - výpis přesné verze schváleného produktu.<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Pole lze zapsat pouze v případě, že je stav produktu nastaven na hodnotu <b>Schváleno</b> nebo <b>Schváleno - naplánováno k vyřazení</b>.</div></li>
 <li><strong>Má být vyřazen z provozu</strong> - zadání data, kdy bude produkt vyřazen z provozu, stav produktu se k tomuto datu automaticky změní na <b>Vyřazen z provozu</b> <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Pole lze zapsat pouze v případě, že je stav produktu nastaven na hodnotu <b>Schváleno - naplánováno k vyřazení</b>.</div></li>
 <li><strong>Žádost</strong> - uveďte číslo nebo odkaz na požadavek, která se týká schválení produktu.</li>
	</ul>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 { font-weight: bold;}</style>

</asp:Content>

