<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Načtení zprávy od žadatele z aplikace MS Outlook</h1>

    <p>V případě, že vám žadatel zašle e-mailovou zprávu, která obsahuje doplňující informace k existujícímu požadavku, můžete pomocí doplňku&nbsp; <a href="../../modules/alvao-outlook-addin">ALVAO pro Outlook</a> - příkazem <strong>Uložit do deníku požadavku</strong> uložit zprávu do deníku požadavku&nbsp; přímo z aplikace Outlook.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud odeslaná zpráva nemá předmět, použije se pro název požadavku zástupný text "(bez názvu)" nebo "(bez předmětu)" pro tělo zprávy požadavku. Uvozovky v textech zástupných symbolů nejsou součástí řetězců    </div>


</asp:Content>
