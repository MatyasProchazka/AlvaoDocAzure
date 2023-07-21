<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Membership in groups</h1>

    <p>This window is used to set the membership of the selected user in <a href="../../../../../alvao-asset-management/implementation/users/groups">user groups</a>.</p>

    <p>Options:</p>
    <ul>
        <li><strong>Command panel</strong><ul>
            <li><a href="select-group">Add</a> - add a user to a group.</li>
            <li><strong>Remove</strong> - remove a user from the selected group.</li>
        </ul>
        </li>
        <li><strong>Table</strong> -&nbsp; the table contains a list of <a href="../../../../../alvao-asset-management/implementation/users/groups">groups</a> in which the selected user is a member. You can <a href="../../../../../alvao-asset-management/working-with-tables">customize</a> the table contents as needed.</li>
    </ul>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Some groups represent user roles in <a href="../../../../../alvao-asset-management/implementation/users/groups">ALVAO Asset Management</a>
        and <a href="../../../../../alvao-service-desk/implementation/users/groups">ALVAO Service Desk</a>.
    </div>

</asp:Content>
