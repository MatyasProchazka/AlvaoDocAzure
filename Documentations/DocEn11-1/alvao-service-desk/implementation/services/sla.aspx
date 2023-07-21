<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>SLA</h1>

    <p>SLA (Service Level Agreement) defines the quality with which a service is provided, using two parameters in particular:</p>
    <ul>
        <li>Time to first response</li>
        <li>Time to resolution of request</li>
    </ul>
    <p>SLA can be managed in <strong>ALVAO WebApp - Administration - Service Desk</strong> <strong>-</strong> <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/sla">SLA</a>. Then, in <strong>ALVAO WebApp - Administration - Service Desk - Services - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/sla">Edit - SLA</a>, assign the SLAs to the service Requesters.</p>

    <p>SLA also includes the following functionalities:</p>
    <ul>
        <li><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/sla/detail/notice">Email notification</a> of unresolved requests, approaching resolution deadlines, or inactivity of request solvers or requesters.</li>
        <li>Suspension of SLAs when <a href="../../requests/wait-for-response">waiting for a requester</a> or in certain <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">request statuses</a>.</li>
    </ul>

    <p>If you change the SLA parameters, the change is immediately reflected back in all existing requests with that SLA, including closed requests. If you want to apply the change only to newly created requests, first create a new SLA according to the new conditions, assign it to Requesters in the selected services, and remove the old SLA from the Requesters. It is advisable to add an expiry date to the name of the removed SLAs, e.g. "Z2 - medium (valid until 14.4.2019)".</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also define SLAs in <a href="../multi-languages">multiple languages</a>.
    </div>

</asp:Content>
