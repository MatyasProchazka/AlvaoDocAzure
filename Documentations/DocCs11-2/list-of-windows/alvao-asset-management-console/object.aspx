<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Objekt</h1>
<p>Nabídka Objekt umožňuje pokročilou práci s <a href="../../alvao-asset-management/objects-and-properties">objekty</a> v systému ALVAO Asset Management.</p>
<p>Funkce:</p>
	<ul>
 <li><a href="object/use-feature">Použít funkci</a>- použití <a href="../../alvao-asset-management/objects-and-properties/functions">součtové funkce</a> na objektu vybraném ve <a href="object-tree">stromu</a>.</li>
 <li><a href="object/choose-object">Přesunout</a>- přesunutí objektu vybraného ve stromu nebo v tabulce.</li>
 <li><a href="object/unique">Zkontrolovat jedinečnost</a>- kontrola jedinečnosti objektů podle vlastností, které jsou nastaveny jako jedinečné. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Hodnota <em>unikátní vlastnosti</em> musí být jedinečná (tj. odlišná pro dva různé objekty s touto vlastností). Typickou jedinečnou vlastností je <strong>inventární číslo</strong>.</div></li>
 <li><a href="object/unify-objects">Sjednocení objektů</a>- sjednocení objektů podle šablony v <a href="../../alvao-asset-management/implementation/object-templates">šablonách objektů</a>.</li>
  <li><strong>Diagram odkazů</strong> - ve webovém prohlížeči zobrazí stránku aplikace ALVAO WebApp s diagramem odkazů aktuálně vybraného objektu ve stromu. Tento příkaz je k dispozici pouze v případě, že je aktivován modul <i>správy konfigurace ALVAO</i>. Příkaz mohou používat pouze uživatelé s <a href="../../modules/alvao-configuration-management/user-rights">oprávněním</a> zobrazovat diagram odkazů.</li>
  <li><strong>Nakreslit vazby  v MS Visio</strong> - otevře okno MS Visio a nakreslí diagram odkazů aktuálně vybraného objektu ve stromu. Příkaz je k dispozici pouze v případě, že je aktivován modul <i>Správa konfigurace ALVAO</i>. Příkaz mohou použít pouze uživatelé s <a href="../../modules/alvao-configuration-management/user-rights">oprávněním k</a> zobrazení diagramu odkazů  </li>
 <li><strong>Načíst XML</strong> - načte nové objekty ze souboru XML do aktuálně vybraného objektu ve stromu. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Pokud jste ze souboru načetli také ikony, restartujte konzolu AM, aby se správně zobrazily.<br/>Pokud je AM Console připojena prostřednictvím webové služby, není tento příkaz k dispozici. </div>
 </li>
 <li><strong>Uložit jako XML</strong> - uloží vybraný objekt včetně podstromu do souboru xml.<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
   Pokud je AM Console připojena prostřednictvím webové služby, není tento příkaz k dispozici. </div>
 </li>
  <li><strong>Načíst CSV</strong> - spustí průvodce <a href="../alvao-webapp/objects/import-csv">načítáním objektů ze souboru CSV</a>. Nové objekty se vytvoří ve stromu pod aktuálně vybraným objektem.  <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
Chcete-li objekty z CSV importovat pravidelně, můžete použít nástroj <a href="../../alvao-asset-management/import-export-data/import-util">ImportUtil</a>, např. v naplánované úloze na serveru. </div>
  </li>
  <li><a href="object/retrieve-objects-AD">Načíst z Active Directory</a> - načtení objektů z Active Directory.</li>
	</ul>
</asp:Content>
