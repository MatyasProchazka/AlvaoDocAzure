<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User Groups</h1>

    <p>
        See <a href="../../../alvao-asset-management/implementation/users/groups">User Groups</a> in the ALVAO Asset Management book.
    </p>

    <p>For the recommended structure of applicant groups, see <a href="my-team">My Team</a>.</p>

    <h2>System Groups for ALVAO Service Desk</h2>

    <table>
        <thead>
            <tr>
                <th class="auto-style1">Group</th>
                <th class="auto-style1">Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Team Managers</td>
                <td>Users in this group can manage their subordinates on the <a href="../../../list-of-windows/alvao-webapp/my-team">My Team</a> page.</td>
            </tr>
            <tr>
                <td>People reporting time</td>
                <td>Users in this group can report their time to requests.</td>
            </tr>
            <tr>
                <td>Service Managers</td>
                <td>Users in this group can manage services, SLAs, processes, and uptime.</td>
            </tr>
            <tr>
                <td>Users with permission to create requests for other users</td>
                <td>Users in this group can create requests for other users from the same organization.  They can fill in the <em>Requested for</em> field on the request creation form.</td>
            </tr>
            <tr>
                <td>Knowledge base root administrators</td>
                <td>Users in this group can manage articles in the knowledge base that are not included in any service. To do so, they do not need to be members of the <a href="../../../alvao-service-desk/implementation/services/service-roles">management team</a> of any service.</td>
            </tr>
        </tbody>
    </table>

</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>
