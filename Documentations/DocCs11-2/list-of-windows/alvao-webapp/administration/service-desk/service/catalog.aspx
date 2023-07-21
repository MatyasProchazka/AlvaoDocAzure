<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Katalog služeb</h1>
<p>Tato část formuláře <a href="create-service">Nová služba</a> slouží k nastavení vzhledu dlaždice katalogu služeb ve webové aplikaci, klíčových slov, pořadí ve stromu a výchozí šablony požadavku.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Zobrazit v katalogu služeb</strong> - vypnutím této možnosti se služba v katalogu služeb stane neviditelnou. Tato možnost ovlivňuje pouze zobrazení v katalogu služeb v aplikaci WebApp. Viditelnost služby v ostatních částech systému není touto volbou ovlivněna.  <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Volbu <em>Zobrazit v katalogu služeb</em> doporučujeme vypnout u technických služeb nebo u služeb, u kterých je nežádoucí, aby žadatelé zadávali požadavky přímo na ně, ale zároveň je nutné zajistit, aby žadatelé měli k těmto službám přiřazenou SLA (např. pro <a href="extended">vytvoření nového požadavku při neúspěšném pokusu o znovuotevření</a>)  </div>
  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Nastavení volby <em>Zobrazit v katalogu služeb</em> je přepsáno ve všech podřízených službách. Zakázaná volba má vyšší váhu (služba se nezobrazuje), takže volbu <em>Zobrazit v katalogu služeb</em> nelze u služby povolit, pokud je tato volba u nadřazené služby zakázána.</div>
 </li>
 <li><strong>Dlaždice</strong><ul>
 <li><a href="icons">Změnit ikonu</a> - výběr ikony služby z knihovny ikon.<div class="tooltip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
  Chcete-li hromadně změnit ikonu více služeb, které používají stejnou ikonu, zobrazte v tabulce služeb sloupec <em>Ikona</em>, který obsahuje název ikony. Vyfiltrujte všechny služby s aktuální ikonou podle názvu ikony, vyberte je a změňte ikonu příkazem <em>Upravit</em></div>

  </li>
   
	
 <li><strong>Barva dlaždice</strong> - vyberte barvu dlaždice, viz <a href="../../../../../alvao-service-desk/implementation/services/tile-color">doporučené barvy</a>. Zvolená barva dlaždice by měla být kontrastní k obrázku služby a měla by odrážet typ služby (např. červená pro incidenty).</li>
   
	
 <li><strong>Typ dlaždice</strong> - vyberte způsob zobrazení služby v katalogu služeb aplikace WebApp.<ul>
 <li><strong>Square (Čtverec)</strong> - ikona služby se zobrazí na barevném čtvercovém pozadí. Tento režim se doporučuje pro <em>bílé ikony</em>. v tzv. moderním vzhledu systému Windows.</li>
 <li><strong>Stuha pod ikonou</strong> - ikona služby je zobrazena na bílém pozadí a pod ikonou je barevný vodorovný pruh s názvem služby.  Tento režim je vhodný pro barevné ikony na průhledném nebo bílém pozadí.</li>

 </ul>
 </li>
 </ul></li>
 <li><strong>Stromové pořadí</strong> - pokud chcete služby v katalogu seřadit abecedně podle jejich názvu, ponechte toto pole prázdné. V opačném případě zadejte pořadové číslo služby. Služby se pak zobrazí vzestupně podle hodnoty <em>Tree Order (Stromové pořadí)</em>, služby bez pořadí jsou nahoře. Služby se stejnou hodnotou v poli <em>Tree Order</em> jsou seřazeny abecedně podle názvu služby.</li>
 <li><strong>Klíčová slova</strong> - zadejte klíčová slova, podle kterých mohou uživatelé službu vyhledat. Jednotlivá klíčová slova nebo slovní spojení oddělujte čárkami. Služby jsou vždy vyhledávány podle svého názvu včetně celé cesty ve stromu, takže slova obsažená v názvu není třeba znovu zadávat jako klíčová slova. <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Mezi klíčová slova uveďte slova, podle kterých uživatelé službu skutečně vyhledávají. Statistiky vyhledávání najdete v <a href="../../../../../alvao-service-desk/evaluation-of-system-operation/data-analysis">analýze dat</a> na listu <em>Vyhledávání</em> </div>
 </li>
<li>
   <strong>Výchozí šablona požadavku</strong> - vyberte výchozí šablonu požadavku, která vyplní výchozí hodnoty polí <a href="../../../requests/new-request">nového formuláře požadavku</a>.</li>
</ul>
</asp:Content>
