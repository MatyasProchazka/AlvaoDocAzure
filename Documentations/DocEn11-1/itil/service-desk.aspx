<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Service Desk Setup</h1>
    First of all, establish a single point of contact in your company, which will be managed by the ALVAO Service Desk. This central collection point will manage not only the requests that are made to IT from users, but also all internal IT tasks as well as tasks arising from systems that monitor business-critical technologies. Declare this in internal documents or directives such as:<ul>
        <li>Central telephone number for collecting requests and faults</li>
        <li>Main email address for reporting defects</li>
        <li>Web application for reporting defects and making requests</li>
    </ul>
    <img src="service-desk/service_desk_channels.png" />

    <h2>Example of an internal directive</h2>
    An internal directive on this issue should include the following information:
    <ol>
        <li>The IT user reports all their requests to the Service Desk.</li>
        <li>The Service Desk can be reached at:<ul>
            <li>Telephone: +xxx xxx xxx</li>
            <li>E-mail: service-desk@firma.cz</li>
            <li>Web: https://server/servicedesk </li>
        </ul>
        </li>
        <li>In the ALVAO WebApp, the user can continuously monitor information about the status of the request resolution.</li>
        <li>The user is informed about the resolution of the request by phone or email.</li>
        <li>Solvers follow the Resolution Procedures listed in the Service Desk application.</li>
        <li>Requests and errors outside the system are not measured and cannot be claimed.</li>
    </ol>

</asp:Content>
