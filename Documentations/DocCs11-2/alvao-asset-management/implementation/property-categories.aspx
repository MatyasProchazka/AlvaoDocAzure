<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Kategorie vlastností</h1>
    <p>
        V hlavním okně se vpravo nahoře nachází záložka <strong>Vlastnosti</strong>, která zobrazuje vlastnosti aktuálně vybraného objektu ve stromu. K dispozici je také řada dalších zobrazení, která slouží k filtrování vlastností podle příslušné kategorie. Zcela vlevo jsou dvě výchozí zobrazení <strong>Vše</strong> a <strong>Vlastní</strong>. Dále následují výchozí zobrazení    </p>
    <ul>
        <li>Základní</li>
        <li>Technické</li>
        <li>Účetnictví</li>
        <li>Umístění</li>
    </ul>
    <p>V každém zobrazení jsou ve výchozím nastavení zachovány pouze vlastnosti se zvoleným zaměřením.</p>
    <p>
        Vlastní zobrazení jsou definována ve složce <em>Kategorie majetku</em>, kterou si můžete zobrazit ve stromu tak, že v hlavní nabídce zvolíte <strong>Nástroje - Nastavení</strong> a na kartě <strong>Zobrazení</strong> zapnete volbu <strong>Zobrazit skryté objekty</strong>. Po vytvoření nebo odstranění kategorie ve stromu je třeba ručně vytvořit nebo odstranit odpovídající zobrazení na kartě Vlastnosti    </p>

    <p>Každý podřazený objekt objektu <em>Kategorie vlastností</em> představuje jeden pohled. Seznam vlastností podřazeného objektu určuje, jaké vlastnosti budou uvedeny v odpovídajícím zobrazení. Pouze vlastnost <em>__order</em> má specifický význam - určuje pořadí zobrazení v okně. Hodnoty ostatních vlastností nemají žádný význam.</p>
    <div class="tooltip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Než začnete upravovat kategorie vlastností, přepněte se do zobrazení <strong>Vše </strong>   </div>
    <div class="tooltip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Změny se na kartách projeví po stisknutí klávesy <span class="key">F5</span></div>

</asp:Content>
