<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Podporované jazyky</h1>
    <h2>Společné pro všechny produkty ALVAO</h2>
    <p>Produkty ALVAO jsou lokalizovány do následujících jazyků:</p>
    <table class="wide">
        <tr>
            <th class="auto-style1">Jazyk</th>
            <th>Jazyk systému Alvao<br />
                (databáze, systémové položky, ...)</th>
            <th>Uživatelské rozhraní aplikace<br />
                (nabídky příkazů, dialogy, ...)</th>
            <th>Uživatelská dokumentace</th>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Angličtina</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div></td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Němčina</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Polština</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div></td>
        </tr>


        <tr>
            <td style="vertical-align: middle" class="auto-style1">Maďarština</td>
            <td style="vertical-align: middle; text-align: center;">nepodporováno;<br />
                doporučujeme používat angličtinu</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div></td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Česky</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div></td>
        </tr>

        <tr>
            <td style="vertical-align: middle" class="auto-style1">Slovenština</td>
            <td style="vertical-align: middle; text-align: center;">✔</td>
            <td style="vertical-align: middle; text-align: center;">
                <div>✔</div>
                (pouze webová aplikace)</td>
            <td style="vertical-align: middle; text-align: center;">Používá se angličtina</td>
        </tr>

    </table>

    <p>
        Při implementaci je třeba zvolit <strong>systémový jazyk Alvao</strong>. Tento jazyk se pak používá pro zobrazení systémových hodnot v aplikacích, jako jsou názvy vlastností objektů, názvy systémových objektů ve stromu, názvy systémových procesů atd. Daná implementace musí mít právě jeden systémový jazyk Alvao. Informace o používání systému Alvao ve vícejazyčném prostředí naleznete v části <a href="../../alvao-service-desk/implementation/multi-languages">Vícejazyčné prostředí</a>   </p>
    <p>
        Uživatelská rozhraní aplikací, jako jsou příkazové nabídky, dialogové položky atd. se dynamicky zobrazují v <strong>jazyce preferovaném uživatelem</strong>. nezávisle na zvoleném jazyce systému Alvao. Preferovaný jazyk si může každý uživatel nastavit v <strong>aplikaci ALVAO WebApp - Uživatelské menu - Nastavení-</strong> <a href="../../list-of-windows/alvao-webapp/settings/language">Jazyk a časové pásmo</a>, nebo může preferovaný jazyk uživatele nastavit správce systému v <strong>aplikaci ALVAO WebApp - Správa - Uživatelé - Upravit</strong>. Není-li preferovaný jazyk uživatele podporován, zobrazí se uživatelské rozhraní v angličtině    </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Některé diagnostické protokoly jsou pouze v angličtině.  
    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Údaje, jako jsou názvy objektů nebo požadavky, se nepřekládají a zobrazují se v jazyce, ve kterém byly zadány    </div>

    <h3>Preferované jazyky</h3>
    <p>Vyberte jazyky, které chcete nabídnout uživatelům, aby si mohli vybrat svůj preferovaný jazyk následujícím způsobem:</p>
    <ol>
        <li>Nastavení <strong>-</strong> Jazyky</strong>.</li>
        <li>Použijte příkaz <strong>Add Language (Přidat jazyk)</strong> a ze seznamu jazyků vyberte jazyk, který chcete přidat do seznamu preferovaných jazyků.</li>
        <li>Stiskněte tlačítko <strong>Uložit</strong>.</li>
    </ol>


    <h2>Specifické pro ALVAO Asset Management</h2>
    <ul>
        <li>Analýza dat je pouze v angličtině a češtině.</li>
        <li>Tiskové zprávy jsou také ve slovenštině.</li>
    </ul>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">


    <style type="text/css">
        .auto-style1 { width: 90px; } </style>


</asp:Content>

