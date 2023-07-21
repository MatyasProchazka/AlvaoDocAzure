<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Inactive user accounts</h1>

    <p>There are three types of user account restrictions in Alvao.</p>
    <p>
        The following restrictions are managed in the ALVAO WebApp: in <strong>Management</strong> - <strong>Users</strong>, view user accounts.<br />
        Select a user account and choose <strong>Delete</strong> or <strong>Hide Accounts</strong> from the local menu.<br />
        Or select <strong>Edit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/users/create-user">Properties</a> from the local menu and check <strong>Account is disabled</strong> or <strong>Hide in menus</strong>.
    </p>

    <h2>Disabled account</h2>
    <p>
        A disabled user is expected to be undisabled soon. Therefore, the disabled or hidden users do not draw <a href="sd-licenses">licenses</a>.<br />
        Account disabling can also be set directly in administration, or set when <a href="../../../alvao-asset-management/implementation/users/authentication/ad">importing from AD</a> (where the account is disabled after three failed logins, for example).
    </p>

    <p>A user whose account has been disabled is temporarily unable to log in to Alvao, does not appear in menus and stops receiving notifications. Unlike a removed account, a disabled account is still "active" in the Alvao system and the user will return to work "without interruption" once undisabled.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If an employee leaves, we recommend removing the account instead of disabling it.
    </div>

    <h2>Removed account</h2>
    <p>If necessary, the account can be restored, but restoration is not expected. Therefore, a removed user does not <a href="sd-licenses">draw a license</a>.</p>

    <p>The user has no access to the system, does not appear in menus and does not receive notifications, and does not "exist" in the Alvao system.</p>
    <p>To restore, view deleted accounts in the user accounts using the <strong>View Deleted</strong> command. For the selected deleted accounts, then select <strong>Restore Deleted</strong> from the local menu.</p>

    <h2>Account hidden in menus</h2>
    <p>The account is not assumed to be used by the actual user, but at the same time it cannot be deleted. Typically, it is a system account in Active Directory that would be recreated on each import.</p>

    <p>The hidden account does not show up in menus or receive notifications, and does not "exist" in the Alvao system.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the account is displayed in the menus, you can assign its user to a group, ask for approval or assign a request for resolution, for example.
    </div>

</asp:Content>