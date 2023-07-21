<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Podepisování elektronickým perem</h1>

    <p>
        Při tomto způsobu podepisování předávacího protokolu podepisuje příjemce i předávající protokol elektronickým perem na obrazovce tabletu nebo počítače. Jejich vlastnoruční podpisy se pak zobrazí přímo v dokumentu PDF a uloží se v aplikaci, takže není třeba tisknout protokoly na papír. 
    </p>

    <h2>Úprava tiskového protokolu</h2>
    <p>
        Ujistěte se, že šablona tiskové sestavy obsahuje proměnné <a href="../../alvao-asset-management/implementation/customization/reports/html">@Model.Originator.Signature</a>a <a href="../../alvao-asset-management/implementation/customization/reports/html">@Model.Receiver.Signature</a>, na jejichž místě se v náhledu předávacího protokolu zobrazují podpisy elektronickým perem. 
    </p>

    <h2>Zveřejnění a podepsání předávacího protokolu</h2>
    <ol>
        <li>Při <a href="../../alvao-asset-management/documents/transfer-protocols">sestavování předávacího protokolu</a> ve <a href="../../list-of-windows/alvao-webapp/objects/object/print">formulářích</a>vyberte <b>metodu Podepisování</b> <i>Elektronické pero</i>.</li>
        <li>Po stisknutí tlačítka <b>OK</b> se zobrazí <a href="../../list-of-windows/alvao-webapp/objects/object/print/preview">náhled</a> tiskového protokolu, kde si můžete předávací protokol prohlédnout.</li>
        <li>V náhledu postupně použijte tlačítka <b>Podepsat</b>.</li>
        <li>Zobrazí se <a href="../../list-of-windows/alvao-webapp/objects/object/print/sign">okno pro podpis</a>, ve kterém se můžete podepsat elektronickým perem, prstem nebo myší.</li>
        <li>Po dokončení všech podpisů protokol uložte pomocí příkazu <b>Uložit</b>.</li>
    </ol>

</asp:Content>
