<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Setting a response or resolution time</h1>
    <p>Each request should have an initial response date and a resolution date that the requester is informed of.  solvers should either resolve the request by the deadline or set a new resolution date and communicate it to the requester, preferably with a justification for the change. The resolution deadline may be set automatically by the SLA of the request, or it may be determined by the service solver using the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> - <strong>Deadline</strong> command.</p>


</asp:Content>
