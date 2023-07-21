<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Datový dotaz</h1>
<p>Na této stránce nebo panelu se zobrazují informace o vybraném <a href="../data-queries">datovém dotazu</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>


<p>Možnosti: V nabídce je možnost zadat údaje o dotazu, který se nachází v databázi:</p>
	<ul>
  <li><strong>Příkazový panel</strong> - viz příkazový panel na stránce <a href="../data-queries">Datové dotazy</a>.</li>
        <li>Bloky<ul>
            <li><a href="data-query/edit">Název, Popis, ...</a> - základní vlastnosti datového dotazu</li>
            <li><a href="data-query/query">Dotaz</a> - dotaz SQL</li>
            <li><a href="data-query/permissions">Oprávnění</a> - seznam uživatelů a skupin s povoleným přístupem k datovému dotazu.</li>
            </ul>
        </li>
	</ul>

</asp:Content>
