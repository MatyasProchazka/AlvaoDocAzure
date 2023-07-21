<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Číselné řady</h1>
    <p>Každý dokument v evidenci by měl mít jedinečné označení. Při vkládání dokumentu do evidence můžete jeho označení zadat ručně nebo si jej nechat automaticky vygenerovat.</p>
    <p>Média lze označovat podobně jako dokumenty, viz <a href="../software-management/licenses#media">Média</a>.</p>
    <p>Číselné řady slouží k automatickému generování označení. Příkaz <strong>Nástroje - Seznamy - Číselné řady</strong> otevře na obrazovce okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences">Číselné řady</a>. Seznam v okně obsahuje číselné řady pro označování:</p>
    <ul>
        <li>faktury</li>
        <li>zprávy o převodu</li>
        <li>média</li>
        <li>doklady</li>
        <li>certifikáty</li>
        <li>licenční ujednání</li>
        <li>smlouvy</li>
    </ul>
    <p>Po poklepání na položku se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences/numeric-sequence">Upravit číselnou sekvenci</a>, kde můžete povolit nebo zakázat použití sekvence a změnit její nastavení.</p>
    <p>Každá číselná řada generuje popisek ve formátu:</p>
    <p><em>pppnnnsss</em></p>
    <p>kde:</p>
    <ul>
        <li><em>ppp</em> je předpona</li>
        <li><em>pnnn</em> je číslo</li>
        <li><em>sss</em> je přípona</li>
    </ul>
    <p>Předponu a příponu můžete zadat libovolně nebo je nechat prázdné. Nastavení číselné řady slouží k určení čísla, které bude použito pro další generovaný štítek.</p>
    <p><strong>Příklad 1. Číselná řada</strong></p>
    <p>Nastavení číselné řady pro faktury:</p>
    <ul>
        <li>Předčíslí: <em>"f-"</em></li>
        <li>Další číslo: <em>"56</em>"</li>
        <li>Předčíslí: <em>"/04"</em></li>
    </ul>
    <p>Při tomto nastavení bude mít další zadaná faktura označení f-56/04. Další následující bude mít označení f-57/04 atd.</p>


</asp:Content>
