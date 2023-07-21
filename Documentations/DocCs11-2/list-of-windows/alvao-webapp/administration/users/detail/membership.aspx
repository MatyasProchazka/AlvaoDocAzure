<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Členství ve skupinách</h1>

    <p>Toto okno slouží k nastavení členství vybraného uživatele v <a href="../../../../../alvao-asset-management/implementation/users/groups">uživatelských skupinách</a>.</p>

    <p>Možnosti:</p>
    <ul>
        <li><strong>Příkazový panel</strong><ul>
            <li><a href="select-group">Přidat</a> - přidání uživatele do skupiny.</li>
            <li><strong>Odebrat</strong> - odebrání uživatele z vybrané skupiny.</li>
        </ul>
        </li>
        <li><strong>Tabulka</strong> - tabulka obsahuje seznam <a href="../../../../../alvao-asset-management/implementation/users/groups">skupin,</a> v nichž je vybraný uživatel členem. Obsah tabulky můžete <a href="../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
    </ul>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Některé skupiny představují uživatelské role v systémech <a href="../../../../../alvao-asset-management/implementation/users/groups">ALVAO Asset Management</a>a <a href="../../../../../alvao-service-desk/implementation/users/groups">ALVAO Service Desk</a>   </div>

</asp:Content>
