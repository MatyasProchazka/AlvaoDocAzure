<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Soubory ruční detekce</h1>
<p>V tabulce jsou uvedeny nalezené soubory <a href="../../../alvao-asset-management/implementation/detection">hardwarové a softwarové detekce</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Cesta</strong> - zobrazí aktuálně platnou cestu k adresáři se softwarovou nebo hardwarovou detekcí.</li>
 <ul><li><a href="detection/file-path">Změnit...</a> -
 zadejte cestu k adresáři s detekcí.</li></ul>
 <li><a href="detection/response">Podrobnosti</a> - zobrazí chybové hlášení vybrané detekce.</li>
 <li><strong>Načíst do databáze</strong> - načte obsah vybraných detekcí do databáze.</li>
 <li><strong>Smazat soubory</strong> - odstraní soubory vybraných detekcí z disku.</li>
	</ul>
</asp:Content>
