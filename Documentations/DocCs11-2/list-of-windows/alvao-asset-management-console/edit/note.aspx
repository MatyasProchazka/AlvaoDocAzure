<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Poznámka</h1>
<p>Okno slouží k vytvoření nové poznámky k objektu vybranému ve stromu nebo k zobrazení a úpravě stávající poznámky. Poznámku lze zobrazit v okně <a href="../../../alvao-asset-management/object-log">Protokol objektu</a>.</p>

	<ul>
 <li><strong>Datum</strong> - zadejte datum a čas, je-li to vhodné. Toto datum bude použito pro zařazení poznámky do deníku.</li>
 <li><strong>Předmět</strong> - zadejte stručný název nebo typ poznámky (např. <em>Servisní zásah</em>). Název můžete vybrat ze seznamu, který je součástí tohoto záznamu. Seznam je automaticky generován podle názvů poznámek, které jsou již uvedeny v databázi.</li>
 <li><strong>Poznámka</strong> - zadejte text (podrobný popis) poznámky.</li>
 <li><strong>Příloha (cesta k souboru nebo http adresa</strong>) - v případě potřeby připojte k poznámce přílohu. <div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Chcete-li připojit přílohu, dvakrát klikněte do prázdného místa v tabulce příloh. Poklepáním na konkrétní přílohu otevřete tuto přílohu ve výchozím prohlížeči. </div></li>
	</ul>
</asp:Content>
