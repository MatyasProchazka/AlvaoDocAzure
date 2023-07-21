<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Diagram vazeb</h1>

  <p>Tato stránka zobrazuje diagram <a href="../../../../modules/alvao-configuration-management/object-links">vazeb</a> konkrétního objektu.</p>
  <p>Tato stránka je součástí modulu <a href="../../../../modules/alvao-configuration-management">Správa konfigurace ALVAO</a>.</p>
  <p>Funkce:</p>
  <ul>
  <li><b>Příkazový panel</b><ul>
  <li><b>Typy odkazů</b> - vyberte <a href="../../../../modules/alvao-configuration-management/object-links">typy vazeb, které</a> chcete v diagramu zobrazit.</li>
  <li><b>Uložit jako obrázek</b> - uloží celý diagram do souboru PNG. Obrázek neobsahuje tlačítka pro rozbalení/sbalení ani názvy odkazů.</li>
  <li><a href="link">Přidat objekt</a> - přidá do diagramu další objekt nebo několik objektů a propojí je s prvním vybraným objektem.</li>
  <li><b>Přidat odkaz</b> - vytvoření odkazu mezi vybraným objektem a objektem, na který následně ukážete myší.</li>
  <li><b>Upravit</b> - upraví typ vybraného odkazu.</li>
  <li><b>Odstranit</b> - odstranění vybraného odkazu.</li>
  </ul>
  </li>
  <li><b>Propojení diagramu</b> - ve výchozím nastavení se zobrazují pouze přímé vazby  objektu, ze kterého je diagram vykreslen. Pokud chcete zobrazit další vazby  propojeného objektu, klikněte na tlačítko [+] v objektu. Kliknutím na tlačítko [-] rozbalené vazby  opět skryjete. Objekty v diagramu můžete myší libovolně přesouvat na jiné místo.</li>
  <li><b>Vybraný objekt</b> - když vyberete objekt v diagramu, zobrazí se v pravé části stránky <a href="../object">podrobnosti o</a> tomto objektu.</li>
  </ul>

</asp:Content>
