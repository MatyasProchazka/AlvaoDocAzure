<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vícejazyčné prostředí</h1>

    <p>Viz <a href="../../alvao-asset-management/implementation/multi-languages">Asset Management - vícejazyčné prostředí</a>.</p>
    <p>V SD můžete překládat následující hodnoty:</p>
    <ul>
        <li><ul>
            <li>Název služby</li>
            <li>Popis služby</li>
            <li>Klíčová slova služby</li>
        </ul>
        </li>
        <li>SLA<ul>
            <li>Název SLA</li>
            <li>Popis SLA</li>
        </ul>
        </li>
        <li>Proces<ul>
            <li>Název procesu</li>
            <li>název stavu</li>
            <li>Popis stavů</li>
            <li>Pokyny pro řešitele</li>
            <li>Šablona autorizační zprávy</li>
            <li>šablona zprávy o přechodu stavu pro žadatele</li>
        </ul>

        </li>
        <li>Priorita        <ul>
                <li>Název priority (vysoká, střední, ...)</li>
            </ul>
        </li>
        <li>Vztahy mezi žádostmi<ul>
            <li>Název typu propojení</li>
        </ul>
        </li>
        <li>Vlastní položky požadavku          <ul>
                <li>Název položky</li>
                <li>Popis položky</li>
                <li>Hodnoty v seznamu hodnot pro položky typu int a nvarchar        <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        <br />
                        Překlady seznamů hodnot vlastních polí jsou ve výchozím nastavení zakázány. Můžete je povolit u každého <a href="../../list-of-windows/alvao-webapp/administration/custom-items/create-custom-item">vlastního pole</a> zvlášť zapnutím možnosti <strong>Povolit překlad</strong>       </div>
                </li>
            </ul>
        </li>
        <li>Vlastní oznámení<ul>
            <li>Předmět a text oznámení</li>
        </ul>

        </li>
    </ul>

</asp:Content>