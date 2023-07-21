<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Přílohy</h1>

 <p>Na této stránce se zobrazují přílohy objektu. Přílohou může být soubor, odkaz na webovou stránku nebo <a href="../../documents">dokument</a>.</p>

  <p>
  Možnosti: V nabídce jsou uvedeny možnosti, které lze použít pro připojení příloh:</p>
  <ul>
  <li>
 <b>Příkazový panel</b><ul>
  <li><b>Přidat soubor</b> - připojení souboru k objektu.<ul>
      <li><a href="add-link">Přidat odkaz</a> - připojí k objektu webovou stránku nebo odkaz na jiný externí zdroj.</li>
      <li><a href="add-document">Přidat dokument</a> - připojí k objektu <a href="../../documents">dokument</a>.</li>
      </ul>
      </li>
      <li><strong>Odebrat přílohu</strong> - odpojí vybrané přílohy od objektu. V případě připojených souborů a odkazů jsou přílohy nevratně odstraněny. V případě připojených dokumentů se dokumenty od objektu pouze odpojí.</li>

  </ul>
  </li>
    <li><b>Tabulka příloh</b> - obsahuje všechny přílohy objektu. Tabulku můžete <a href="../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li> 
  </ul>

</asp:Content>
