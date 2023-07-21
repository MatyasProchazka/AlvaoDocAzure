<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Request templates</h1>
    <p>
        A requests template serves as a template for the members of a service's solution team to easily create frequently recurring requests in that service. A member of the service's resolution team can select a template in the <a href="../../list-of-windows/alvao-webapp/requests/new-request">New request</a> form using the <strong>Use Template</strong> command to populate the form with values according to that template.
    </p>
    <p>
        Service team members can manage the templates for a given service by using a command in the ALVAO WebApp main menu - <a href="../../list-of-windows/alvao-webapp/ticket-templates">Request templates</a>.
    </p>
    <p>
        If you want certain values to be filled in immediately when the new request form is displayed, assign a default request template to the service, see <strong>Administration - Service Desk - Services - Edit</strong>- <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">New Request Form</a> - <strong>Default request template</strong>.
    </p>
    <p>
        You can also use the templates to automatically create new requests periodically, see <a href="../../list-of-windows/alvao-webapp/ticket-templates">Request Templates</a> - <strong>Schedule</strong>.
    </p>

    <h2>Permissions</h2>

    <table>
        <thead>
            <tr>
                <th>Permissions</th>
                <th>Main solver</th>
                <th>Manager</th>
                <th>Solver</th>
                <th>Applicant</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Create and edit</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>No</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Use</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>No</td>
            </tr>
            <tr>
                <td>Plan</td>
                <td>Yes</td>
                <td>Yes</td>
                <td>No</td>
                <td>No</td>
            </tr>
        </tbody>
    </table>

</asp:Content>
