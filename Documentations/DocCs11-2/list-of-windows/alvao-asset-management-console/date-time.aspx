<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Datum a čas</h1>
<p>V tomto okně můžete zadat datum a čas při přesouvání objektů ve stromu a dalších činnostech s objekty. Všechny akce lze zobrazit v <a href="../../alvao-asset-management/object-log">protokolu objektů</a>, kde jsou seřazeny podle zde zadaného data.<br/> Aktuální datum a čas jsou předvyplněny.</p>
<p>Možnosti: V případě, že se jedná o objekt, který se nachází v blízkosti objektu, je možné zadat, zda se jedná o objekt, který se nachází v blízkosti objektu:</p>
<ul>
<li><strong>Zadejte datum (a případně čas) vložení</strong> - upravte datum a čas změny. Pokud nechcete zadávat čas, vypněte zaškrtávací políčko před hodinami.<br/> Pokud změny do záznamu vkládáte dodatečně, <strong>zadejte skutečné datum změny</strong>.</li>
<li><strong>Naposledy použitá hodnota</strong> - klikněte na toto tlačítko, pokud chcete přidat datum a čas, které jste vyplnili při posledním použití tohoto okna.<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div> Toto tlačítko se zobrazí při druhém a každém dalším otevření tohoto okna.</div>
</li>
<li><strong>Příště toto okno nezobrazovat a použít aktuální datum a čas</strong>- zapněte, pokud chcete vždy automaticky vyplnit aktuální datum a čas a toto okno nezobrazovat.<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div><br />
	Zobrazování okna můžete vždy znovu zapnout pomocí <strong>Nástroje</strong>- <strong>Nastavení</strong> - záložka <a href="tools/settings/general">Obecné</a>- vypnout <strong>Vytvářet záznamy historie s aktuálním datem a časem</strong>.</div></li>
<li><strong>OK</strong> - potvrďte datum a čas, které se mají zapsat do historie objektu.</li>

<li><strong>Storno</strong> - zavření okna a neprovedení akce, která okno vyvolala.</li>


</ul>

</asp:Content>
