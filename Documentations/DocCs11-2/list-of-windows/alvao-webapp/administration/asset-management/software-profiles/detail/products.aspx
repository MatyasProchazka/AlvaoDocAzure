<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Produkty</h1>
<p>Tato stránka obsahuje seznam softwarových produktů, které jsou zahrnuty v upravovaném <a href="../../../../../../alvao-asset-management/software-management/software-profiles">softwarovém profilu</a>, a způsob jejich přítomnosti v počítači.</p>
<p>Možnosti:</p>
<ul>
 <li><strong>Příkazový panel</strong> <ul> <li><a href="products-products">Přidat</a> - přidání produktů do profilu.</li> <li><a href="products-subprofiles">Dílčí profily</a> - výběr dílčích profilů, které jsou obsaženy v upravovaném profilu.</li> <li><strong>Změnit přítomnost produktů</strong> - změna režimu přítomnosti vybraných produktů.</li> <li><strong>Odstranit</strong> - odstranění vybraných produktů z profilu.</li></ul></li> <li><strong>Tabulka produktů</strong> - tabulka produktů obsažených v profilu. Ve výchozím nastavení tabulka obsahuje následující zobrazení. <li><strong>Vlastní</strong> - pouze produkty definované přímo v tomto profilu.</li> <li><strong>Efektivní</strong> - všechny produkty obsažené v profilu, včetně produktů ze zahrnutých podprofilů. Ve sloupci <em>Podprofil</em> najdete název podprofilu, ve kterém je výrobek definován</li></ul>
  </li>
</ul>

<div class="tip">
<div class="icon"></div>
<div class="title">Tip:</div>
Tabulku si přizpůsobte <a href="../../../../../../alvao-asset-management/working-with-tables">podle potřeby</a></div>

</asp:Content>
