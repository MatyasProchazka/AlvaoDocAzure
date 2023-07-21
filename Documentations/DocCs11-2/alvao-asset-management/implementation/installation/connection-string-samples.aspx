<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Příklady řetězců připojení</h1>

    <p>Tato stránka obsahuje příklady připojovacích řetězců .NET pro připojení k databázi Alvao pro různé metody ověřování atd. Připojovací řetězce lze použít ke konfiguraci připojení v:</p>

    <ul>
        <li>ALVAO WebApp</li>
        <li>Webová služba ALVAO Asset</li>
        <li>Služba ALVAO</li>
        <li>...</li>
    </ul>

    <table>
        <tr>
            <th>Metoda ověřování</th>
            <th>Typ připojení</th>
            <th>Příklad řetězce připojení</th>
        </tr>
        <tr>
            <td>Integrovaný systém Windows</td>
            <td>SQL server</td>
            <td>Zdroj dat=SERVER1;Počáteční katalog=ALVAO;Integrované zabezpečení=True;TrustServerCertificate=True</td>
        </tr>
        <tr>
            <td>Uživatel/heslo SQL serveru</td>
            <td>SQL server</td>
            <td>Zdroj dat=SERVER1;Initial Catalog=ALVAO;ID uživatele=user1234;Heslo=secret1234;TrustServerCertificate=True</td>
        </tr>
        <tr>
            <td>Azure AD</td>
            <td>Azure SQL</td>
            <td>Zdroj dat=company.database.windows.net;Initial Catalog=ALVAO;Authentication=Active Directory Integrated;TrustServerCertificate=True</td>
        </tr>
        <tr>
            <td>Azure AD uživatel/heslo</td>
            <td>Azure SQL</td>
            <td>Zdroj dat=company.database.windows.net;Initial Catalog=ALVAO;Authentication=Active Directory Password;User ID=user1234;Password=secret1234;TrustServerCertificate=True</td>
        </tr>
    </table>

</asp:Content>

