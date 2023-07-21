<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Postup řešení</h1>
  <p>V tomto okně definujte stavy požadavků, kterými každý požadavek projde během své životnosti.</p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Panel příkazů</strong><ul>
  <li><a href="status-request">Nový stav</a> - vytvoření nového stavu požadavku.</li>
  <li><strong>Zobrazit diagram</strong> - přepne režim zobrazení na stavový diagram, viz pracovní plocha okna.</li>
  <li><strong>Zobrazit seznam</strong> - přepne režim zobrazení na seznam stavů, viz pracovní plocha okna.</li>
  </ul>
  </li>
  <li>
 <strong>Seznam stavů</strong> - levá strana okna obsahuje uspořádaný seznam stavů, kterými požadavek prochází při běžném řešení. Pravá část obsahuje seznam výjimečných stavů, kterých požadavek při ideálním postupu obvykle nedosáhne. Jednotlivé stavy můžete <a href="status-request">upravovat</a> a případně odstraňovat pomocí tlačítek na pravém okraji seznamu. Jednotlivé stavy můžete přetahovat mezi oběma seznamy  <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Statusy v levém seznamu seřaďte tak, jak by měly následovat za sebou.  </div>
  </li>
  <li><strong>Stavový diagram</strong> - grafické znázornění jednotlivých stavů požadavků a možných přechodů mezi nimi. Tento režim zobrazení je užitečný pro kontrolu povolených přechodů mezi stavy a celkové podoby postupu řešení (procesu). Jednotlivé stavy můžete upravovat pomocí tlačítek zobrazených vpravo nad každým stavem, na který najedete kurzorem myši.  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Při každém přepnutí do tohoto režimu zobrazení se stavy automaticky umístí do diagramu. Ruční změny umístění stavů se neukládají.  </div>
  </li>
  </ul>


 <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Nechte si nakreslit stavový diagram procesu v MS Visio pomocí nástroje <a href="../../../../../../alvao-service-desk/implementation/services/processes/generating-process-diagram">GenerateProcessDiagram</a> </div>
  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Poznámka: Schválení konečného stavu nelze odstranit. </div>

  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Systémové stavy <em>Nový</em>, <em>Vyřešený</em> a <em>Uzavřený</em> nelze odstranit, upravit ani přesunout. Výjimku z tohoto pravidla tvoří status <em>New (Nový)</em>, který lze přejmenovat, a status <em>Solved (Vyřešený)</em>, který lze přesunout.  </div>


</asp:Content>
