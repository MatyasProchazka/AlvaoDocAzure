<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Moving a request to another service</h1>

    <p>It may happen that a request has been submitted to the wrong service and needs to be moved elsewhere. In this case, use the <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> - <strong>Move to another service</strong> command.</p>
    <p>If a request has <a href="../implementation/services/sla">SLAs</a> that the Requester cannot use in the target service, the request's SLA is automatically changed to the SLA with the closest quality index available to the Requester, or the SLA corresponding to the current <a href="../implementation/services/impact-urgency">impact and urgency</a> values. As a consequence of the SLA change, the deadline for resolving the request may also change automatically.</p>


</asp:Content>
