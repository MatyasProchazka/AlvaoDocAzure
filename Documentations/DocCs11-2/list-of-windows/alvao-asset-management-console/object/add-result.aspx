<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Součet hodnot</h1>
    <p>
        V tomto okně můžete zobrazit výsledek funkce <a href="../../../alvao-asset-management/objects-and-properties/functions">Součet</a> a můžete aktualizovat hodnoty vlastností    </p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Ano</strong> - aktualizuje hodnoty vlastností objektů ve vybraném podstromu podle hodnot vlastností v jejich podobjektech.</li>
        <li><strong>Ne</strong> - neaktualizuje hodnoty vlastností.</li>
    </ul>

    <h3>Příklad aktualizace vlastností.</h3>
    <p>Zvolili jsme <strong>Použít funkci</strong> na serverovně a agregovali jsme přes vlastnost <strong>Cena</strong>.</p>
    <ul>
        <li>Místnost serveru</li>
        <ul>
            <li>Server 1</li>
            <ul>
                <li>Raid box - Cena = 19 000 Kč</li>
                <li>Raid pole - Cena = 17 000 Kč</li>
                <li>Raid pole - Cena = 21 000 Kč</li>
                <li>Monitor - Cena = 5 000 Kč</li>
                <li>Pásková mechanika - Cena = 10 000 Kč</li>
            </ul>
            <li>Server 2</li>
            <ul>
                <li>Raid box - Cena = 20 000 Kč</li>
                <li>Raid pole - Cena = 20 000 Kč</li>
                <li>Raid box - Cena = 20 000 Kč</li>
                <li>Raid box - Cena = 20 000 Kč</li>
                <li>Monitor - Cena = 3 000 Kč</li>
                <li>Pásková jednotka - Cena = 12 000 Kč</li>
            </ul>
            <li>Server 3 - Cena = 18 000 Kč</li>
            <ul>
                <li>Raid pole - Cena = 22 000 Kč</li>
                <li>Monitor - Cena = 2 000 Kč</li>
            </ul>
        </ul>
    </ul>
    <p>
        Každý server a serverovna má svou cenovou vlastnost. Pouze server 3 má tuto vlastnost vyplněnou, ale její hodnota není aktuální.<br />
        Funkce sum provedla součet všech objektů s vlastností cena a vypsala, že součet majetku v serverovně je 191 tisíc korun. Pokud hodnoty aktualizujeme, přiřadí vlastnosti cena následující hodnoty:<br />
        Server 1 - 72 000 Kč<br />
        Server 2 - 95 000 Kč<br />
        Server 3 - 24 000 Kč<br />
        Serverovna - 191 000 Kč<br />
    </p>
</asp:Content>
