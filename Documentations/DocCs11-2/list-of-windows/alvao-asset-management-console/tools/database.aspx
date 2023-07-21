<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Databáze</h1>
<p>Tato nabídka obsahuje příkazy pro práci s <a href="../../../alvao-asset-management/implementation/customization/database">databází Alvao</a>.</p>
	
<p>Možnosti:</p>
 <ul>
  <li><strong>Obnovit smazané položky</strong> - nejprve v <a href="../tab-view/diary">Deníku</a> použijte příkaz místní nabídky - <strong>Tabulka - Zobrazit smazané položky</strong>. Poté vyberte položky, které chcete obnovit, a použijte tento příkaz.  </li>
  <li><a href="database/sql-query">SQL dotaz...</a> - spustí zadaný dotaz SQL (SELECT) a zobrazí jeho výsledek v <a href="database/sql-query">tabulce</a>, kde <a href="../../../alvao-asset-management/working-with-tables">s ním</a> můžete dále <a href="../../../alvao-asset-management/working-with-tables">pracovat</a>. Tento příkaz mohou používat pouze členové skupiny Správci <a href="../../../alvao-asset-management/implementation/users/groups">správy majetku</a> nebo <em>Správci SQL dotazů</em>.</li>
  <li>
 <strong>Spustit skript SQL</strong> - vyberte soubor skriptu SQL, který chcete spustit z disku. Po jeho spuštění aplikace zobrazí pouze informaci o tom, zda skript proběhl bez chyb nebo s chybami.  Tento příkaz mohou používat pouze členové skupiny <a href="../../../alvao-asset-management/implementation/users/groups">Administrators</a> <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Nikdy nespouštějte skripty SQL, u kterých si nejste zcela jisti jejich obsahem. Spuštění nesprávného skriptu SQL může vést k poškození databáze a ztrátě dat. Před spuštěním skriptu SQL v produkční databázi doporučujeme jej nejprve otestovat v testovacím prostředí <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud pracujete s diakritikou, musí být SQL skript v <strong>UNICODE</strong>, jinak nebude diakritika správně zpracována a skript neproběhne správně. </div>
	  </li>
 </ul>
 
</asp:Content>
