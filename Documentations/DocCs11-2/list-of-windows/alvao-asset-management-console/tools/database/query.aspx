<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Dotaz</h1>
	<p>V tomto okně můžete vytvořit nový nebo upravit aktuální dotaz SQL (SELECT).</p>
	<p>Možnosti:</p>
<ul>
 <li>Vstupní pole - zadejte <a href="../../../../alvao-asset-management/searching/database-sql/samples">SQL dotaz</a> a výběrem možnosti <b>OK</b> dotaz spusťte.</li>
 <li>Chcete-li zrušit všechny změny provedené v dotazu, vyberte možnost <strong>Storno</strong></li>
</ul>
	
 <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka: V případě, že je dotaz zadán jako dotaz, můžete se obrátit na žadatele, který je v seznamu zadavatelů:</div>
 SQL dotaz musí být pouze typu SELECT a nesmí obsahovat klauzuli ORDER BY. Třídění (a další úpravy) se pak provádí v <a href="../../../../alvao-asset-management/working-with-tables">tabulce</a>. Klauzule INSERT, UPDATE a DELETE nejsou touto funkcí podporovány. Jsou podporovány <a href="../database">skriptem Spustit SQL</a>.</div>
 
 </asp:Content>
