<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Links between requests and objects</h1>
    <p>You can bind requests in <a href="../alvao-service-desk">ALVAO Service Desk</a> to objects from <a href="../alvao-asset-management">ALVAO Asset Management</a>. For example, for a request representing an <a href="../itil/identity-management">incident</a>, you can bind objects representing the devices (CIs) involved in the incident. You can bind multiple objects to a single request, and vice versa.</p>
    <p>You can view and edit the list of objects that are linked to a specific request in <strong>WebApp - Requests</strong> - <a href="../list-of-windows/alvao-webapp/requests/request">Request</a> - <strong>Objects</strong> tab. Similarly, for a list of requests that are tied to a specific object, see <strong>WebApp - Objects - Object</strong> - <a href="../list-of-windows/alvao-webapp/objects/object/related-tickets">Related Requests</a> tab.</p>
    <p>So in <strong>WebApp - User Menu - My Assets</strong> - <a href="../list-of-windows/alvao-webapp/search/persons/person/my-asset-object">Assets</a> you can directly create a new related request to the selected object.&nbsp;</p>
    <p>In <strong>AM Console</strong>, requests linked to the selected object can be found in the <a href="../list-of-windows/alvao-asset-management-console/tab-view/diary">object log</a>. To edit the links, you can use the <strong>New Request</strong>, <strong>Add to Request</strong>, and <strong>Related Requests</strong> commands in the following places:</p>
    <ul>
        <li><a href="../list-of-windows/alvao-asset-management-console/object-tree">object-tree</a></li>
        <li>Tab <a href="../list-of-windows/alvao-asset-management-console/tab-view/objects">Objects</a></li>
        <li><a href="../list-of-windows/alvao-asset-management-console/view/list-of-objects">Object Lists</a></li>
        <li><a href="../list-of-windows/alvao-asset-management-console/view/search-results">Objects found</a></li>
    </ul>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you don't see these functions in your application, ask your Alvao administrator to <a href="implementation/services/processes#request_object_links">enable the links between objects and requests</a>.
    </div>

</asp:Content>
