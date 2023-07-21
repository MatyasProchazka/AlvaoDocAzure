<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Hledání hodnot</h1>
    <p>Pomocí příkazu <strong>Najít</strong> vyhledejte v tabulce řádek, který obsahuje požadovanou hodnotu.</p>
    <ol>
        <li>V tabulce klikněte pravým tlačítkem myši a z nabídky vyberte příkaz <strong>Najít</strong>.</li>
        <li>Na obrazovce se otevře okno, do kterého můžete zadat hledaný text nebo jeho část a stisknout tlačítko <strong>Najít další</strong>.</li>
        <li>V tabulce se vybere nalezený řádek, pokud existuje. Okno pro zadání parametrů hledání se nezavře. Pomocí tlačítka <strong>Najít další</strong> můžete vyhledat další výskyt hledaného slova.</li>
    </ol>

</asp:Content>
