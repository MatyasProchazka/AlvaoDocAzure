<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Instalace</h1>

    <h2>Technické požadavky</h2>
    <ul>
        <li>Správa majetku ALVAO</li>
        <li>Microsoft SQL Server Reporting Services</li>
    </ul>

    <h2>Instalace</h2>
    <p>Report SAM Manager je distribuován v samostatném instalačním balíčku, který získáte od dodavatele systému Alvao. Nainstalujte sestavu do MS SQL Server Reporting Services.</p>
    <p>Ostatní funkce modulu jsou součástí instalace produktu ALVAO Asset Management.</p>
    <h2>Základní nastavení</h2>
    <ol>
        <li>V <strong>aplikaci ALVAO WebApp - Administration</strong> přejděte na stránku <strong>Nastavení</strong>.</li>
        <li>Na stránce <a href="../../list-of-windows/alvao-webapp/administration/settings/messaging">Zprávy</a> nastavte <strong>server SMTP</strong> a <strong>odesílatele zpráv</strong>.</li>
        <li>Na stránce <a href="../../list-of-windows/alvao-webapp/administration/settings/webapp">WebApp</a> do pole <strong>WebApp (URL)</strong>zadejte adresu URL aplikace ALVAO WebApp. </li>
    </ol>

</asp:Content>
