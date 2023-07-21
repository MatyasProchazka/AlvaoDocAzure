<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Registr instalací</h1>
<p>Tabulka zobrazuje historii instalací a odinstalací softwarových produktů. Každý typ záznamu je odlišen ikonou:</p>
<ul>
	<li><img src="../InstInst.GIF" />Aktivní (platná) instalace produktu</li>
	<li><img src="../InstUninst.GIF" />Odinstalovaný produkt</li>
</ul>
<p>Volby: 1:</p>
	<ul>
 <li><a href="installation-registry/record-installation">Záznam instalace</a> - zápis nových záznamů o instalaci produktu.</li>
 <li><strong>Odinstalovat</strong> - odinstalování vybraných záznamů o instalaci do odinstalovaných záznamů.</li>
 <li><a href="installation-registry/alter-installation">Upravit</a> - úprava údajů vybraných záznamů.</li>
 <li><a href="installation-registry/record-uninstallation">Odstranit</a>- trvalé odstranění vybraných záznamů.</li>
	</ul>

	<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip: V případě, že je instalační systém nainstalován v rámci systému, je možné jej použít pro instalaci instalačních programů:</div>
 Pokud chcete v seznamu instalací zobrazit pouze aktuálně platné instalace a historie vás nezajímá, nastavte filtr v poli <strong>Aktivní</strong> na hodnotu <em>&quot;Ano</em>&quot;</div>

</asp:Content>
