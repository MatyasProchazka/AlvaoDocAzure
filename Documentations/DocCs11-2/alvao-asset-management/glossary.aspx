<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Slovníček</h1>
    <ul>
        <li><strong>Agent</strong> - agent je aplikace (Win9x) nebo služba (NT, 2000, XP, Vista, 7) běžící na klientském počítači a zajišťující vzdálený sběr dat, instalaci softwarových balíčků a komunikaci s ALVAO Asset Management.</li>
        <li><strong>Dědičnost</strong> - viz <a href="#dict.prop.inherited">děděná vlastnost</a>.</li>
        <li><strong>Jedinečnost</strong> - vlastnost může být nastavena jako jedinečná. Pokud je jedinečnost povolena, lze použít funkci <em>Kontrola jedinečnosti</em>. Tato funkce zkontroluje, zda se vybraná vlastnost vyskytuje se stejnou hodnotou vícekrát, a vypíše porušení jedinečnosti pro všechny vlastnosti, které byly takto definovány.</li>
        <li><strong>Klasifikační vlastnost</strong> - vlastnost, která určuje typ objektu, např. &quot;monitor&quot;, &quot;procesor&quot;, &quot;místnost&quot; atd. Tuto vlastnost musí mít každý objekt. Implicitně slouží jako klasifikační vlastnost <em>Typ</em>.</li>
        <li><strong>Kořen stromu</strong>     <br />
            <img src="glossary/Root.gif" />
            <p>Objekt, který se nachází v kořeni stromu, tj. nemá žádný nadřazený objekt.</p>
        </li>
        <li><strong>Nadřazený objekt</strong> </li>
        <li><strong>Objekt</strong> - Objekt je základním stavebním prvkem stromové databáze. Každý objekt představuje jeden uzel stromu.<br />
            Objekt se skládá z:<ul>
                <li>název objektu</li>
                <li>ikony</li>
                <li>vlastnosti</li>
                <li>poznámky</li>
                <li>historie záznamů</li>
                <li>podřazené objekty</li>
            </ul>
        </li>
        <li><strong>Kořenový objekt</strong> - viz <a href="#dict.root">kořen stromu</a>.</li>
        <li><strong>Dceřiný objekt</strong></li>
        <li><strong>Podstrom</strong>       <br />
            <img src="glossary/Subtree.gif" />
            <br />
            Část stromu zahrnující jeden konkrétní objekt (kořen podstromu), jeho podřazené objekty, podřazené objekty podřízených objektů atd.</li>
        <li><strong>podřazený objekt</strong> - jeden z podřízených objektů nebo jeden z podřízených objektů podřízených objektů atd.</li>
        <li><strong>Objekt předek</strong> - rodičovský objekt, rodičovský objekt rodičovského objektu atd.</li>
        <li><strong>Strom</strong>    <br />
            <img src="glossary/Tree.gif" />
            <br />
            Hierarchická struktura složená z objektů. Každý objekt může mít jeden nebo více podřízených objektů (synů) a zároveň může být potomkem jiného objektu (rodičovský objekt, otec)     </li>
        <li><strong>Šablona objektu</strong> - vzor, podle kterého se vytvářejí nové objekty.</li>
        <li><strong>Vlastnost</strong> - informace, která popisuje určitou vlastnost objektu. Každý objekt může být popsán několika vlastnostmi, například Velikost, Barva.</li>
        <li><strong>Vlastní vlastnost</strong> - vlastnost, která je součástí objektu (není zděděná).</li>
        <li><strong>Zděděná vlastnost</strong>        <br />
            <img src="glossary/Inh.gif" />
            <br />
            Vlastnost, která je zděděna do objektu od některého z jeho předků.</li>
        <li><strong>WMI</strong> - Windows Management Instrumentation (WMI) je systém pro správu systémových informací založený na standardizovaném objektově orientovaném rozhraní.</li>
        <li><strong>Karta</strong> - V dolní části oken Vlastnosti a Historie jsou karty, které slouží jako filtry.</li>
    </ul>

</asp:Content>
