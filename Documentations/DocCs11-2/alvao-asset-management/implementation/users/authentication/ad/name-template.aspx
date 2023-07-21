<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Šablona uživatelského jména</h1>
    <p>
        Šablona uživatelského jména určuje formát uživatelských jmen v systému Alvao, např. "Veronica Palmer" nebo "Palmer Veronica". Ve výchozím nastavení obsahuje šablona atribut AD <em>cn</em>, který obvykle obsahuje jméno a příjmení uživatele    </p>
    <p>Šablonu můžete změnit spuštěním tohoto skriptu SQL v databázi Alvao:</p>
    <p>
       <span class="console">dbo.spUpdateInsertProperty 'ImportUsersLDAP.PersonNamePattern', 'cn', null, null</span>   </p>
    <p>Nahraďte argument ' <span class="console">cn'</span> novou šablonou. V šabloně můžete použít libovolné atributy AD objektu <em>User</em> oddělené mezerou, např: </p>
    <table>
        <thead>
            <tr>
                <th>Název atributu v AD</th>
                <th>Hodnota</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>cn</td>
                <td>Jméno a příjmení</td>
            </tr>
            <tr>
                <td>displayName</td>
                <td>DisplayName pro zobrazení v adresáři kontaktů</td>
            </tr>
            <tr>
                <td>givenName</td>
                <td>Křestní jméno</td>
            </tr>
            <tr>
                <td>sn</td>
                <td>Příjmení</td>
            </tr>
        </tbody>
    </table>

    <p>Příklad šablony pro formát "Příjmení Jméno":</p>
    <p>
        jméno a příjmení: <span class="console">exec dbo.spUpdateInsertProperty 'ImportUsersLDAP.PersonNamePattern', 'sn givenName', null, null, null</span>   </p>


</asp:Content>
