<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Sledování stavu aplikace</h1>
    <p>Chcete-li automaticky kontrolovat stav aplikace Alvao, sledujte stránku <strong>/HealthStatus</strong> webové aplikace ALVAO, např. <em><a href="https://contoso.onalvao.com/Alvao/HealthCheck">https://contoso.onalvao.com/Alvao/HealthCheck</a></em>.</p>
    <p>Stránka vrací jeden z následujících stavů:</p>
    <ul>
        <li>(bez obsahu<strong>)</strong> - Alvao je v pořádku. Nebyly zjištěny žádné chyby.</li>
        <li><strong>500</strong> (vnitřní chyba serveru) - Byla zjištěna chyba alespoň v jedné z následujících komponent:<ul>
            <li>Databáze Alvao - kontroluje se připojení a přístupová práva pro čtení.</li>
            <li>Webová služba Custom Apps - kontroluje se odezva služby a její připojení k databázi Alvao.</li>
            </ul>
        </li>
    </ul>

</asp:Content>
