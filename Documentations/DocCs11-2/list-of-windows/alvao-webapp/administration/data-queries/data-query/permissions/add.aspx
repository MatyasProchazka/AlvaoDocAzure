<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Přidat povolení</h1>
<p>Na této stránce nebo panelu se zobrazí informace o vybraném <a href="../../../data-queries">datovém dotazu</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>


<p>Volby: 1. Zadejte údaje, které chcete zadat, 2. Zadejte údaje, které chcete zadat, 3. Zadejte údaje, které chcete zadat:</p>
	<ul>
  <li><strong>Vyhledejte osobu nebo skupinu, kterou chcete přidat</strong> - zadejte alespoň část jména uživatele nebo názvu skupiny a vyberte uživatele nebo skupinu z rozevírací nabídky. Tím se vybraný uživatel nebo skupina přidá do seznamu pod vstupní pole. Můžete vybrat několik uživatelů a skupin najednou nebo pomocí tlačítka [...] vybrat několik položek z tabulky najednou.</li>
        <li><strong>Oprávnění</strong><ul>
            <li><strong>Spustit dotaz</strong> - uživatelé s tímto oprávněním mohou zobrazit výsledky datového dotazu na stránce <a href="../../../../data-queries">Datové dotazy</a>. Toto oprávnění nelze odmítnout.</li>
            </ul>
        </li>
	</ul>

</asp:Content>
