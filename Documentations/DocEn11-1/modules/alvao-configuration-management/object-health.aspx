<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Object health</h1>
    <p>The health of an object indicates that the device is currently fully functional or partially or completely non-functional. The health of an object is determined based on the existence of <a href="../../alvao-service-desk/requests">requests</a> linked to the object. Therefore, the <a href="../../alvao-service-desk">ALVAO Service Desk</a> product is also necessary for its evaluation.</p>
    <p>Only open requests that represent incidents or changes, i.e. requests in services with <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process/create-process">processes that affect the health of an object</a> affect the health of the object. The health is evaluated only on objects whose type is listed in the <b>WebApp - Administration - Service Desk - Services - Edit</b> - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/objects">Objects</a> - <b>Show on objects of type</b>.</p>

    <p>Health can take on the following statuses:</p>

    <table>
        <thead>
            <tr>
                <th><i>Icon</i></th>
                <th><em>Description</em></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <img src="crit_incident.png" /></td>
                <td>The device is inoperable. The facility has at least one open critical incident, i.e. the SLA of the incident has a <a href="../../list-of-windows/alvao-webapp/administration/service-desk/sla/create-sla">quality index</a> of 5 or higher.</td>
            </tr>
            <tr>
                <td>
                    <img src="linked_incident.png" align="middle" /></td>
                <td>The device may not be fully functional. Another device on which the health of that device depends has at least one open serious incident. The dependency on another device is due to the existence of a directional link between objects with the <em>WebApp - Administration - Asset Management - Link Types between Objects</em> option enabled - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/link-types/new">New link type</a> -<em> The health of the end object is affected by the health of the starting object.</em></td>
            </tr>
            <tr>
                <td>
                    <img src="incident.png" /></td>
                <td>The device may not be fully functional. The facility has at least one open minor incident, that is, the SLA of the incident has a quality index less than 5.</td>
            </tr>
            <tr>
                <td>
                    <img src="change.png" /></td>
                <td>The device may not be fully functional. The facility has at least one open change.</td>
            </tr>
            <tr>
                <td>
                    <img src="ok.png" /></td>
                <td>The object is functional.</td>
            </tr>
        </tbody>
    </table>
    <p>Individual statuses are evaluated in the order they are listed in the table, and the first status whose conditions are met is displayed as the health of the object. The calculation does not take into account the <a href="../../alvao-service-desk/implementation/services/service-roles">permissions</a> of the user in the requests. Thus, the user sees health evaluated against all relevant requirements, including those that does not have permission to see.</p>

    <p>Object health information is displayed in:</p>
    <ul>
        <li>WebApp - Objects - <a href="../../list-of-windows/alvao-webapp/objects/object">Object</a>
            <ul>
                <li><a href="../../list-of-windows/alvao-webapp/objects/object/links-diagram">Diagram of links</a></li>
            </ul>
        </li>
        <li>WebApp - Request
            <ul>
                <li><a href="../../list-of-windows/alvao-webapp/requests/request">Request</a> - Object tab</li>
                <li><a href="../../list-of-windows/alvao-webapp/requests/new-request">New request</a></li>
            </ul>
        </li>
    </ul>
</asp:Content>
