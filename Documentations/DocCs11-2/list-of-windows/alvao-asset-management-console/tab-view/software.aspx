<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Software</h1>
	
<p>Po výběru počítače ve stromu objektů se v tabulce zobrazí seznam programů, které jsou v daném počítači nainstalovány. Je-li vybrán jiný objekt (například oddělení), tabulka zobrazí seznam programů, které jsou nainstalovány na jeho podobjektech typu počítač.</p>
  <p>Na záložce Software se také zobrazí položky registru, které nebyly podle <a href="../../../alvao-asset-management/software-management/custom-swlib">knihovny softwarových produktů</a> přiřazeny ke správnému produktu. Jejich zobrazování lze zakázat v nastavení <strong>AM Console</strong>: nabídka <strong>Nástroje</strong> - <strong>Nastavení</strong> - záložka <a href="../tools/settings/display">Zobrazení</a> - volba <strong>Zobrazit nepřiřazené položky registru</strong>.</p>
  Jednotlivé typy záznamů jsou od sebe odlišeny ikonou: <ul>
 <li><img src="software/SwInstallation.GIF" /> <strong>Instalace</strong> nebo <img src="software/SwInstallationInvalid.gif" />, pokud je nainstalovaný produkt v knihovně softwarových produktů neplatný.</li>
 <li><img src="software/SwReg.GIF" /> <strong>Registr</strong>- nerozpoznaný záznam registru.</li>
 <li><img src="software/SwLic.png" /> <strong>Licence</strong> - přiřazená licence (typ licence "CAL") nebo <img src="software/SwLicOverInvalid.gif" />, pokud je licenční produkt v knihovně softwarových produktů neplatný. V případě zbytečně přidělené licence (tj. produkt není nainstalován) je ikona licence doprovázena adresou <img src="../tools/stocktaking/Exclamation.png" />a ve sloupci <strong>License Status (Stav licence</strong> ) se zobrazuje <strong>Needed</strong> status ( <strong>Potřebný</strong> stav). </li>

 <li><img src="software/SwProfReq.gif" /> <strong>Povinný produkt</strong> nebo <img src="software/SwProfReqInvalid.gif" /> v případě, že je aplikační produkt v knihovně softwarových produktů neplatný - tj. produkt je v profilu softwaru definován jako <em>povinný</em>, ale není nainstalován.</li>
  </ul>
  <p>Ikona <img src="../tools/stocktaking/Exclamation.png" />označuje, že je problém s licencí produktu nebo softwarovým profilem. Text ve sloupci <strong>Chybová zpráva</strong> vám řekne více.</p>
  
<p>Karta Software</strong> možnosti místní nabídky pro <em>počítače a sestavy Software</strong>:</em></p>
	<ul>
 <li><strong>Licence</strong><ul>
  <li>
 <a href="../software/license-and-install-overview/actions/allocate-license">Přiřadit licenci</a> - přidělení licence pro vybraný produkt.</li>
  <li><strong>Odebrat licenci</strong> - odebrání licence vybraným produktům nainstalovaným na počítači vybraném ve stromu.</li>
  <li>
 <a href="../software/license-registry/edit/new-license">Nová licence pro tento software</a> - vytvoření nové licence pro vybraný produkt.</li>
  <li>
 <a href="../software/license-and-install-overview/actions/license-cover">Pokrýt licencí</a> - pokrytí vybraného produktu sdílenou licencí.</li>
  <li>
 <a href="../software/license-and-install-overview/actions/special-installation">Zvláštní instalace</a> - označí vybranou licenci jako zvláštní (nezahrnutou do auditu softwaru).</li>
  <li><a href="software/license-transfer">Přesunout</a>- přesun vybrané licence do jiného počítače nebo nákladového střediska.</li>
  <li>
 <a href="../software/license-registry/edit/edit-license">Upravit</a> - upraví vybranou licenci v <a href="../../../alvao-asset-management/software-management/licenses">protokolu licencí</a>.</li>
 </ul></li>
 <li><strong>Instalace</strong><ul>
  <li>
 <a href="../software/installation-registry/record-installation">Zaznamenat instalaci</a> - zapsat novou instalaci, počítač vybraný ve stromu je předem vybrán.</li>
  <li>
 <a href="../software/installation-registry/record-uninstallation">Zaznamenat odinstalaci</a> - zaznamená odinstalaci vybraného produktu z počítače vybraného ve stromu.</li>
  <li>
 <a href="../../../list-of-windows/alvao-asset-management-console/software/installation-registry">Registr instalací</a> - otevře Protokol instalací počítače vybraného ve stromu.</li>
 </ul></li>
 <li><a href="software/recognition">Odeslat SW k identifikaci</a> - odešle vybrané záznamy typu <strong>registr</strong> k rozpoznání softwaru.</li>
 <li><a href="properties/table-options">Tabulka</a>- nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">upravit tabulku</a>. Například vytvořit filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazit více řádků.</li>
 <li><a href="properties/find">Najít</a>- vyhledání textu v zobrazené tabulce.</li>
 <li><strong>Najít nadřazený produkt</strong> - vyhledá nadřazený produkt, jehož licence se vztahuje na vybranou instalaci</li>
 <li><strong>Odstranit</strong> - odstraní informace o instalaci vybraného produktu nainstalovaného na počítači vybraném ve stromu.</li>
 <li>
<a href="../../../list-of-windows/alvao-asset-management-console/software/installation-registry/alter-installation">Upravit</a> - úprava informací o instalaci vybraného produktu v počítači vybraném ve stromu.</li>
	</ul>
<p>Možnosti místní nabídky karty <strong>Software</strong> pro další objekty:</p>
	<ul>
 <li>
<a href="../../../list-of-windows/alvao-asset-management-console/software/installation-registry">Instalační registr</a> - otevře instalační registr.</li>
 <li><strong>Odstranit z registru</strong> - odstraní vybranou položku z instalačního registru.</li>
 <li><a href="software/recognition">Odeslat SW k identifikaci</a> - odešle vybrané záznamy typu <strong>registr</strong> k rozpoznání softwaru.</li>
 <li><a href="properties/table-options">Tabulka</a>- nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">přizpůsobit tabulku</a>. Například vytvořit filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazit více řádků.</li>
 <li><a href="properties/find">Najít</a>- vyhledání textu v zobrazené tabulce.</li>
	</ul>

</asp:Content>
