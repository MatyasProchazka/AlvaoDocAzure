<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Obecné</h1>
<p>Tato záložka slouží k nastavení detekce jednoho konkrétního počítače (název počítače naleznete v závorkách v názvu okna).<br/>Obecně lze metodu detekce vybraného počítače nastavit pomocí <a href="detection-setup">Nastavení detekce</a> v nabídce Místní počítač.</p>
<p>Možnosti: V nabídce je možné nastavit, zda se má detekce provádět v souladu se zákonem o ochraně osobních údajů:</p>
	<ul>
 <li><strong>Použít uložená nastavení</strong> - zapněte, pokud chcete pro detekci použít nastavení uložená pro vybraný počítač.<br/>Vypnutím se zpřístupní další karty s nastavením.</li>
 <li><strong>Detekovat a vyhodnotit ihned</strong> - zapněte, pokud má být detekce a vyhodnocení zpracováno ihned - bez ohledu na plán detekce a vyhodnocení nastavený na serveru. <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud používáte autonomního agenta, detekce neproběhne okamžitě. Bude provedena podle <a href="../../../../alvao-asset-management/implementation/detection/agent#settings">nastavení autonomního agenta</a></div></li>
 <li><strong>Poznámka k detekci</strong> - napište poznámku k detekci.</li>
	</ul>
</asp:Content>
