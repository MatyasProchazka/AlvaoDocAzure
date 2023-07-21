<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Oprávnění</h1>
    <p>Na této stránce nastavte oprávnění uživatelů v upravovaném datovém dotazu.</p>


    <p>Možnosti:</p>
    <ul>
        <li><strong>Příkazový panel</strong><ul>
            <li><a href="permissions/add">Přidat</a> - přidání oprávnění pro uživatele nebo skupinu uživatelů do datového dotazu.</li>
            <li><strong>Odebrat</strong> - odstraní vybraná oprávnění z datového dotazu.</li>
        </ul>
        </li>
        <li><strong>Tabulka</strong> - tabulka oprávnění upravovaného datového dotazu. Tabulku můžete <a href="../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>


    </ul>

</asp:Content>
