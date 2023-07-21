<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Objekty</h1>

  <p>Na této stránce můžete pracovat s <a href="../../alvao-asset-management/objects-and-properties">objekty</a> v systému ALVAO Asset Management.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Příkazy</b> - příkazy se zobrazují na panelu v závislosti na vybraném objektu ve stromu. Nabídku příkazů najdete také v místní nabídce objektu pod pravým tlačítkem myši.  <ul>
  <li><a href="objects/new-object">Nový objekt</a> - vytvoření nového objektu ve stromu. Ve stromu vyberte složku (objekt), ve které chcete vytvořit nový objekt, a použijte příkaz <i>Nový objekt</i>. Chcete-li vytvořit nový objekt v kořeni stromu, použijte příkaz <i>Nový objekt</i>, pokud není ve stromu vybrán žádný objekt.</li>
  <ul>
  <li>
 <a href="../../list-of-windows/alvao-webapp/objects/import-csv">Čtení CSV</a> - hromadné vytváření nových objektů ze souboru CSV. </li>
  </ul>
  <li><a href="objects/object/print">Tisk</a> - vytvoření tiskové sestavy obsahující vybrané objekty. Tisková sestava je ve formátu PDF a můžete ji pak vytisknout na své tiskárně.</li>
  <li><b>Kopírovat</b> - zkopíruje vybraný objekt včetně všech jeho podřízených objektů do &quot;schránky&quot;. Vyberte ve stromu objekt, který chcete zkopírovat, a použijte příkaz <i>Kopírovat</i> (nebo <span class="key">Ctrl+C</span> <span class="key">)</span>. Poté vyberte objekt ve stromu, do kterého chcete kopii vložit, a použijte příkaz <i>Vložit</i> (nebo <span class="key">Ctrl+V</span>)  </li>
  <li><b>Vložit</b> - vložení kopie objektu ze &quot;schránky&quot; (viz příkaz <i>Kopírovat</i> ) do vybraného objektu ve stromu.</li>
  <li><b>Strom/Tabulka</b> - přepnutí režimu zobrazení objektu.</li>
  </ul>
  </li>
  <li><b>Strom nebo tabulka objektů</b> - strom nebo tabulka objektů se zobrazí na levé straně stránky. Režim zobrazení můžete přepínat pomocí <i>Stromu</i> a <i>tabulky</i>. <a href="../../alvao-asset-management/working-with-tables">tabulku si</a> můžete <a href="../../alvao-asset-management/working-with-tables">přizpůsobit</a> podle potřeby. Nastavení zobrazení v tabulce je společné s <i>konzolou AM - Zobrazení - <a href="../alvao-asset-management-console/view/list-of-objects">Seznam objektů</a></i>.</li>
  <li><b>Vybraný objekt</b> - V pravé části stránky se zobrazují <a href="objects/object">podrobnosti</a> o objektu, který je aktuálně vybrán ve stromu. Po výběru více objektů se zobrazí nabídka s hromadnými operacemi, která umožňuje přesunout, vytisknout, přidat dokument a odstranit více objektů najednou.</li>
  </ul>
  <div class="note">
  <div class="icon"></div>
   <div class="title">Poznámka:</div>
	  Tato stránka je výchozí pro všechny uživatele, kteří mají roli v systému ALVAO Asset Management a zároveň nemají roli v systému ALVAO Service Desk.  </div>
</asp:Content>
