<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Processes</h1>
    <p>Process defines the request lifecycle, i.e. a sequence of request states, such as &quot;New&quot;, &quot;Solution&quot;, &quot;Resolved&quot;, etc.</p>
    <p>Processes can be edited in <strong>WebApp - Administration - Service Desk</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail">Processes</a>.</p>
    <p>
        You can assign a process to one or more <a href="service-tree">services</a>.
    </p>
    <h2 id="request_object_links">Links between requests and objects</h2>
    <p>If you want to use <a href="../../request-object-links">request object links</a> in a process, add <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/request-items">request items</a> <strong>Objects</strong>.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Add <a href="../../../itil/incident-management">Incident Management</a>, <a href="../../../alvao-asset-management/implementation/object-templates">properties</a> <strong>Incident Default Service</strong> and <strong>Incident Default SLA</strong> to the object templates that can be linked to requests in the process. Then, when a new request is created from the object, the <a href="../../../list-of-windows/alvao-webapp/requests/new-request">New request</a> form automatically sets the service and SLA corresponding to the values of these properties in the object.
    </div>

</asp:Content>
