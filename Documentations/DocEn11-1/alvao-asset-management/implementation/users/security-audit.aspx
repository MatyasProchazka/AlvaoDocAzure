<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Audit changes to user permissions</h1>

    <p>The product includes three reports that are used to audit changes in user permissions.</p>

    <table class="wide">
        <thead>
            <tr>
                <th>Report name</th>
                <th>RDL file name</th>
                <th>Description</th>
                <th>Name of the database view</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Object Tree - Permission Settings Log</td>
                <td>Object Tree - Security Settings Log csy.rdl<br />
                    Object Tree - Security Settings Log enu.rdl</td>
                <td>Provides a list of permission changes in the object tree.</td>
                <td>Query.NodeRightLog</td>
            </tr>
            <tr>
                <td>Group Membership Settings Log</td>
                <td>Roles Membership Log csy.rdl<br />
                    Roles Membership Log enu.rdl</td>
                <td>Provides a list of changes to user and group memberships in groups.</td>
                <td>Query.RoleMembershipLog</td>
            </tr>
            <tr>
                <td>User Login Log</td>
                <td>User Logon Log csy.rdl<br />
                    User Logon Log enu.rdl</td>
                <td>Provides a list of individual user logins/logouts to/from the Asset Management Console.</td>
                <td>Query.UserLogonLog</td>
            </tr>
        </tbody>
    </table>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can use the database view names in the AM Console - Tools - Database - <a href="../../../list-of-windows/alvao-asset-management-console/tools/database/sql-query">SQL Query</a> window. Here you can view the same data as in the report without using Reporting Services.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Reports are in Czech and English only.
    </div>

    <h2>Installation</h2>
    RDL files can be found on <a href="https://www.alvao.com/download">www.alvao.com/download</a> under Asset Management in the SecurityAuditReports.zip archive.<br />
    For a description of how to install reports, see <a href="../maintenance-reports/installation">Installing Reports in Microsoft SQL Server Reporting Services</a>.

    <h2>Object Tree - Permission Settings Log</h2>
    The report displays a list of changes to user permissions in the object tree for the selected time period.<br />
    In addition to the changes made, the report also lists the date and time the change was made and the name of the user who made the change.
    <h3>Report parameters</h3>
    <ul>
        <li><strong>From</strong> - enter the date from which the records in the report should be displayed.</li>
        <li><strong>To</strong> - enter the date until which the records should be displayed.</li>
        <li><strong>User</strong> - select the users to be displayed in the report from the menu.</li>
        <li><strong>Group</strong> - select the groups to be displayed in the report from the menu.</li>
        <li><strong>Edit</strong> - from the menu, select the authors of the permission changes to be displayed in the report.</li>
    </ul>

    <h2>Group Membership Settings</h2>
    The report displays a list of changes to user and group memberships for the selected time period.<br />
    In addition to the changes made, the report also lists the date and time the change was made and the name of the user who made the change.
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When a user or group is deleted, the membership change is not recorded. Only if a group that was a member of other groups is removed, the log records the removal of the group from those groups.
    </div>

    <h3>Report parameters</h3>
    <ul>
        <li><strong>From</strong> - enter the date from which the records in the report should be displayed.</li>
        <li><strong>To</strong> - enter the date until which the records should be displayed.</li>
        <li><strong>Member</strong> - select from the menu the users and groups to be displayed in the report.</li>
        <li><strong>Group</strong> - select the member groups to display in the report from the menu.</li>
        <li><strong>Edit</strong> - select the authors of the membership changes to be displayed in the report from the menu.</li>
    </ul>

    <h2>User Login Protocol</h2>
    The report displays a list of user logins and logouts to/from the AM Console within the selected time period.<br />
    For each record, the name of the computer on which the user logged into the application is also listed.
    <h3>Report parameters</h3>
    <ul>
        <li><strong>From</strong> - enter the date from which logins should be displayed in the report.</li>
        <li><strong>To</strong> - enter the date until which logins should be displayed in the report.</li>
        <li><strong>User</strong> - select from the menu the users to be displayed in the report.</li>
        <li><strong>Applications</strong> - select from the menu the applications to be displayed in the report.</li>
        <li><strong>Computer</strong> - select the computers to be displayed in the report from the menu.</li>
        <li><strong>Administrators Only</strong> - enable this option if only users who were members of the <i>Asset Management administrators</i> group at the time they logged into the AM Console should appear in the report.</li>
    </ul>




</asp:Content>
