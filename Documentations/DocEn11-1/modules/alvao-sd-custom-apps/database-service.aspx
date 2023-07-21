<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom functions for service selection</h1>
    <p>When creating a request and possibly moving the request to another service, the service to which the request will be created/moved is selected.</p>
    <p>
        It applies to the following forms:<ul>
            <li><a href="../../list-of-windows/alvao-webapp/requests/new-request">New request</a></li>
            <li><a href="../../list-of-windows/alvao-webapp/requests/request/move-to-another-service">Move to another service</a></li>
        </ul>
    </p>

    <h2>System Behaviour</h2>
    <p>The <em>Service</em> field displays the localized service name including the path in the tree.</p>

    <p>When you expand the list, the box shows the 20 services in which the main solver last created requests. Searching the list displays all services in which the current requester has an SLA, regardless of other logged-in user roles.</p>

    <p>Deleted services, folders, and proxies that have the same name and default request template as the service being represented are not offered.</p>

    <p>The text entered in the field is searched for in the service name, including the path in the tree, and in keywords.</p>

    <p>Values are sorted by path in the tree.</p>


    <h2>Custom functions</h2>
    <p>If you wish to change the way you search and sort values in the service field, add the <em translate="no">spHdSectionForRequesterSearch_Custom</em> procedure to the database.</p>

    <p>If the <em translate="no">spHdSectionForRequesterSearch_Custom</em> procedure is defined in the database, the <em translate="no">spHdSectionForRequesterSearch</em> procedure is used instead of the default <em translate="no">spHdSectionForRequesterSearch</em> procedure.</p>

    <p>The <em translate="no">spHdSectionForRequesterSearch_Custom</em> procedure has the same inputs and outputs as the existing <em translate="no">spHdSectionForRequesterSearch</em> procedure.</p>


</asp:Content>
