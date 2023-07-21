<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Aktuální zprávy</h1>

    <p><strong>Řešitelský tým</strong> služby informuje žadatele prostřednictvím <strong>aktuálních zpráv</strong> o:</p>
    <ul>
        <li>plánovaných výpadcích služby,</li>
        <li>probíhajících výpadcích a poruchách,</li>
        <li>připravovaných změnách v nabídce služeb atd.</li>
    </ul>
    <p>Aktuální zprávy lze také použít ke sdílení mimořádných informací v rámci řešitelských týmů služby.</p>
    <p>Aktuální zprávy si můžete přečíst kliknutím na ikonu <a href="../list-of-windows/alvao-webapp/news">Aktuální zprávy</a>, která se zobrazuje na každé stránce aplikace v <a href="../list-of-windows/alvao-webapp">pravém horním rohu</a>. Pokud existují zprávy, které jste ještě nečetli, ikona zobrazuje jejich počet. Zprávy si mohou přečíst pouze žadatelé o službu. Členové servisního týmu mohou zprávy vytvářet a upravovat pomocí příkazu <a href="../list-of-windows/alvao-webapp/news/manage">manage</a>.</p>
    <p>Žadatelé o služby mohou stále vidět aktuální zprávy na <a href="../list-of-windows/alvao-webapp/main">hlavní stránce</a> a u konkrétních služeb v <a href="../list-of-windows/alvao-webapp/service-catalog">katalogu služeb</a> a ve <a href="../list-of-windows/alvao-webapp/requests/new-request">formuláři pro podání nového požadavku</a>.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <p>
            Pokud potřebujete zjistit, kteří uživatelé si aktuální novinku prohlédli, můžete tyto informace najít v databázi v tabulce <a href="../alvao-asset-management/implementation/customization/database#U_dbo.NewsRead">NewsRead</a>       </p>
        <p>
            <br />
            Příklad získání seznamu všech uživatelů, kteří si prohlédli aktuální zprávu s názvem "Výpadek serveru S3"   </p>
        <pre class="console" translate="no">select NR.* from NewsRead NR
join News N on N.id = NR.NewsId 
where N.Subject = N'S3 server outage'</pre>
    </div>

</asp:Content>
