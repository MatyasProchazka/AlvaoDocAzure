<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nástroje</h1>
<p>Nabídka Nástroje obsahuje správu pokročilé <a href="../../alvao-asset-management/console">konzoly Asset Management Console</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Seznamy</strong></li>
 <ul>
  <li><a href="../alvao-webapp/administration/service-desk/service/icons">Ikony</a></li>
  <li><a href="tools/lists/properties-definition">
      Definice vlastností</a></li>
  <li><a href="tools/lists/object-security">
  Zabezpečení objektů</a></li>
  <li><a href="tools/lists/node-classes">Druhy objektů</a></li>
  <li><a href="../alvao-webapp/administration/asset-management/link-types">Typy vazeb mezi objekty</a></li>
  <li><a href="tools/lists/numeric-sequences">
  Číselné posloupnosti</a></li>
  <li><a href="tools/lists/commands">Příkazy</a></li>
  <li><a href="tools/lists/organization">
  Organizace</a></li>
  <li><a href="tools/lists/documents">
  Dokumenty</a></li>
  <li><a href="tools/lists/media">Média</a></li>
  <li><a href="software/products">
  Produkty (software)</a></li>
 </ul>
 <li><strong>Detekce</strong></li>
 <ul>
  <li><a href="tools/detection">Načtení ze souboru</a></li>
  <li><strong>Vymazání starých detekcí</strong> - pro každý stroj ponechá pouze nejnovější detekci.  <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Chcete-li pro každý počítač zachovat pouze nejnovější detekci (při úspěšné detekci se automaticky odstraní předchozí), povolte v <strong>aplikaci</strong> ALVAO <strong>Administration</strong> - <strong>Asset Management</strong> - <strong>Settings</strong> - <a href="../alvao-webapp/administration/asset-management/settings/detection">Detection</a> možnost <strong>Maintain only one valid detection per computer</strong></div>

  </li>
 </ul>
 <li><strong>Databáze</strong></li>
 <ul>
  <li><strong>Upravit databázi</strong> - přepočítat předvypočítané položky (cesty ve stromu, názvy objektů generované z názvů vlastností atd.).</li>
  <li><strong>Obnovit odstraněné položky</strong> - obnovení vybraných odstraněných položek v <a href="tab-view/diary">Deníku</a>. Pro označení odstraněných položek je nutné je nejprve zobrazit pomocí místní nabídky - <strong>Tabulka</strong> - <strong>Zobrazit odstraněné položky</strong></li>
  <li><a href="tools/database/sql-query">SQL dotaz</a></li>
  <li><strong>Spustit SQL skript</strong> - vyberte SQL skript, který chcete spustit z disku.</li>
 </ul>
 <li> <a href="tools/password">Změnit heslo</a></li>
 <li> <a href="tools/login">Přihlaste se jako jiný uživatel</a></li>
 <li>
 <a href="../../alvao-asset-management/searching/data-analysis">Analýza dat</a> - otevřete sešit analýzy ALVAO Asset Management umístěný ve složce "C:\Users\{user}\Documents\ALVAO\Asset Management Analysis.xlsm" v aplikaci MS Excel.<div class="note">
  <div class="icon">
  </div>
  <div class="title">
 Poznámka:</div>
  Umístění sešitu analýzy se může lišit v závislosti na nastavení vašeho počítače.</div>
  </li>

 <li><a href="tools/stocktaking">
 Inventura majetku</a></li>
 <li><a href="tools/barcode-reader">
 Čtečka čárových kódů</a></li>
 <li><a href="tools/settings">Nastavení</a></li>
	</ul>
</asp:Content>
