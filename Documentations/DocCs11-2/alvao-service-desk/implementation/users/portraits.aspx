<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Portréty uživatelů</h1>

    <p>Portréty uživatelů lze zobrazit v aplikacích ALVAO Service Desk.</p>
    <p>Portréty lze importovat do systému Alvao:</p>
    <ul>
        <li>z obrazových <a href="import-portraits-files">souborů</a>na disku,</li>
        <li>z portrétů uživatelů na serveru <a href="import-portraits-sharepoint">SharePoint</a>.</li>
    </ul>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Portréty nově nahrané k existujícím osobám se v aplikaci ALVAO WebApp zobrazí až po aktualizaci mezipaměti prohlížeče (zejména v prohlížečích Chrome a Opera může aktualizace trvat několik dní)    </div>


</asp:Content>
