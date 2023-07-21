<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User permissions</h1>
    <p>User permissions in ALVAO Asset Management can be managed at two levels:</p>
    <ul>
        <li>User roles - see <a href="../users">User Management</a> - <strong>Edit</strong> command- <a href="../../../list-of-windows/alvao-webapp/administration/users/detail/membership">Group Membership</a>;</li>
        <li>
            <a href="../../objects-and-properties/object-access-rights">By securing objects in the tree</a>.</li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Permissions can be set for both users and groups of users.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        After changing service or administrator permissions, the affected user(s) must restart the Asset Management Console for the changes to take effect.<br />
        A restart is not required after an SLA change.
    </div>


</asp:Content>
