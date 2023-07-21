<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Organizace</h1>
<p>V tabulce jsou uvedeny kontaktní údaje organizací nebo společností, které zastupují výrobce softwarových produktů, dodavatele hardware, softwaru nebo služeb.</p>
 <div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	
	<a href="../../../../alvao-asset-management/working-with-tables">Přizpůsobení tabulky</a>: Je možné filtrovat a seskupovat, upravovat stávající zobrazení nebo vytvářet další zobrazení.</div>

<p>Možnosti: V případě potřeby můžete vytvořit tabulku, která bude obsahovat informace o jednotlivých položkách:</p>
	<ul>
 <li><a href="organization/organization-edit">Nový</a> - přidání nové organizace.</li>
 <li><a href="organization/organization-edit">Upravit</a>- úprava vybrané organizace.</li>
 <li><strong>Odstranit</strong> - odstranění vybrané organizace. Odstranit lze pouze záznamy, které nejsou propojeny s jinými informacemi v databázi.</li>
 <li><a href="organization/replace">Nahradit</a> - nahradí vlastní organizaci certifikovanou organizací. Certifikované záznamy jsou dodávány prostřednictvím <a href="../../../../alvao-asset-management/software-management/custom-swlib">Knihovny softwarových produktů</a>, která je k dispozici na internetu.</li>
	</ul>
</asp:Content>
