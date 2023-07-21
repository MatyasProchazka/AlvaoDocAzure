<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">
<h1>Základní diagnostika problémů</h1>
<p>Na této stránce jsou uvedené základní nástroje a postupy pro diagnostiku problémů se produkty ALVAO. Výstupy relevantních postupů můžete
zaslat spolu s hlášením problému na technickou podporu ALVAO. Zasláním výstupů diagnostiky značně urychlíte a usnadníte řešení problémů.</p>

<h2>Záznam webové komunikace</h2>
<p>Postup se provádí, pokud je nějaká operace s ALVAO WebApp pomalá. Záznam komunikace zapněte těsně před vyvoláním pomalé funkce a zastavte po dokončení akce.</p>
<p>Postup provádějte v Internet Exploreru. Postup je uveden pro Internet Explorer 10, ale v ostatních verzích je postup téměř stejný.</p>

<ol type="1">
<li>Připravte si ve WebAppu stránku tak, aby příštím klikem došlo k pomalé reakci.</li>
<li>Použijte menu Nástroje - Nástroje pro vývojáře (F12).</li>
<li>Přejděte na záložku síť.</li>
<li>Stiskněte tlačítko Spustit zachytávání.</li>
<li>Proveďte na webové stránce akci, která trvá dlouho.</li>
<li>Stiskněte tlačítko zastavit zachytávání.</li>
<li>Použijte funkci Exportovat zachycený přenos.</li>
</ol>

<p>Exportovaný soubor se záznamem komunikace má obvykle příponu <code>.har</code>. 
Tyto soubory lze prohlížet například v online prohlížečích <a href="http://www.softwareishard.com/har/viewer/" target="_blank">HTTP Archive Viewer</a>
 nebo <a href="https://toolbox.googleapps.com/apps/har_analyzer/" target="_blank">Google HAR Analyzer</a>.</p>

<div class="caution">
	<div class="icon"></div>
	<div class="title">Upozornění:</div>
	Exportovaný soubor se záznamem může obsahovat citlivé informace. Neponechávejte jej na veřejně přístupném úložišti.
</div>

</asp:Content>