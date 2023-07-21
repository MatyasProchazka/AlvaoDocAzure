<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Active Directory authentication</h1>
    <p>Users who have an Active Directory (AD) account can log in to Alvao applications using:</p>
    <ul>
        <li><strong>Windows Integrated Authentication</strong> - the user account under which the user is currently logged into Windows on that computer is used for authentication in Alvao. The user don&#39;t need to enter any login credentials into Alvao applications.</li>
        <li><strong>Form authentication</strong> - when running Alvao applications, the user enters their username and password stored in AD.</li>
    </ul>

    <h2>Import users from Active Directory</h2>
    <p>In order for a user to be authenticated in Alvao using AD, their account must first be imported from AD into Alvao using the <a href="../../../../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a> utility. We recommend to import users into Alvao on a regular basis, for example, by scheduling a task on the server to run once every day.</p>
    <p>When first imported, Alvao will create all users and groups according to the specified LDAP path. The next time it is imported, only new users and groups are created, and the information about existing users and groups is updated. Users and groups removed from AD are not automatically removed from Alvao. If you import users from the entire AD, some auxiliary user accounts such as IUSR_..., IWAM_... will also be imported into Alvao. It is recommended to hide these auxiliary accounts with the <strong>Hide</strong> command. If you were to remove these users with <strong>Remove</strong>, they would be re-created the next time they are imported.</p>

    <h2>Manual import</h2>
    <p>To import users beyond schedule, manually run the scheduled task created on the server or run the <a href="../../../../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a> utility directly from the command line.</p>

    <h2>Settings</h2>
    <p>On the <strong>WebApp - Administration - Settings - </strong><a href="../../../../list-of-windows/alvao-webapp/administration/settings/activedirectory">Active Directory</a> page, set the AD authentication parameters.</p>

</asp:Content>
