<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přesun licence</h1>
	<p>Tato funkce slouží k přesunu vybraných licencí na jiný počítač nebo uživatele nebo na jiné nákladové středisko.</p>
	<ul>
 <li><strong>Přesunout licence na počítač/uživatele</strong> vyberte z nabídky počítač nebo uživatele, na který budou licence přesunuty. V nabídce lze použít rychlé vyhledávání.<br/>Při hromadném přesunu více licencí různých typů budou přesunuty pouze licence typu "na počítač".</li>
 <li><strong>Přesunout licence na nákladové středisko</strong> - z nabídky vyberte nákladové středisko nebo zadejte nové nákladové středisko, pod které budou licence přesunuty. V nabídce lze použít rychlé vyhledávání.</li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Při přesunu na jiný počítač/uživatele nebo nákladové středisko budou přesunuty i všechny podkladové licence, které byly přesouvanými licencemi aktualizovány. </div>

</asp:Content>
