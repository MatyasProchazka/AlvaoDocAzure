<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Výběr databáze</h1>
	<ul>
 <li><strong>Vytvořit novou databázi</strong> - možnost vytvořit novou databázi.</li>
 <li><strong>Použít existující databázi</strong> - možnost připojení k existující databázi.</li>
 <li>
 <strong>Typ serveru</strong> - zadejte typ serveru.  <ul>
 <li><strong>SQL Server</strong> - vyberte, pokud se připojujete k serveru ve vaší infrastruktuře.</li>
 <li><strong>Azure SQL Database</strong> - vyberte, pokud se připojujete k Azure SQL Database.</li>
  </ul>
 </li>
 <li><strong>Název serveru</strong> - zadejte název serveru. Například sqlserver\sql.</li>
 <li><strong>Database Name</strong> - zadejte název databáze.</li>
 <li><strong>Database Language</strong> - vyberte jazyk databáze.</li>
 <li><strong>Přihlášení k databázi</strong><ul>
 <li><strong>Use Windows Integrated Authentication (Použít integrované ověřování systému Windows</strong>) - možnost použít integrované ověřování systému Windows.</li>
 <li><strong>User (Uživatel)</strong> - možnost zadání uživatelského jména.</li>
 <li><strong>Password (Heslo)</strong> - možnost zadání uživatelského hesla.</li>
  </ul>
 </li>
 <li><strong>Test Connection</strong> - možnost otestovat připojení k serveru SQL Server.</li>
 
	</ul>
</asp:Content>
