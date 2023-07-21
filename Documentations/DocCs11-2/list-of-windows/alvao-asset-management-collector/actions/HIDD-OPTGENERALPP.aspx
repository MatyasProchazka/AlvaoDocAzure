<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nastavení - Obecné</h1>
<p>Možnosti:</p>
	<ul>
 <li><strong>Databáze</strong><ul>
 <li>
<a href="../../alvao-asset-management-console/file/db-manager">Nastavit připojení -</a> připojení k databázi pro Collector.</li>
 <li><strong>Časový limit připojení k databázi (s</strong> ) - zadejte časový limit pro práci s databází v sekundách. Výchozí hodnota je 300 s.</li>
  </ul>
 </li>
 <li><strong>Spustit</strong><ul>
 <li><strong>Spustit jako aplikaci po přihlášení uživatele</strong> - zapnutím této možnosti se Collector zaregistruje tak, aby se automaticky spustil po přihlášení uživatele k počítači.</li>
  </ul>
 </li>
 <li><strong>Protokol</strong><ul>
 <li><strong>Protokolovat události</strong> - tuto možnost povolte, pokud chcete generovat protokol o činnosti nástroje Collector.  Protokol se ukládá do protokolu událostí <em>AlvaoCollector</em>.</li>
 <li><strong>Detail</strong> - vyberte detail vygenerovaného protokolu: <ul>
 <li><strong>Stav a chyby</strong> - do protokolu se zapisuje pouze pravidelné hlášení o &quot;živosti&quot; detekčních a skenovacích vláken a případné chyby.  Tato úroveň je pro běžný provoz systému dostačující. </li>
 <li><strong>Střední</strong> - do protokolu se navíc zapisují údaje o provedených detekcích atd </li>
  <li><strong>Podrobná</strong> - zapisují se podrobné informace o činnosti sběrače <div class="caution">
 <div class="icon"></div>
  <div class="title">Upozornění:</div>
  Pokud nastavíte podrobnost souboru protokolu na úroveň <strong>Detailní</strong>, bude Collector generovat velké množství dat v souboru LOG a rychlost detekce bude velmi pomalá. Proto se nastavení na úroveň <strong>Detailní</strong> doporučuje pouze pro řešení problémů a nedoporučuje se pro běžný provoz.  </div>
  </li>
 </ul>
 </li>
 <li><strong>Zaznamenávat stav živosti (heartbeat) procesu detekce a skenování s periodou (hodin) </strong> - zadejte interval v hodinách, po kterém bude zaznamenáván stav &quot;živosti&quot; detekčních a skenovacích vláken. Tyto zprávy slouží ke kontrole správné funkčnosti těchto vláken a do protokolu se zapisují vždy, ať už je nastaven jakýkoli detail. </li>
  </ul>
 </li>
	</ul>
	
	


</asp:Content>
