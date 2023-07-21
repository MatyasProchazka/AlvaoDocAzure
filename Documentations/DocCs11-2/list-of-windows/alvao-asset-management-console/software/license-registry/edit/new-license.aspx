<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nová licence - produkt</h1>
<p>V tomto okně můžete zadat informace o produktu, jehož novou licenci chcete vytvořit.<br/>Po výběru produktu se ve spodní části okna (Detail produktu) zobrazí informace o vybraném produktu.</p>
<p>Možnosti: V nabídce je možné vybrat produkt, který je součástí produktu, nebo produkt, který je součástí produktu:</p>
	<ul>
 <li><a href="../../products">Produkt</a>- vyberte softwarový produkt z nabídky nebo použijte <strong>.</strong>.. a vyberte jej v okně Produkty. <div class="tooltip">
 <div class="icon"></div>
 <div class="title">Tip: V případě, že se jedná o produkt, který je v nabídce, můžete jej vybrat z nabídky:</div>
 Rozbalovací nabídka podporuje inteligentní vyhledávání, např. pokud chcete přidat <em>Microsoft Windows 2000 Proffesional</em>, stačí do textového pole zadat řetězec <em>mi win 2000</em> a poté vybrat správný produkt z filtrovaného seznamu. V seznamu se zobrazí maximálně 100 položek odpovídajících filtru zadanému do textového pole. Pokud se hledaný produkt v seznamu nezobrazí, zkuste filtr upřesnit.</div></li>
 <li><strong>Licenční balíček</strong> - zapněte, pokud potřebujete zadat licenční balíček. Vyberte software, který potřebujete, v poli <strong>Produkt</strong> bude přidán do seznamu licenčních balíčků a po dokončení průvodce budou vytvořeny licence pro všechny produkty v balíčku.<br/> Zapnutím této možnosti se zobrazí také <strong>Seznam položek balíčku</strong>, kde najdete všechny přidané produkty.</li>
</ul>

</asp:Content>
