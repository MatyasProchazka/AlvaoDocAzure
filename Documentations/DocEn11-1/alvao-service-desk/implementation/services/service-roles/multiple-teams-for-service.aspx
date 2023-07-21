<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Requester groups</h1>

    <p>
        The validity of <a href="../../../../alvao-service-desk/implementation/services/service-roles">user roles in a service</a> may be limited to requests from a specific <strong>group of requesters</strong>. Thus, you can divide the service team into sub-teams, for example, based on the location of the requester. Requests from applicants from different locations are then handled by different resolution teams.
        <br />
        <br />
        The roles of the resolution team members and their specification for specific Requester groups are set in <strong>ALVAO WebApp - Administration - Service Desk - Services - Edit - Permissions - </strong><a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/service-authorization">Add permissions</a><strong> - For Requesters from a group</strong>.
        <br />

        Example:<br />
        <br />
        The <em>IT/Printers/Something is not working for me</em> service Requesters are divided into the groups "<em>Prague</em>" and "<em>Brno</em>".
The solvers for this service are divided into the groups "<em>Resitele_tiskarny_Praha</em>" and "<em>Resitele_tiskarny_Brno</em>". Group "<em>Resitele_tiskarny_Brno</em>"
has the permissions Operator and Solver for applicants from the group "<em>Pracovnici_Brno</em>", the group "<em>Resitele_tiskarny_Praha</em>" has the permissions Operator and Solver for applicants from the group "<em>Pracovnici_Praha</em>". If a request is created in this service by a user from the "<em>Pracovnici_Brno</em>" group, only users from the "<em>Resitele_tiskarny_Brno</em>" group are notified and have permission to resolve this request. Unless permissions are set otherwise, users from the group "<em>Resitele_tiskarny_Praha</em>" do not have access to this request.
    </p>

</asp:Content>
