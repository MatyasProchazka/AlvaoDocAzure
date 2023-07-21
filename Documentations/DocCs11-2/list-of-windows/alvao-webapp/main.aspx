<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Domovská stránka</h1>
<p>Na této stránce mohou žadatelé vyhledávat informace v systému Alvao a podávat nové požadavky.</p>

<p>Možnosti:</p>
  <ul>
 <li><b>S čím vám můžeme pomoci?</b> - zadejte text, podle kterého chcete vyhledávat informace v následujících agendách: <ul>
  <li><i>Aktuální zprávy</i> - hledejte podle názvu a textu zprávy.</li>
  <li><i>Články ve znalostní databázi</i> - vyhledejte název, anotaci, text článku a názvy příloh.</li>
  <li>Vaše <i>požadavky</i> (tj. požadavky, jejichž jste žadatelem) - vyhledává se název požadavku.</li>
  <li><i>Služby</i> - vyhledává se název služby (včetně cesty ve stromu) a klíčová slova. Kliknutím na nalezenou službu odešlete nový požadavek.</li>
  </ul>
 </li>
 <li><b>Vazby </b> - pod vyhledávacím polem jsou dlaždice, které představují užitečné vazby  na nejpoužívanější služby v katalogu služeb nebo na jiné stránky.  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 tyto vazby  definuje správce Alvao v nabídce <i>Správa - Service Desk - </i><a href="../../list-of-windows/alvao-webapp/administration/service-desk/service">Služby</a>.</div>
 
  </li>
  <li><b>Aktuální zprávy</b> - náhled aktuálních zpráv vydaných servisními týmy. Zprávy, které jste již četli, jsou zobrazeny šedě.</li>
  <li><b>Moje požadavky</b> - požadavky, které jste vytvořili.</li>
  <li><b>Znalosti</b> - znalosti, které by vám mohly pomoci při řešení problémů.</li>
  <li><b>Můj majetek</b> - přehled o majetku, který vám byl svěřen do užívání nebo za který jste zodpovědní.</li>
  </ul>

  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Tato stránka je k dispozici pouze v případě, že je aktivován produkt ALVAO Service Desk.</div>
 
</asp:Content>
