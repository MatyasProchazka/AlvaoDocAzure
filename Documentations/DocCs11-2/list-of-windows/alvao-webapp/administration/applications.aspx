<%@ Page masterpagefile="~/doc.master" Language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Aplikace</h1>
<p>Na této stránce můžete spravovat <a href="../../../modules/alvao-sd-custom-apps/applications">aplikace</a> v systému Alvao. Tato stránka je dostupná pouze po aktivaci modulu <a href="../../../modules/alvao-sd-custom-apps">ALVAO Service Desk Custom Apps</a>. nebo <a href="../../../modules/alvao-am-custom-apps">ALVAO Asset Management Custom Apps</a>.</p>

<p>Možnosti: V nabídce jsou uvedeny možnosti, které můžete použít, abyste se dostali do kontaktu s aplikací ALVAO:</p>
	<ul>
  <li><strong>Příkazový panel</strong><ul>
   <li><a href="applications/app/new">Nová aplikace</a> - vytvoření nové aplikace</li>
   <li><strong>Upravit</strong><ul>
  <li><a href="applications/app/edit">Properties (Vlastnosti)</a> - úprava názvu a popisu vybrané aplikace</li>
  <li><strong>Skripty</strong> - správa skriptů vybrané aplikace</li>
  </ul></li>
   <li><strong>Odstranit</strong> - trvalé odstranění vybrané aplikace včetně skriptů</li>
   <li><strong>Povolit</strong> - povolí spuštění všech skriptů vybrané aplikace</li>
   <li><strong>Zakázat</strong> - zakáže spouštění všech skriptů vybrané aplikace</li>
   <li><strong>Exportovat</strong> - export vybrané aplikace do souboru</li>
   <li><strong>Importovat</strong> - import aplikace ze souboru. Po importu bude aplikace zakázána, dokud nepovolíte její spuštění, viz příkaz <em>Povolit</em>.</li>
  </ul>
  </li>
  <li><strong>Tabulka aplikací</strong> - obsahuje všechny aplikace v systému Alvao a jejich vybrané vlastnosti. <a href="../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
  <li><strong>Vybraná aplikace</strong> - po výběru aplikace se vpravo zobrazí <a href="../../../list-of-windows/alvao-webapp/administration/applications/app">zobrazení</a> s informacemi o vybrané aplikaci a jejích skriptech.</li>
	</ul>

</asp:Content>
