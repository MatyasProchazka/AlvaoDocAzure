<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User Groups</h1>

    <p>Each group can contain both users and other groups. Users and groups can be members of multiple groups at the same time. User groups are mainly used for bulk management of user permissions, in which permissions are granted to the entire group at once (rather than to individual users individually).</p>
    <p>
        You can manage user groups in <strong>WebApp - Administration - Groups</strong>. You can manually edit the list using the normal <strong>New</strong> commands,
 <strong>Edit</strong> and <strong>Delete</strong>.
	To learn more about assigning permissions, see <a href="../../objects-and-properties/object-access-rights">Object Security</a>.
    </p>
    <p>When <a href="../users#import_ad">loading users from Active Directory (AD)</a>, user groups are also loaded from AD, so you can use AD-defined groups to manage permissions in Alvao.</p>

    <h2>Common System Groups for Alvao</h2>

    <table>
        <thead>
            <tr>
                <th style="width: 30%">Group</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Administrators</td>
                <td>Users in this group have access to the Alvao system administration.</td>
            </tr>
            <tr>
                <td>Configuration administrators</td>
                <td>Users in this group have access to the following agendas in Alvao system administration:<ul>
                    <li>Users (except for changing membership in the <i>Administrators</i> group)</li>
                    <li>Groups (except for changing membership in the <i>Administrators</i> group)</li>
                    <li>Asset Management (all agendas)</li>
                    <li>Service Desk (all agendas)</li>
                    <li>Custom fields</li>
                    <li>Settings (WebApp home page settings and Settings Check only)</li>
                    <li>License (except changing activation key)</li>
                </ul>
                    <p>They can still manage all shared views in the app.</p>
                </td>
            </tr>
            <tr>
                <td>Contact administrators</td>
                <td>Users in this group can manage people (except for changing group memberships) and organizations in ALVAO WebApp - Manage.</td>
            </tr>
            <tr>
                <td>Contact readers</td>
                <td>Users in this group can search for all users and organizations.
                    <p>They can also see the values of users' and organizations' custom fields.</p>
                </td>
            </tr>
            <tr>
                <td>Everyone</td>
                <td>All users. This group contains all registered users and Guest users.</td>
            </tr>
            <tr>
                <td>Registered users</td>
                <td>All registered users. This group contains all users except the Host user.</td>
            </tr>
        </tbody>
    </table>

    <h2>System Groups for ALVAO Asset Management</h2>

    <table>
        <thead>
            <tr>
                <th style="width: 30%">Group</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Asset Management administrators</td>
                <td>Users in this group have unrestricted access to all parts of the system, managing system dials and the system recycle bin.</td>
            </tr>
            <tr>
                <td>Asset Management readers</td>
                <td>Users in this group have read-level access to IT device records, software licenses, software auditing, and detections.</td>
            </tr>
            <tr>
                <td>Links readers</td>
                <td>Users in this group can see all object links and render them in MS Visio.</td>
            </tr>
            <tr>
                <td>Object property readers</td>
                <td>Users in this group can see object properties and their values.</td>
            </tr>

            <tr>
                <td>Software and hardware detections managers</td>
                <td>Users in this group can manage software and hardware detections on computers and manage a library of software products.</td>
            </tr>
            <tr>
                <td>Asset managers</td>
                <td>Users in this group have unrestricted access to IT device records. The asset manager can change the object kind only for computers and only to a different type of computer.</td>
            </tr>
            <tr>
                <td>PC software managers</td>
                <td>Users in this group may be notified of missing software licenses.</td>
            </tr>
            <tr>
                <td>Software licenses managers</td>
                <td>Users in this group have unrestricted access to software license registry and software auditing by default. They manage software products. If licenses for multiple organizations are recorded separately, then permissions are not tied to membership in this group, but to the permissions set in <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/software-licenses-security">software license security</a>.</td>
            </tr>
            <tr>
                <td>Software profiles managers</td>
                <td>Users in this group can create and edit software profiles of computers for ALVAO Asset Management.</td>
            </tr>
            <tr>
                <td>SQL Query administrators</td>
                <td>Users in this group can edit and run <a href="../../../list-of-windows/alvao-asset-management-console/tools/database">SQL queries</a> in the <span translate="no">ALVAO Asset Management Console</span>.</td>
            </tr>
            <tr>
                <td>Links managers</td>
                <td>Users in this group can manage links for all objects regardless of object permissions.</td>
            </tr>
            <tr>
                <td>Object property administrators</td>
                <td>Users in this group can edit the values of object properties.</td>
            </tr>
            <tr>
                <td>Accountant</td>
                <td>Users in this group can write inventory numbers to the IT device records. They manage the IT equipment inventory module.</td>
            </tr>
        </tbody>
    </table>

</asp:Content>
