<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní položka</h1>

    <p>Pokud potřebujete zapsat další údaje do některých datových entit v systému Alvao, jako jsou <em>požadavky</em>, <em>uživatelé</em> a další, můžete vytvořit vlastní položky pro jejich uložení. Vlastní položky lze přidat do následujících entit:</p>
    <ul>
        <li><a href="../requests"></a></li>
        <li><a href="../../alvao-asset-management/implementation/users">Uživatel (osoba)</a></li>
        <li><a href="users/companies">Organizace</a></li>
        <li><a href="services">Služba</a></li>
        <li><a href="services/sla">SLA</a></li>
        <li><a href="../../alvao-asset-management/software-management/licenses">Licence</a></li>
        <li><a href="../../list-of-windows/alvao-asset-management-console/software/products">Produkt</a></li>
        <li>Stav ticketu</li>
    </ul>
    <p>
        Členové <a href="../../alvao-asset-management/implementation/users/groups">Administrators</a><em> </em>mohou spravovat své vlastní položky v <strong>ALVAO WebApp - Administration -</strong> <a href="../../list-of-windows/alvao-webapp/administration/custom-items">Custom fields</a>   </p>

    <p>Ve formulářích pro editaci příslušných entit se hodnoty vlastních polí obvykle zobrazují v bloku <em>Ostatní</em>.</p>
</asp:Content>
