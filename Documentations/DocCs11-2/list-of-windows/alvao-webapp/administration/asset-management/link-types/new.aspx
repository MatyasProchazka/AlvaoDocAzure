<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový typ vazby</h1>
  <p>Pomocí tohoto formuláře můžete vytvořit nový vlastní typ <a href="../../../../../modules/alvao-configuration-management/object-links">odkazu na objekt</a>.</p>
  <p>Možnosti:</p>
  <ul>
  <li><b>Název původu</b> - zadejte název, který vystihuje význam objektu, z něhož odkaz pochází, např. <i>Je zálohován</i>. Pokud se jedná o nesměrový odkaz, zadejte název, který popisuje objekty na obou stranách odkazu.</li>
  <li><b>Koncový název</b> - pokud se jedná o směrový odkaz, zadejte název, který vystihuje význam objektu, na který odkaz směřuje, např. <i>Zálohuje se</i>.</li>
  <li><b>Směrový</b> - zapněte, pokud je směr odkazu důležitý. Ve schématu bude tento směr znázorněn šipkou směřující od počátečního objektu ke koncovému objektu.</li>
  <li><b>Povolit cykly</b> - zapněte, pokud vazby  tohoto typu mohou tvořit cykly, např. A -&gt; B -&gt; C -&gt; A.</li>
  <li><b>Zdraví koncového objektu je ovlivněno zdravím počátečního objektu</b> - zapněte, pokud mohou vazby tohoto typu přenášet <a href="../../../../../modules/alvao-configuration-management/object-health">zdraví</a> počátečního objektu na koncový objekt. Odkaz přenáší pouze informace o existenci závažných událostí. Tato možnost se zobrazí pouze v případě, že je aktivován také produkt <a href="../../../../../alvao-service-desk">ALVAO Service Desk</a>.</li>
  <li><b>Násobnost</b> - vyberte kardinalitu propojení. Pokud zvolíte 1:N, nebude nikdy povoleno, aby k jednomu objektu směřoval více než jeden odkaz tohoto typu. Z jednoho objektu však bude moci vyjít libovolný počet odkazů tohoto typu. Pokud je povolena možnost <i>Povolit cykly</i>, budou moci vazby  tohoto typu tvořit pouze stromy. Pokud vyberete možnost M:N, nebude počet odkazů směřujících k jednomu objektu omezen.</li>
  <li><b>Styl čáry</b> - vyberte styl čáry, kterým bude odkaz v diagramu reprezentován.</li>
  <li><b>Barva čáry</b> - vyberte barvu čáry, kterou bude odkaz v diagramu reprezentován.</li>
  </ul>
</asp:Content>
