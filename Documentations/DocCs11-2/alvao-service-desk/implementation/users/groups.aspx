<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Skupiny uživatelů</h1>

    <p>
        Viz <a href="../../../alvao-asset-management/implementation/users/groups">Uživatelské skupiny</a> v knize Asset Management ALVAO    </p>

    <p>Doporučenou strukturu skupin žadatelů naleznete v části <a href="my-team">Můj tým</a>.</p>

    <h2>Systémové skupiny pro ALVAO Service Desk</h2>

    <table>
        <thead>
            <tr>
                <th class="auto-style1">Skupina</th>
                <th class="auto-style1">Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Správci týmů</td>
                <td>Uživatelé v této skupině mohou spravovat své podřízené na stránce <a href="../../../list-of-windows/alvao-webapp/my-team">Můj tým</a>.</td>
            </tr>
            <tr>
                <td>Lidé vykazující čas</td>
                <td>Uživatelé v této skupině mohou hlásit svůj čas do požadavků.</td>
            </tr>
            <tr>
                <td>Manažeři služeb</td>
                <td>Uživatelé v této skupině mohou spravovat služby, smlouvy SLA, procesy a dobu provozu.</td>
            </tr>
            <tr>
                <td>Uživatelé s oprávněním vytvářet požadavky pro ostatní uživatele</td>
                <td>Uživatelé v této skupině mohou vytvářet požadavky pro jiné uživatele ze stejné organizace.  Mohou vyplnit pole <em>Requested for (Požadováno pro</em> ) ve formuláři pro vytvoření požadavku.</td>
            </tr>
            <tr>
                <td>Kořenoví správci znalostní báze</td>
                <td>Uživatelé v této skupině mohou spravovat články ve znalostní bázi, které nejsou zahrnuty do žádné služby. Aby tak mohli činit, nemusí být členy <a href="../../../alvao-service-desk/implementation/services/service-roles">skupiny pro správu</a> žádné služby.</td>
            </tr>
        </tbody>
    </table>

</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 { height: 25px; } </style>
</asp:Content>
