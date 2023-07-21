<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Permissions</h1>
    <p>On this page, set the permissions of users in the data query being edited.</p>


    <p>Options:</p>
    <ul>
        <li><strong>Command panel</strong><ul>
            <li><a href="permissions/add">Add</a> - add permissions for a user or a group of users to the data query.</li>
            <li><strong>Remove</strong> - removes the selected permissions from the data query.</li>
        </ul>
        </li>
        <li><strong>Table</strong> - permission table of the data query being edited. You can <a href="../../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>


    </ul>

</asp:Content>
