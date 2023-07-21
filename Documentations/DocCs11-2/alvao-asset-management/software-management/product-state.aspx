<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Stav produktu</h1>
    <p>Stav produktu slouží ke sledování životního cyklu jednotlivých produktů. Hlavní myšlenkou je mít přehled o postoji společnosti ke každému produktu z globálního hlediska, bez ohledu na evidenci licencí nebo softwarové profily na jednotlivých strojích. Systém Alvao popisuje životní cyklus produktů pomocí následujících stavů:</p>
    <p>
        1.neklasifikováno<br />
        2.schválení &lt;------&gt; 3b. Zamítnuto<br />
        3a. Schváleno<br />
        4.schváleno - plánováno vyřazení z provozu<br />
        5.vyřazeno z provozu    </p>

    <table class="wide">
        <thead>
            <tr>
                <th class="auto-style1">Stav produktu</th>
                <th class="auto-style1">Popis stavu produktu</th>
                <th class="auto-style1">Poznámky</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><strong>Neklasifikováno</strong></td>
                <td>Nové produkty, které dosud nebyly schváleny nebo zamítnuty.</td>
                <td>Požadavek</td>
            </tr>
            <tr>
                <td><strong>Schválení</strong></td>
                <td>Probíhá schvalování produktu pro použití v organizaci.</td>
                <td>Položky: Požadavek</td>
            </tr>
            <tr>
                <td><strong>Schváleno</strong></td>
                <td>Produkt je schválen pro použití v organizaci.</td>
                <td>Položky: Schválená verze</td>
            </tr>
            <tr>
                <td><strong>Schváleno - plánováno vyřazení z provozu</strong></td>
                <td>Produkt je schválen k používání, ale jedná se o starší verzi, která bude k uvedenému datu vyřazena z provozu       <br />
                    K datu nastavenému v poli "K vyřazení z provozu" se stav produktu automaticky změní na "Vyřazen z provozu".</td>
                <td>Položky: Požadavek, Schválená verze, K vyřazení z provozu</td>
            </tr>
            <tr>
                <td><strong>Vyřazeno z provozu</strong></td>
                <td>Produkt byl vyřazen z provozu.</td>
                <td>Položky Vyžádáno</td>
            </tr>
            <tr>
                <td><strong>Zamítnuto</strong></td>
                <td>Použití produktu v organizaci bylo během schvalovacího procesu zamítnuto.</td>
                <td>Položky: Požadavek</td>
            </tr>
        </tbody>
    </table>

    <p>Pokud chcete používat funkci <em>stavu produktu</em>, zapněte v nabídce <strong>Správa</strong> - <strong>Asset Management</strong> - <strong>Nastavení</strong> - záložka <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/general">Obecné</a> možnost <strong>Upozornit na nainstalované produkty se stavem &quot;Nezařazeno&quot;</strong>, abyste byli upozorněni na instalace nových produktů, které by měly být posouzeny.</p>



</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>

