<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Oprávnění uživatele</h1>
    <p>Uživatelská oprávnění v systému ALVAO Asset Management lze spravovat na dvou úrovních:</p>
    <ul>
        <li>Uživatelské role - viz <a href="../users">Správa uživatelů</a> - příkaz <strong>Upravit-</strong> <a href="../../../list-of-windows/alvao-webapp/administration/users/detail/membership">Členství ve skupině</a>;</li>
        <li>
           <a href="../../objects-and-properties/object-access-rights">Zabezpečením objektů ve stromu</a>.</li>
    </ul>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Oprávnění lze nastavit jak pro uživatele, tak pro skupiny uživatelů    </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Po změně oprávnění služby nebo správce musí dotčený uživatel (uživatelé) restartovat konzolu Asset Management Console, aby se změny projevily.<br />
        Po změně SLA není restart vyžadován    </div>


</asp:Content>
