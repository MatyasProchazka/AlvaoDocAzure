<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Vlastnosti</h1>

  <p>Tato stránka obsahuje <a href="../../../../alvao-asset-management/objects-and-properties">vlastnosti</a> popisující vybraný objekt.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Příkazový panel</b><ul>
  <li><b>Upravit hodnotu</b> - upraví hodnotu vybrané vlastnosti.Hodnotu vlastnosti můžete změnit také přímo v tabulce poklepáním na ni.</li>
  </ul>
  </li>
  <li><b>Tabulka vlastností</b> - obsahuje vlastnosti vybraného objektu. <a href="../../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit podle potřeby</a>.<br />
  Sloupce tabulky: <table>. <thead> <tr> <th>sloupec</th> <th>popis</th> </tr> </thead> <tbody> <tr> <td>stav</td> <td>ikona význam: <br />
  <img src="zdedena_vlastnost.JPG" alt="Inherited property" /> Zděděná vlastnost - vlastnost je zděděna do tohoto objektu z nadřazeného objektu, jehož název je uveden ve sloupci <i>Objekt</i>.<br />
  <img src="nactena_vlastnost.JPG" alt="Read-only" /> Pouze pro čtení - hodnota vlastnosti je načtena z Active Directory nebo hw detekce, a proto ji nelze ručně měnit.<br />
  <img src="upozorneni.JPG" alt="Alert" /> Upozornění - s vlastností není něco v pořádku. Po najetí myší na ikonu se v bublině zobrazí podrobnější popis chyby. </td> </tr> 
  
  
 <tr> <td>Vlastnost</td> <td>Název vlastnosti, viz <a href="../../../../list-of-windows/alvao-asset-management-console/tools/lists/properties-definition">Definice vlastností</a>.</td> </tr> <tr> <td>Hodnota</td> <td>Hodnota vlastnosti; dvojklikem na hodnotu hodnotu změníte (pokud k tomu máte dostatečná oprávnění a hodnota vlastnosti není uzamčena).</td> </tr> <tr> <td>Objekt</td> <td>Název rodičovského objektu, od kterého je vlastnost zděděna.</td> </tr> <tr> <td>Dědit</td> <td>Hodnota <i>Ano</i> označuje, že tato vlastnost je děděna na podřazené objekty.</td> </tr> <tr> <td>Kategorie</td> <td>Názvy <a href="../../../../alvao-asset-management/implementation/property-categories">kategorií</a> vlastností</td> </tr>, do kterých <tr> <td>je tato vlastnost zařazena, najdete v části</td> </tr>Kategorie <tr> <td> <a href="../../../../alvao-asset-management/implementation/property-categories">vlastností</a>.</td> </tr> <tr> <td>Název objektu (pořadí</td> </tr>) <tr> <td>Pokud tato vlastnost určuje <a href="../../../../alvao-asset-management/objects-and-properties/object-title">název objektu</a>, číselná hodnota v tomto sloupci představuje pořadí části názvu objektu, kterou tato vlastnost určuje </td> </tr>. <tr> <td> Například hodnota 1 znamená, že hodnota vlastnosti určuje začátek názvu objektu. </td> </tr>
  
 <tr>
 <td>Pořadí</td> <td>Řádky v tabulce vlastností jsou obvykle seřazeny podle tohoto sloupce. Hodnotu můžete změnit, viz <a href="../../../alvao-asset-management-console/tools/lists/properties-definition">Definice vlastností</a></td> </tr> </tbody> </table></li>
  </ul>

</asp:Content>
