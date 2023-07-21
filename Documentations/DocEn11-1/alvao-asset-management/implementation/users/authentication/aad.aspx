<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Azure Active Directory authentication</h1>

    <p>Only users from a single Azure Active Directory (AAD) tenant and external users (guests) of that tenant can log in to Alvao. If you enable AAD authentication in Alvao, no other users outside of AAD will be able to log in to Alvao.</p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If you are switching from <a href="../../../../alvao-asset-management/implementation/users/authentication/ad">Active Directory (AD)</a> authentication to AAD authentication, pay attention to the options for limiting the set of users and groups imported from AAD that differ from AD, see <em>Scope</em> below. Before setting up user import from AAD, first disable the existing user import from AD (<a href="../../../../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a>).<br />
    </div>

    <h2>Import users from AAD (user provisioning)</h2>

    <ol>
        <li>In the <a href="https://portal.azure.com/#home">Microsoft Azure portal</a>, navigate to <strong>Azure Active Directory - Enterprise Applications</strong>, click <strong>New application</strong>, find <strong>ALVAO</strong> application in the Azure AD Gallery and click <strong>Create</strong>.
        </li>
        <li>In the application details, go to the <strong>Provisioning</strong> tab, click <strong>Get started</strong> and set the following provisioning parameters:
        <ol>
            <li>
                <strong>Provisioning mode</strong>: Automatic </li>
            <li>In the <strong>Admin Credentials</strong> section:
                <br />
                <strong>Tenant URL</strong>: <span class="console">{address ALVAO REST API}/scim </span>
                <br />
                E.g.: <em>https://app.contoso.com/alvaorestapi/scim</em>
                <br />
                <strong>Secret Token</strong>: In <strong>WebApp – Administration – Settings - </strong><a href="../../../../list-of-windows/alvao-webapp/administration/settings/activedirectory">Active Directory and Azure Active Directory</a> generate new client secret key and copy it to this field.
                <p>Use the <strong>Test connection</strong> command to verify that everything is set up correctly.</p>

                <img src="text_connection.png" />
            </li>
        </ol></li>
        <li>In the <strong>Settings</strong> section:<br />
            Optionally, fill in the email address to which notifications will be sent in case any errors occur.<br />
            Under <strong>Scope</strong>, select if you want to sync all users from AAD or only selected users.
            <br />
            <img src="settings_scope.png" />
        </li>
        <li>Set <strong>Provisioning status</strong> to <em>On</em>.
        </li>
        <li>If you selected in <em>Scope</em> that you want to synchronize only selected users and groups, go to the <strong>Users and Groups</strong> tab and assign the users and groups you want to synchronize with Alvao to the application. 
            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                Direct members (users and groups) of groups assigned to the application are always imported into Alvao as well.   However, members of these direct members are no longer automatically imported.   For more information, see <a href="https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/how-provisioning-works#assignment-based-scoping">Understand how Application Provisioning in Azure Active Directory | Microsoft Docs</a>.<br />
            </div>
        </li>
    </ol>
    <p>
        For more information on the various options in the setup, see <a href="https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/configure-automatic-user-provisioning-portal">User provisioning management for enterprise apps in Azure Active Directory | Microsoft Docs</a>.
    </p>


    <h2>Setting up AAD authentication</h2>
    <ol>
        <li>In the <a href="https://portal.azure.com/#home">Microsoft Azure portal</a>, navigate to <strong>Azure Active Directory - App registrations</strong> and select the first created <strong>ALVAO</strong> app.
        </li>
        <li>On the <strong>Overview</strong> page, set <strong>Redirect URIs</strong> to <em>https://&lt;WebApp&gt;/Account/LoginMicrosoftEndpoint</em>.
        </li>
        <li>On the <strong>Authentication</strong> page, check <strong>Access tokens (used for implicit flows)</strong> and save the settings.</li>
        <li>On the <strong>API permissions</strong> page:
            <ol>
                <li>Click <strong>Add a permission</strong>, go to APIs my organization uses tab and select the first created <strong>ALVAO</strong> app.</li>
                <li>Check <strong>user_impersonation</strong> permission and click <strong>Add</strong> permissions.</li>
                <li><strong>Grant admin consent</strong> for previously added permission</li>
                <li>Click <strong>Add a permission</strong>, select <strong>Microsoft Graph</strong>, select <strong>Delegated permissions</strong>, check <strong>Presence.Read.All</strong> and click <strong>Add</strong> permissions. This allows to enable Show users presence option.</li>
            </ol>
        </li>
        <li>Make a note of the values from the application registration that you will need later:
            <ol>
                <li>
                    <strong>Client ID</strong>
                </li>
                <li>
                    <strong>Directory (tenant) ID</strong>
                </li>
                <li>
                    <strong>Client credentials - Client secrets - New client secret - Client Secret</strong>
                </li>
            </ol>
        </li>
        <li>In the following SQL script, insert the <em>Directory (tenant) ID</em> and <em>Client ID</em> values obtained above and run the script on your Alvao database.<br />
            <span class="console">INSERT INTO <a href="../../../../alvao-asset-management/implementation/customization/database#U_dbo.AzureAdTenant">AzureAdTenant</a> (AzureTenantId) VALUES (N'<em>&lt;Directory (tenant) ID&gt;</em>')
                <br />
                EXEC spUpdateInsertProperty N'AzureApplicationId', N'<em>&lt;Client ID&gt;</em>'
            </span>
        </li>
        <li>On the server in <strong>IIS Manager</strong>:
            <ol>
                <li>In <strong>Alvao</strong> (WebApp), change the authentication method to <em>anonymous</em> and <em>forms</em>.<br />
                    In the forms login details, specify
          <br />
                    <em>~/Account/LoginMicrosoft</em> address.
                </li>
                <li>In <strong>AssetWebService</strong> (AM WS), set the authentication method to <em>anonymous</em>.
                </li>
                <li>In <strong>AlvaoRestApi</strong>, set the authentication method to <em>anonymous</em>.
                </li>
                <li>In <strong>AlvaoCustomAppsWebService</strong> (CA WS), set the authentication method to <em>anonymous</em>.</li>
            </ol>
        </li>
        <li>In the following configuration files, write the <strong>AAD_ClientSecret</strong> setting to the <em>Client Secret</em> value obtained above:
            <ol>
                <li>WebApp – web.config file</li>
                <li>AssetWebService – web.config</li>
                <li>AlvaoService – appsettings.json</li>
                <li>AlvaoRestApi – web.config</li>
                <li>AlvaoCustomAppsWebService – web.config</li>
            </ol>
        </li>
    </ol>
    <p>For more information on registering apps in AAD, see <a href="https://docs.microsoft.com/en-us/graph/auth-register-app-v2">Register your app with the Azure AD v2.0 endpoint - Microsoft Graph | Microsoft Docs</a>.</p>

    <h2>Import users into the object tree in ALVAO Asset Management</h2>
    <p>If <em>ALVAO Asset Management</em> is activated, users are also automatically imported into the <a href="../../../../alvao-asset-management/objects-and-properties">object tree</a> in the <em>Read Objects from Active Directory</em> folder, from where they are moved to the correct location in the tree. The same set of users is imported into the object tree as in <em>WebApp - Administration - </em><a href="../../../../list-of-windows/alvao-webapp/administration/users">Users</a>.</p>

    <p>When removing a user from the AAD, the user is automatically blocked in the object tree (see the <em>Account is blocked</em> property) but not removed. Once in a while, we recommend checking the tree for blocked users and removing them if necessary.</p>

    <p>If you activate <em>Asset Management</em> after the fact, when you have already imported users into <em>Report</em>, the existing users are not automatically created in the tree. You can additionally create them with a prepared <a href="../../../../alvao-asset-management/implementation/users/aad-provisioning-scim/am-import-users.sql">SQL script</a> that creates all users from <em>Report</em> that do not already exist in the object tree. The property values are set according to the default attribute mapping. Existing users will remain unchanged.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        You can also manually create a small number of users in the object tree and set their property values according to the information in the <em>Message</em> (especially the <em>User Name</em> property, which is key).
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        You can disable the import of users into the object tree with this SQL script if needed:<br />
    </div>
    <span class="console">EXEC spUpdateInsertProperty 'AM.Scim.ImportUsers', NULL, 0;</span>
    <p>After executing the script, we recommend recycling the Alvao application pool on the IIS server so that the import shutdown takes effect immediately.</p>
    <p>You can turn the import back on with the script:</p>
    <span class="console">EXEC spUpdateInsertProperty 'AM.Scim.ImportUsers', NULL, 1;</span>


    <h2>SCIM</h2>
    <p>Importing (provisioning) users from AAD to Alvao uses the <a href="https://docs.microsoft.com/en-us/azure/active-directory/app-provisioning/user-provisioning">SCIM</a> interface, through which Alvao automatically:</p>
    <ul>
        <li>Create, edit and delete users in <em>WebApp - Administration - </em><a href="../../../../list-of-windows/alvao-webapp/administration/users">Users</a></li>
        <li>Create, edit, and delete groups in <em>WebApp - Administration - </em><a href="../../../../list-of-windows/alvao-webapp/administration/groups">Groups</a></li>
        <li>Updates user and group memberships in groups</li>
        <li>Created and edited by users in the <a href="../../../../alvao-asset-management/objects-and-properties">object tree</a> in <em>ALVAO Asset Management</em></li>
    </ul>
    <p>AAD sends information about changes to Alvao via the SCIM interface on an ongoing basis. Most changes are reflected in Alvao within 40 minutes, some, such as locking out a user, even sooner. This interval is entirely under the control of AAD and cannot be changed.</p>
    <p>The SCIM interface is part of the ALVAO REST API, which must be installed on a server accessible from the Internet (or Azure).</p>

</asp:Content>
