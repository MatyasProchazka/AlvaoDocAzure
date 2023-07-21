<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Vazby </h1>

  <p>
  Karta zobrazuje tabulku objektů, které jsou ve stromu propojeny s aktuálně vybraným objektem. <a href="../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a></p>
  <p>Karta je součástí modulu <a href="../../../modules/alvao-configuration-management">Správa konfigurace ALVAO</a>.</p>

  <h2>Zobrazení tabulky</h2>
  <p>Ve výchozím nastavení obsahuje tabulka následující zobrazení:</p>
  <ul>
  <li><b>Přímé</b> - zobrazuje pouze přímé vazby , tj. vazby , jejichž počátečním nebo koncovým objektem je přímo vybraný objekt ve stromu.</li>
  <li><b>Používá se</b> - zobrazí seznam objektů, kterými je vybraný objekt ve stromu používán, viz typ vazby <i>Používá se - Used</i>.</li>
  <li><b>Používá</b> - zobrazí seznam objektů, kterými je vybraný objekt ve stromu používán, viz typ vazby Používá <i>se - Uses</i>.</li>
  </ul>

  <h2>Sloupce tabulky</h2>
  <table>
  <thead>
  <tr>
  <th>Název</th>
  <th>Popis</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Cesta</td>
  <td>Cesta k odkazovanému objektu.</td>
  </tr>
  <tr>
  <td>Druh objektu</td>
  <td>Typ propojeného objektu.</td>
  </tr>
  <tr>
  <td>Object name</td>
  <td>Název propojeného objektu.</td>
  </tr>
  <tr>
  <td>Přímý</td>
  <td>Ano - jedná se o přímý odkaz na objekt, který je vybrán ve stromu.<br />
  Ne - jedná se o nepřímý odkaz na objekt, který je vybrán ve stromu (odkaz přes jiný objekt).</td>
  </tr>
  <tr>
  <td>Typ odkazu</td>
  <td>Typ odkazu z pohledu aktuálně vybraného objektu ve stromu.</td>
  </tr>
  <tr>
  <td>Vytvořeno</td>
  <td>Datum a čas vytvoření odkazu.</td>
  </tr>
  <tr>
  <td>Vytvořil</td>
  <td>Osoba, která odkaz vytvořila.</td>
  </tr>
  <tr>
  <td>Odstraněno</td>
  <td>Datum a čas, kdy byl odkaz odstraněn.</td>
  </tr>
  <tr>
  <td>Odstraněno</td>
  <td>Osoba, která odkaz odstranila.</td>
  </tr>
  <tr>
  <td>Od objektu (cesta)</td>
  <td>Cesta k objektu, na kterém je odkaz definován. U přímých odkazů je to vybraný objekt ve stromu.</td>
  </tr>
  <tr>
  <td>Z objektu (typ)</td>
  <td>Typ objektu, na kterém je odkaz definován.</td>
  </tr>
  <tr>
  <td>Z objektu (název)</td>
  <td>Název objektu, na kterém je odkaz definován.</td>
  </tr>
  <tr>
  <td>Z objektu (typ vazby)</td>
  <td>Typ odkazu z pohledu objektu, na kterém je odkaz definován.</td>
  </tr>
  </tbody>
  </table>

  <h2>Místní nabídka</h2>
  <ul>
  <li><a href="link">Přidat</a> - přidání nového <a href="../../../modules/alvao-configuration-management/object-links">odkazu</a> na objekt vybraný ve stromu.</li>
  <li><b>Označit objekt ve stromu</b> - označí ve <a href="../object-tree">stromu</a> druhý objekt, na který je vybraným odkazem navázán aktuálně vybraný objekt.</li>
  <li><a href="properties/table-options">Tabulka</a> - nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">upravit tabulku</a>. Například vytvořit filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazit více řádků.</li>
  <li><a href="properties/find">Najít</a> - vyhledání textu v zobrazené tabulce.</li>
  <li><b>Odstranit</b> - odstranění vybraného odkazu.</li>
  <li><a href="link">Upravit</a> - úprava vybraného odkazu.</li>
  </ul>

  <h2>Přímé a nepřímé vazby </h2>
  <p>Mezi objekty A až E existují například tyto vazby :<br/>A -&gt; B -&gt; <b>C</b> -&gt; D -&gt; E</p>
  <p>Pokud je ve stromu objektů vybrán objekt C, pak jsou vazby  B-&gt;C a C-&gt;D <b>přímé,</b> protože přímo vycházejí z objektu C nebo na něj ukazují.</p>
  <p>vazby A-&gt;C a C-&gt;E jsou <b>nepřímé,</b> protože objekt A je nepřímo spojen s C prostřednictvím objektu B. Podobně objekt E je spojen s C nepřímo prostřednictvím objektu D.</p>

</asp:Content>
