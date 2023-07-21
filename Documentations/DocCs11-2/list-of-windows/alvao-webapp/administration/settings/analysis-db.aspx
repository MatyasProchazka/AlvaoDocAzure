<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Analýza dat</h1>

  <p>Tento formulář slouží k nastavení připojení k <a href="../../../../alvao-asset-management/implementation/analytic-database">analytické databázi</a>.</p>

  <p>Možnosti:</p>
	<ul>
 <li><strong>Použít analytickou databázi</strong> - tuto možnost povolte, pokud chcete pro analýzu dat použít analytickou databázi. Každý nově vytvořený analytický sešit (viz <em>AM Console - </em><a href="../../../alvao-asset-management-console/tools">Nástroje</a><em> - Analýza dat</em>) bude připojen k této analytické databázi. Pokud je tato možnost zakázána, bude analýza dat prováděna nad produkční databází, což může zpomalit odezvu aplikací Alvao v běžném provozu.</li>
	  <li><strong>Server</strong> - zadejte název serveru SQL Server, na kterém se nachází analytická databáze.</li>
  <li><strong>Databáze</strong> - zadejte název analytické databáze.</li>
	</ul>

</asp:Content>
