<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Organization</h1>

    <p>
        Organization is used to organize users (persons) by company. This functionality is particularly important when the service desk provides services to external customers from different companies.
    </p>
    <p>
        You can manage organizations in <strong>WebApp - Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/organization">Organizations</a>.
    </p>

    <p>
        When editing a user (<em>WebApp - Administration - Users - </em><a href="../../../list-of-windows/alvao-webapp/administration/users/detail/edit">Edit Properties</a>), you can then select from the defined organizations in the <strong>Organization</strong> field. Each user can be in at most one organization.
    </p>
    <p>
        You can create <a href="../custom-items">custom fields</a> for organizations.
    </p>

</asp:Content>
