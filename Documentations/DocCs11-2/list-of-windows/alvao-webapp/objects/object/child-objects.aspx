<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Podřazené objekty</h1>

  <p>Na této stránce najdete všechny objekty, které jsou ve stromu podřízeny aktuálně zobrazenému objektu.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Příkazový panel</b><ul>
  <li><b>Vybrat ve stromu</b> - vybraný podřazený objekt je ve stromu objektů zvýrazněn žlutě.</li>
  <li><b>Zobrazit v AM Console</b> - spustí konzolu AM a zobrazí v ní aktuálně vybraný objekt.</li>
  <li><b>Příkazy zobrazeného objektu</b> - nabídka obsahuje příkazy dostupné pro aktuálně zobrazený objekt.</li>
  <li><b>Zobrazit v tabulce</b> - podřazené objekty se zobrazí v tabulce na levé straně stránky, kde jimi můžete pohodlně listovat.</li>
  </ul>
  </li>
  <li><b>Tabulka podřízených objektů</b> - obsahuje všechny podřazené objekty zobrazeného objektu. <a href="../../../../alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby  </li>
  </ul>

</asp:Content>
