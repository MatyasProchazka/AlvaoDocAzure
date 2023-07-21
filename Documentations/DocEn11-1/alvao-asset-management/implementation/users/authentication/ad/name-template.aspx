<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User Name Template</h1>
    <p>
        The user name template specifies the format of the user names in Alvao, e.g. "Veronika Kind" or "Kind Veronika".
 By default, the template contains the AD attribute <em>cn</em>, which typically contains the user's first and last name.
    </p>
    <p>You can change the template by running this SQL script on the Alvao database:</p>
    <p>
        <span class="console">exec dbo.spUpdateInsertProperty 'ImportUsersLDAP.PersonNamePattern', 'cn', null, null</span>.
    </p>
    <p>Replace the <span class="console">'cn'</span> argument with the new template. You can use any AD attributes of the <em>User</em> object separated by a space in the template, for example: </p>
    <table>
        <thead>
            <tr>
                <th>Attribute name in AD</th>
                <th>Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>cn</td>
                <td>First and last name</td>
            </tr>
            <tr>
                <td>displayName</td>
                <td>DisplayName for display in the contacts directory</td>
            </tr>
            <tr>
                <td>givenName</td>
                <td>First name</td>
            </tr>
            <tr>
                <td>sn</td>
                <td>Surname</td>
            </tr>
        </tbody>
    </table>

    <p>Example template for the "Last Name First Name" format:</p>
    <p>
        <span class="console">exec dbo.spUpdateInsertProperty 'ImportUsersLDAP.PersonNamePattern', 'sn givenName', null, null, null</span>
    </p>


</asp:Content>
