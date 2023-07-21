<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom fields</h1>

    <p>If you need to write some additional data to some data entities in Alvao, such as <em>requests</em>, <em>users</em>, and others, you can create custom entries to store them. Custom entries can be added to the following entities:</p>
    <ul>
        <li><a href="../requests">Request</a></li>
        <li><a href="../../alvao-asset-management/implementation/users">User (person)</a></li>
        <li><a href="users/companies">Organization</a></li>
        <li><a href="services">Service</a></li>
        <li><a href="services/sla">SLA</a></li>
        <li><a href="../../alvao-asset-management/software-management/licenses">License</a></li>
        <li><a href="../../list-of-windows/alvao-asset-management-console/software/products">Product</a></li>
        <li>Ticket status</li>
    </ul>
    <p>
        Members of the <a href="../../alvao-asset-management/implementation/users/groups">Administrators</a><em> </em>can manage their own items in
  <strong>ALVAO WebApp - Administration -</strong>
        <a href="../../list-of-windows/alvao-webapp/administration/custom-items">Custom fields</a>.
    </p>

    <p>In forms for editing the corresponding entities, the values of custom fields are usually displayed in the <em>Other</em> block.</p>
</asp:Content>
