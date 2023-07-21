<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Šablony žádostí</h1>
    <p>
        Šablona požadavků slouží členům řešitelského týmu služby jako šablona pro snadné vytváření často se opakujících požadavků v dané službě. Člen řešitelského týmu služby může vybrat šablonu ve formuláři <a href="../../list-of-windows/alvao-webapp/requests/new-request">Nový požadavek</a> pomocí příkazu <strong>Použít šablonu</strong> a vyplnit formulář hodnotami podle této šablony    </p>
    <p>
        Členové řešitelského týmu služby mohou spravovat šablony pro danou službu pomocí příkazu v hlavní nabídce aplikace ALVAO WebApp - <a href="../../list-of-windows/alvao-webapp/ticket-templates">Šablony požadavků</a>   </p>
    <p>
        Pokud chcete, aby se určité hodnoty vyplnily ihned po zobrazení formuláře nového požadavku, přiřaďte službě výchozí šablonu požadavku, viz <strong>Správa - Service Desk - Služby - Upravit-</strong> <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">Formulář nového požadavku</a> - <strong>Výchozí šablona požadavku</strong>   </p>
    <p>
        Pomocí šablon můžete také pravidelně automaticky vytvářet nové požadavky, viz <a href="../../list-of-windows/alvao-webapp/ticket-templates">Šablony požadavků</a> - <strong>Plán </strong>   </p>

    <h2>Oprávnění</h2>

    <table>
        <thead>
            <tr>
                <th>Oprávnění</th>
                <th>Hlavní řešitel</th>
                <th>Správce</th>
                <th>Řešitel</th>
                <th>Žadatel</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Vytvořit a upravit</td>
                <td>Ano</td>
                <td>Ano</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Použít</td>
                <td>Ano</td>
                <td>Ano</td>
                <td>Ano</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Plán</td>
                <td>Ano</td>
                <td>Ano</td>
                <td>Ne</td>
                <td>Ne</td>
            </tr>
        </tbody>
    </table>

</asp:Content>
