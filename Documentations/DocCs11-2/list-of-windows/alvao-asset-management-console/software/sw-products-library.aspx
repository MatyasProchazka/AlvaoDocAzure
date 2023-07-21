<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Knihovna SW produktů</h1>
<p>

<a href="../../../alvao-asset-management/software-management/custom-swlib">Knihovna softwarových produktů</a> obsahuje všechny rozpoznané softwarové produkty v databázi Alvao, a pokud používáte vlastní knihovnu, také produkty z vaší databáze.</p>
<p>Možnosti:</p>

 <ul>
  <li><a href="sw-products-library/load-library-1">Načíst aktualizovanou knihovnu</a> - aktualizace knihovny sw produktů. Tento příkaz je k dispozici pouze v případě, že je AM Console připojena přímo k databázi Alvao. Při připojení přes webovou službu nastavte <a href="../../alvao-webapp/administration/asset-management/servers/create-server">aktualizaci knihovny v AM Collector</a>.</li>
  <li><a href="sw-products-library/save-library-1">Uložit vlastní knihovnu</a></li>
 </ul>
</asp:Content>
