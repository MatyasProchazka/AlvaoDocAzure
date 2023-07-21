<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Objekt</h1>

  <p>Na této stránce nebo panelu se zobrazují informace o vybraném <a href="../../../alvao-asset-management/objects-and-properties">objektu</a> v systému ALVAO Asset Management.</p>

  <p>
  Možnosti:</p>
  <ul>
  <li>
 <b>Příkazový panel</b><ul>
  <li><strong>Strom</strong> - zobrazení <a href="../objects">stromu objektů</a> na levé straně stránky.</li>
  <li><b>Přesunout</b> - <a href="object/move">přesun objektu</a> na jiné místo ve stromu.</li>
  <li><a href="object/print">Tisk</a> - vytvoření tiskové sestavy obsahující vybrané objekty. Tisková sestava je ve formátu PDF a můžete ji vytisknout na své tiskárně.</li>
  <li><b>Zobrazit v AM Console</b> - spustí AM Console a zobrazí v ní aktuálně vybraný objekt.</li>
  <li><b>Diagram vazeb</b> - zobrazí <a href="object/links-diagram">diagram vazeb</a> objektu.</li>
  <li><b>Odstranit</b> - <a href="../../../alvao-asset-management/objects-and-properties/removing-object">odstraní objekt</a>.</li>
  <li>Další příkazy v závislosti na aktivní záložce.</li>
  </ul>
  </li>
  <li><b>Záhlaví objektu</b> - pomocí drobečkové navigace snadno přejdete na nadřazený objekt.</li>
  <li><b>Záložky</b><ul>
  <li><a href="object/properties">Vlastnosti</a></li>
  <li><a href="object/child-objects">Podřazené objekty</a></li>
  <li><a href="object/software">Software</a></li>
  <li><a href="object/related-tickets">Související požadavky</a></li>
      <li><a href="object/attachments">Přílohy</a></li>
  <li><a href="object/diary">Protokol</a></li> 
  </ul>
  </li>
    <p>Na tomto místě si můžete také zobrazit vlastní záložky vytvořené správcem. Podívejte se na příklady <a href="../../../modules/alvao-am-custom-apps/applications/templates">zde</a>.</p> 

  </ul>

</asp:Content>
