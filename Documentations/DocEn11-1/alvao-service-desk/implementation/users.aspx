<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User management</h1>
    <p>
        See <a href="../../alvao-asset-management/implementation/users">User Management</a> in the ALVAO Asset Management book.
    </p>

    <h2>Changing user name</h2>
    <p>If a user is renamed in Alvao (e.g., a last name change after marriage), their existing requests will retain the previous name under which those requests were originally created in the <em>Requester</em> field. On the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> page in the <em>My Requests</em> view, the requests are filtered by the current user name (the <em>@me</em> filter), so the user does not see their older requests in this view. If you want the user to see these requests, on the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> page, select all requests from the requester with the original name and use the <strong>Edit</strong> command to change the requester's name in bulk.</p>

</asp:Content>
