<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Výjimky profilu softwaru pro tento počítač</h1>
<p>Toto okno umožňuje nastavit výjimky z předdefinovaného <a href="../../../../alvao-asset-management/software-management/software-profiles">profilu Software Profile</a> na právě upravovaném počítači.<br/>V tabulce jsou zobrazeny výjimky, které již pro počítač existují. Výjimky mají vždy vyšší prioritu než definice pocházející z profilu.<br/>Je možné přidávat a odebírat produkty a nastavovat pro ně různá nastavení profilu - <em>volitelné</em>, <em>povinné</em> <em>zakázané</em>.</p>
<p>Možnosti: V případě, že se jedná o profil, který je možné nastavit, je možné jej nastavit na následujícím obrázku:</p>
	<ul>
 <li>
<a href="../../../../list-of-windows/alvao-asset-management-console/software/products">Přidat</a> - přidejte produkty, pro které chcete nastavit výjimku.</li>
 <li><strong>Odebrat</strong> - odstranění vybraných produktů ze seznamu výjimek.</li>
	</ul>
	
<p>Možnosti místní nabídky:</p>
<ul>
	<li><strong>Volitelné</strong> - nastaví vybrané produkty jako volitelné.</li>
	<li><strong>Povinné</strong> - nastavení vybraných produktů jako povinných.</li>
	<li><strong>Zakázáno</strong> - nastavení vybraných produktů jako zakázaných.</li>
	<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	V <a href="../../../alvao-asset-management-console">hlavním okně AM Console</a> na <strong>Software</strong> se pak zobrazí rozdíl proti SW profilu a výjimky pro konkrétní počítače.</div>

</ul>

</asp:Content>
