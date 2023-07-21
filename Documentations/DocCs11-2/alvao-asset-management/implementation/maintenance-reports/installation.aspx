<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Instalace sestav ve službě Microsoft SQL Server Reporting Services</h1>

    Sestavy ve formátu RDL musí být nainstalovány ve Správci sestav, který je součástí služby Microsoft SQL Server Reporting Services.<ol>
        <li>V aplikaci <strong>Report Manager</strong> vyberte možnost <strong>Nahrát soubor</strong> v požadovaném adresáři.</li>
        <li>Vyberte soubor RDL na disku a potvrďte.</li>
        <li>Vyberte sestavu a přejděte na kartu <strong>Vlastnosti</strong>.</li>
        <li>V části <strong>Zdroje dat</strong> nastavte připojení k databázi Alvao.</li>
    </ol>

    Chcete-li nastavit pravidelné zasílání sestavy do e-mailu, postupujte následovně    <ol>
        <li>Ve Správci sestav vyberte sestavu a přejděte na kartu Odběry.</li>
        <li>Vyberte možnost Nový odběr a nastavte následující položky:<ul>
            <li>Způsob doručení na E-mail.</li>
            <li>Adresát, kterému bude sestava doručena.</li>
            <li>Předmět, formát sestavy a prioritu e-mailu.</li>
            <li>Plánování odeslání.</li>
            <li>Parametry sestavy (popis parametrů níže).</li>
        </ul>
        </li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Aby bylo možné odesílat sestavy e-mailem, musíte mít ve Správci konfigurace Reportovacích služeb nastaven server SMTP    </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Reporty zobrazují objekty a licence bez ohledu na přístupová oprávnění nastavená pro uživatele. Doporučujeme omezit přístup k sestavě ve Správci sestav na oprávněné osoby, které mají právo vidět celé záznamy o majetku nebo licencích    </div>


</asp:Content>
