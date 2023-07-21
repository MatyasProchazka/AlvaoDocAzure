<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1 translate="no">Release notes</h1>
    <h1>ALVAO 11.2</h1>

    <p>
        Před <a href="upgrade">upgradem na novou verzi</a> si pozorně přečtěte <a href="release-notes/important">Důležitá upozornění</a> a <a href="known-issues">Známé problémy</a>. V části <a href="release-notes/new">Nové funkce a změny</a> najdete seznam nových funkcí a změn v nové verzi. Seznam vydaných aktualizací naleznete na stránce <a href="release-notes/updates">Vydané aktualizace</a>   </p>

    <h3>Použité zkratky</h3>

    <table>
        <thead>
            <tr>
                <th>Zkratka</th>
                <th>Význam</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">AM</td>
                <td><a href="alvao-asset-management" translate="no">ALVAO Asset Management</a> (produkt)</td>
            </tr>
            <tr>
                <td translate="no">AM Agent</td>
                <td><a href="alvao-asset-management/implementation/detection/agent" translate="no">Asset Management Agent</a> (klientská aplikace)</td>
            </tr>
            <tr>
                <td translate="no">AM Collector, Collector</td>
                <td><a href="alvao-asset-management/implementation/detection/collector" translate="no">Asset Management Collector</a> (serverová aplikace)</td>
            </tr>
            <tr>
                <td translate="no">AM Console, AMC</td>
                <td><a href="list-of-windows/alvao-asset-management-console" translate="no">Asset Management Console</a> (klientská aplikace)</td>
            </tr>
            <tr>
                <td translate="no">AM WS</td>
                <td><a href="alvao-asset-management/implementation/installation/installation-server-manual" translate="no">Asset Management WebService</a> (serverová aplikace)</td>
            </tr>
            <tr>
                <td translate="no">AS</td>
                <td><a href="alvao-asset-management/implementation/installation/installation-server-manual" translate="no">Alvao Service</a> (serverová aplikace)</td>
            </tr>
            <tr>
                <td translate="no">CA WS</td>
                <td><a href="modules/alvao-am-custom-apps" translate="no">Custom Apps WebService</a> (serverová aplikace)</td>
            </tr>
            <tr>
                <td translate="no">AO</td>
                <td><a href="modules/alvao-outlook-addin" translate="no">ALVAO for Outlook</a> - rozšiřující modul a odpovídající doplňková aplikace pro desktopovou aplikaci Outlook</td>
            </tr>
            <tr>
                <td translate="no">REST API</td>
                <td><a href="modules/alvao-am-enterprise-api/specification">Rozhraní REST API</a></td>
            </tr>
            <tr>
                <td translate="no">SD</td>
                <td><a href="alvao-service-desk" translate="no">ALVAO Service Desk</a> (produkt)</td>
            </tr>
            <tr>
                <td translate="no">AT</td>
                <td><a href="modules/alvao-teams-addin" translate="no">ALVAO for Teams</a> (rozšiřující modul)</td>
            </tr>
            <tr>
                <td translate="no">WA, WebApp</td>
                <td><a href="list-of-windows/alvao-webapp" translate="no">ALVAO WebApp</a> (webová aplikace)</td>
            </tr>
        </tbody>
    </table>
    <br />
    <h3>Konvence pojmenování záznamů</h3>
    <p>Záznamy na stránkách <a href="release-notes/important">Důležitá upozornění</a>, <a href="release-notes/new">Nové funkce a změny</a>, <a href="release-notes/fixed-bugs">Opravené problémy</a> a <a href="known-issues">Známé problémy</a> mají následující formát:</p>
    <p><em>&lt;zkratka produktu&gt; &lt;aplikace&gt; &lt;funkce&gt; &lt;popis problému nebo funkce&gt; </em> </p>
    <p>
        Kromě toho je na začátku nebo na konci záznamu obvykle uveden identifikátor opravy nebo změny, například <em>T11111ALVAO </em>   </p>
    <p>Příklad: V případě, že se jedná o změnu v systému, je třeba uvést, že se jedná o změnu v systému:</p>
    <ul>
        <li>SD WebApp - Requests - Assign - přidáno nové pole <em>Solver group </em>.  (T11111ALVAO)</li>
        <li>Meaning: Do formuláře příkazu <em>Assign</em>, který je přístupný na stránce <em>Requests</em> aplikace <em>ALVAO WebApp</em>, která je součástí produktu <em>ALVAO Service Desk</em>, bylo přidáno nové pole <em>Solver group</em>.</li>
    </ul>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>
