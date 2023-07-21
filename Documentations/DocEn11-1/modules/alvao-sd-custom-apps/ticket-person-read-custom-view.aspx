<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Permission to see request</h1>
    <p>
        Each user sees only those requests in the application that they are authorized to see based on their <a href="../../alvao-service-desk/implementation/services/service-roles">service roles</a> and possibly other settings. By modifying the view <a href="../../alvao-asset-management/implementation/customization/database#V_dbo.vHdTicketPersonRead_Custom" translate="no">vHdTicketPersonRead-Custom</a>
        in the database, you can grant users permission to see additional requests beyond their roles in the services.
    </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        View customization requires a good knowledge of SQL and <a href="../../alvao-asset-management/implementation/customization/database">Alvao Database</a>.
  Unprofessional view customization can lead to application slowdown or even data corruption.
    </div>

</asp:Content>
