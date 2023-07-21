<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Inventura majetku</h1>
  <p>
  V tomto okně najdete naposledy použitou <a href="../../../modules/alvao-inventory-audits/stocktaking">kontrolu majetku</a> - v záhlaví je uvedeno její číslo, datum zahájení a její stav (otevřená nebo uzavřená). Pokud není otevřena žádná inventura, je v záhlaví okna uvedeno <i>Žádná inventura nebyla vybrána</i>. Okno je součástí modulu <a href="../../../modules/alvao-inventory-audits">ALVAO Inventární kontroly</a>.<br />
  Kontrolu majetku otevřete pomocí příkazu <b>Soubor - Otevřít kontrolu majetku</b> </p>


  <p>Okno obsahuje dvě tabulky:</p>
  <ul>
  <li><b>Horní tabulka</b> - obsahuje seznam inventarizovaného majetku. V barevných sloupcích najdete údaje zaznamenané před zahájením inventury (bílé a šedé sloupce) a údaje zjištěné inventurou (žluté sloupce). V červených sloupcích jsou uvedeny stavové hodnoty<i>(uzamčeno</i>, <i>zpracováno</i> atd.) Ve speciálním sloupci <i>Chybové hlášení</i> jsou uvedeny problémy, které se vyskytly po provedení inventury daného majetku. Pokud byl u objektu nalezen problém, zobrazují se v tomto sloupci také ikony <img src="stocktaking/Exclamation.png" />.</li>
  <li><b>Spodní tabulka</b> - ve spodní části okna jsou uvedeny soubory čtečky čárových kódů, do kterých jsou rozděleny majetky z horní tabulky. Z každé čtečky lze soubor vyexportovat pr čtecí zařízení a zpětně z něj importovat ruční inventarizační záznamy.</li>
  </ul>

  <p>Volby: 1. V případě, že se jedná o čtečku dat, můžete si vybrat, zda chcete čtečku dat používat nebo ne:</p>
  <ul>
  <li><a href="stocktaking/file">Soubor</a></li>
  <li><a href="stocktaking/edit">Upravit</a></li>
  <li><a href="stocktaking/view">Zobrazit</a></li>
  <li><a href="stocktaking/action">Akce</a></li>
  <li><a href="stocktaking/web-asset-check">Kontrola webových aktiv</a></li>
  </ul>

  <p>Možnosti místní nabídky v tabulce vlastností:</p>
  <ul>
  <li><b>Přiřadit aktivum k souboru čtečky</b> - přiřadí vybrané aktivum k souboru čtečky vybranému ve spodní tabulce.</li>
  <li><b>Označit soubor čtenáře</b> - označí ve spodní tabulce soubor čtenáře, kterému je vybrané aktivum přiřazeno.</li>
  <li><b>Mark object in tree (Označit objekt ve stromu</b> ) - označí vybrané aktivum ve <a href="../object-tree">stromu</a> v <a href="../../alvao-asset-management-console">hlavní AM Console</a>.</li>
  <li><b>Přejít na duplicitní záznam</b> - označí duplicitní záznam vybraného objektu (pokud duplicitní záznam existuje).</li>
  <li><b>Přenést majetek na uživatele</b> - přenese vybraný majetek na nově identifikovaného vlastníka. Pokud byl při inventarizaci nalezen jiný vlastník objektu než ten, který je zaznamenán ve <a href="../object-tree">stromu</a>, tento příkaz převede majetek na nového uživatele. Pokud nový uživatel ve stromu existuje, bude majetek převeden automaticky; pokud je problém s nalezením uživatele, budete vyzváni k jeho ručnímu nalezení pomocí okna <a href="">Objekty</a>.</li>
  <li><a href="../object/choose-object">Přenést majetek do ...</a> - vyberte objekt, pod který chcete vybraný majetek zahrnout (ve <a href="../object-tree">stromu objektů</a>).</li>
  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Příkazy pro přenos majetku vyvolávají standardní akci přesunu objektu ve stromu se všemi příslušnými dialogy. Pokud například přesouváte část počítačové sestavy, budete před akcí dotázáni, zda chcete přesunout pouze část nebo celek, změna se zapíše do Žurnálu atd.</div>
  <li><b>Uzamknout záznamy</b> - zabrání změnám ve vybraných záznamech této evidence.</li>
  <li><b>Zpracovat záznamy</b> - zpracuje vybrané záznamy a zapíše případné nové informace do inventury.</li>
  <li><a href="../tab-view/properties/table-options">Tabulka</a> - nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">přizpůsobit tabulku</a>. Například vytvořit filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazit více řádků.</li>
  <li><a href="../tab-view/properties/find">Najít</a> - vyhledávání textu v zobrazené tabulce.</li>
  <li><b>Odstranit</b> - odstranění vybraného záznamu z inventury.</li>
  <li><a href="stocktaking/property">Upravit</a> - editace vybraného záznamu.</li>
  </ul>

  <p>Možnosti místní nabídky v tabulce čtenáře:</p>
  <ul>
  <li><a href="stocktaking/file-reader">Nový soubor čtenáře</a> - vytvoření nového souboru pro čtecí zařízení.</li>
  <li><a href="../../../list-of-windows/alvao-webapp/objects/export-xlsx">Exportovat XLSX</a> - export souboru s příponou .xlsx jako podkladu pro inventuru.</li>
  <li><b>Import XLSX</b> - import souboru s příponou .xlsx po provedení inventury.</li>
  <li><b>ALVAO Mobile Asset check (zastaralé</b> ) - příkazy související s inventurou pomocí mobilní aplikace <a href="../../../modules/alvao-inventory-audits/barcode-reader">ALVAO Mobile Inventory</a> <ul>
  <li><b>Export IXM</b> - export souboru s inventarizační dokumentací do čtecího zařízení a jeho uložení na disk.</li>
  <li><b>Import IXM</b> - import souboru ze čtecího zařízení (uloženého na disku), které bylo použito k provedení inventury.</li>
  </ul>
  </li>
  <li><strong>Odstranit</strong> - vymazání vybrané čtečky.</li>
  <li><a href="stocktaking/file-reader">Upravit</a> - editace údajů vybrané čtečky.</li>
  </ul>
</asp:Content>
