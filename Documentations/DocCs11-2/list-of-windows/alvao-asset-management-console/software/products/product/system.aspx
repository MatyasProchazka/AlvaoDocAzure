<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Systém</h1>
<p>Na této záložce jsou zobrazeny, případně můžete upravit, další informace o produktu.</p>

<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Produkty ze standardní softwarové knihovny nelze odstranit a lze upravovat pouze položky <strong>Platný produkt</strong>, <strong>Parametr1</strong>, <strong>Parametr2</strong> a <strong>Popis</strong></div>
	

	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Při zneplatnění produktu jsou zneplatněna i všechna pravidla detekce (pravidla pro zjišťování přítomnosti SW při detekci softwaru)</div>
<p>Možnosti: V případě, že se jedná o program, který je určen pro detekci softwaru, je možné jej nastavit:</p>
	<ul>
 <li><strong>Platný produkt</strong> - deaktivací se produkt odstraní ze <a href="../../products">seznamu produktů</a>. (Neplatné produkty lze zobrazit pomocí příkazu <strong>Zobrazit neplatné produkty</strong> z místní nabídky)</li>
 <li><strong>UID</strong> - zobrazí identifikační číslo záznamu výrobku.</li>
 <li><strong>Datum</strong> - zobrazí datum poslední změny.</li>
 <li><strong>Certifikováno</strong> - zobrazte certifikační autoritu, která záznam vytvořila.</li>
 <li><strong>Parametr1</strong> a <strong>Parametr2</strong>- nebo zadejte uživatelské parametry. Parametry lze použít k filtrování produktů v okně <a href="../../license-and-install-overview">Přehled licencí a instalací</a>.</li>
 <li><strong>Popis</strong> - v případě potřeby přidejte poznámku k produktu.</li>
	</ul>


</asp:Content>
