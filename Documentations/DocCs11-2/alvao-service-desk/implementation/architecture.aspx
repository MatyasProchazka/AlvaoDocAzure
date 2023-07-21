<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Architektura systému</h1>
    <div class="wide">
        <img src="architecture/img/sd-architecture.png" alt="System Architecture" /></div>

    <ol>
        <li><strong>Databáze</strong> - všechna data jsou uložena ve společné databázi. Jako databázový systém se používá Azure SQL Database nebo MS SQL Server.</li>
        <li><strong translate="no">ALVAO WebApp (WA, WebApp)</strong> - je webové rozhraní, jehož prostřednictvím mohou žadatelé, operátoři a řešitelé se systémem komunikovat. Webová aplikace je implementována na platformě MS IIS/ASP.NET. Uživatelé mohou pro přístup k WebApp použít libovolného webového klienta, např. prohlížeče Microsoft Edge, Internet Explorer, Mozilla Firefox, Opera atd. Stejně tak mohou uživatelé k přijímání informačních zpráv používat libovolného e-mailového klienta. Slouží také ke správě systému.</li>
        <li><strong translate="no">ALVAO Service</strong> - serverová komponenta, která zajišťuje automatické načítání požadavků a následnou e-mailovou komunikaci se systémem ALVAO Service Desk. Zprávy se načítají pomocí protokolu IMAP nebo EWS (Exchange WebService). Systém využívá libovolný SMTP server k automatickému odesílání e-mailových zpráv žadatelům i řešitelům. Součástí je také nástroj pro načítání uživatelů z adresy <span translate="no">Active Directory</span>.</li>
        <li><strong translate="no">Custom Apps WebService</strong> - služby, kterou využívá modul <a href="../../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a>.</li>
        <li><strong translate="no">REST API Service</strong> - Rozhraní REST API, které používají aplikace <span translate="no">ALVAO for Outlook</span>, ALVAO for Teams a další aplikace. Mohou jej využívat i vlastní aplikace, viz <a href="../../modules/alvao-sd-enterprise-api" translate="no">ALVAO Service Desk Enterprise API</a>.</li>
    </ol>

</asp:Content>