<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Connection string examples</h1>

    <p>This page provides examples of .NET connection strings for connecting to the Alvao database for various authentication methods, etc. Connection strings can be used to configure connections in:</p>

    <ul>
        <li>ALVAO WebApp</li>
        <li>ALVAO Asset Web Service</li>
        <li>ALVAO Service</li>
        <li>...</li>
    </ul>

    <table>
        <tr>
            <th>Authentication method</th>
            <th>Connection type</th>
            <th>Example connection string</th>
        </tr>
        <tr>
            <td>Windows integrated</td>
            <td>SQL server</td>
            <td>Data Source=SERVER1;Initial Catalog=ALVAO;Integrated Security=True;TrustServerCertificate=True</td>
        </tr>
        <tr>
            <td>SQL Server user/password</td>
            <td>SQL server</td>
            <td>Data Source=SERVER1;Initial Catalog=ALVAO;User ID=user1234;Password=secret1234;TrustServerCertificate=True</td>
        </tr>
        <tr>
            <td>Azure AD</td>
            <td>Azure SQL</td>
            <td>Data Source=company.database.windows.net;Initial Catalog=ALVAO;Authentication=Active Directory Integrated;TrustServerCertificate=True</td>
        </tr>
        <tr>
            <td>Azure AD user/password</td>
            <td>Azure SQL</td>
            <td>Data Source=company.database.windows.net;Initial Catalog=ALVAO;Authentication=Active Directory Password;User ID=user1234;Password=secret1234;TrustServerCertificate=True</td>
        </tr>
    </table>

</asp:Content>

