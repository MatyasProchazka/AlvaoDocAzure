<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Otevření stávající databáze</h1>

<p>Možnosti:</p>
	<ul>
 <li><strong>WebService</strong> - zadejte adresu URL webové služby ALVAO Asset Management WebService. Jedná se o doporučený způsob připojení.</li>
 <li><strong>SQL Server</strong> - v následujícím kroku se zobrazí průvodce připojením, ve kterém vyberete poskytovatele <a href="https://docs.microsoft.com/en-us/sql/connect/oledb/download-oledb-driver-for-sql-server">Microsoft OLE DB Driver</a>.</li>
 <li><strong>Soubor UDL</strong> - zobrazí okno pro výběr souboru UDL (Microsoft Data Link).</li>
	</ul>
</asp:Content>
