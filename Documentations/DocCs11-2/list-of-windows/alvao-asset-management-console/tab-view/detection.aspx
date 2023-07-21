<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Detekce</h1>
 
<p>V horní části záložky <em>Detekce</em> se zobrazí <a href="../../../alvao-asset-management/implementation/detection"> tabulka podle detekce hardware a software</a> počítače, který je aktuálně vybrán ve stromu. Pokud je ve stromu vybrána organizační složka, tabulka zobrazuje detekce všech počítačů v této složce. Pokud vyberete detekci v horní části tabulky, její <a href="diary">protokol</a> se zobrazí ve spodní části karty. </p>

<p>Možnosti místní nabídky na kartě <em>Detekce</em>:</p>
	<ul>
 <li><a href="detection/detail">Podrobnosti</a>- zobrazí podrobnosti vybrané detekce. Můžete také určit, zda se mají zobrazit podrobnosti o hardware nebo software.</li>
 <li><a href="detection/compare">Porovnat s registrem majetku</a>- Porovnání vybrané detekce se záznamem v <a href="../../../alvao-asset-management/software-management/software-detection#installation-registry">protokolu o instalaci</a> (software), resp. se stromovými záznamy (hardware) <div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud při poslední detekci došlo k chybě, otevře se okno<a href="detection/compare/components-identification">Identifikovatelné komponenty</a>, které umožňuje nastavit, podle čeho má být počítač detekován (globálně lze komponenty detekce nastavit v <strong>aplikaci ALVAO WebApp - Správa</strong>) </div></li>
 <li><strong>Vyhledání odpovídajícího počítače</strong> </li>
 <li><a href="detection/compare-detection">Porovnat detekce</a>- zobrazí rozdíl mezi dvěma vybranými detekcemi.</li>
 <li><strong>Načíst ze souboru</strong> - načtení detekce uložené na disku.</li>
 <li><strong>Uložit do souboru</strong> - uloží vybranou detekci jako soubor na disk.</li>
 <li><a href="properties/table-options">Tabulka</a>- nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">přizpůsobit tabulku</a>. Například vytvořit filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">zobrazení</a> nebo zobrazit více řádků. <br />
 <strong>Sloupce v tabulce detekcí: </strong> <table>
 <tr>
 <th>Název sloupce</th>
 <th>Popis</th>
 </tr>
 <tr>
 <td >Aktualizovat registr</td>
 <td >Zobrazí hodnotu <em>Ano/Ne</em> podle následující logiky:<br />
 <strong>Ano</strong> - pokud je detekován hardware, provede se <a href="../edit/detection/scope">automatický zápis</a> detekovaných hardwarových objektů do stromu objektů. V případě detekce softwaru budou data detekovaného softwaru automaticky zapsána do <em>Registru instalací</em>.<br />
 <strong>Ne</strong> - nebudou zapsána žádná data z detekce hardware/software.</td>
 </tr>
 <tr>
 <td class="auto-style1">Detekováno</td>
 <td class="auto-style1">Datum detekce.</td>
 </tr>
 <tr>
 <td>Druh</td>
 <td>Typ detekce - software nebo hardware.</td>
 </tr>
 <tr>
 <td>Ihned</td>
 <td>Zobrazí hodnotu <em>Ano/Ne</em> podle následující logiky:<br />
 <strong>Ano</strong> - požadavek na <a href="../../../alvao-asset-management/implementation/detection">okamžité vyhodnocení detekce</a>.<br />
 <strong>Ne</strong> - požadavek na detekci podle uložených nastavení.</td>
 </tr>
 <tr>
 <td>Doba detekce (dny)</td>
 <td>Automatické <a href="../../../alvao-asset-management/implementation/detection"> plánování detekce</a> (počet dní).</td>
 </tr>
 <tr>
 <td>Počítač</td>
 <td>Název počítače, kterého se požadavek na detekci týká. </td>
 </tr>
 <tr>
 <td>Popis</td>
 <td>Popis požadavku na zjišťování.</td>
 </tr>
 <tr>
 <td>Požadavek z</td>
 <td>Datum vytvoření požadavku o zjišťování.</td>
 </tr>
 <tr>
 <td>Stav</td>
 <td>Stav zjišťování.</td>
 </tr>
 <tr>
 <td>Datum stavu</td>
 <td>Datum posledního zadání stavu. </td>
 </tr>
 <tr>
 <td>Úplná detekce software</td>
 <td>Zobrazí <em>Yes/No/&lt;prázdná hodnota&gt;</em> podle následující logiky: <br />
 <strong>&lt;prázdná hodnota&gt;</strong> - HW detekce nebo neúplný požadavek na detekci.  <br />
 <strong>Ano</strong> - dokončená SW detekce a byla provedena v <a href="../edit/detection/scope"> rozsahu</a> "kompletní"  <br />
 <strong>Ne</strong> - dokončená SW detekce a byla provedena v <a href="../edit/detection/scope">rozsahu</a> "normální" </td>
 </tr>
 <tr>
 <td>Způsob detekce</td>
 <td><a href="../../../alvao-asset-management/implementation/detection/detection-way">Výchozí</a> způsob detekce.</td>
 </tr>
 <tr>
 <td>Žadatel</td>
 <td>Žadatel detekce.</td>
 </tr>
  </table>

 </li>
 <li><a href="properties/find">Najít</a>- vyhledání textu v zobrazené tabulce.</li>
 <li><strong>Označit počítač ve stromu</strong> - označí počítač ve stromu, ke kterému patří vybraná detekce.</li>
 <li><strong>Okamžitě vyhodnotit</strong> - spustí <a href="../../../alvao-asset-management/implementation/detection">okamžité vyhodnocení detekce</a>.</li>
 <li><strong>Detekovat znovu</strong> - opětovné odeslání požadavku na detekci.</li>
 <li><strong>Odstranit</strong> - odstranění vybraného požadavku na detekci ze seznamu.</li>
	</ul>


</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  <style type="text/css">
  .auto-style1 { height: 25px; } </style>
  </asp:Content>

