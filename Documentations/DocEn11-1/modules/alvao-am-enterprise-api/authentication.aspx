<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Authentication</h1>
    <p>You can use Azure Active Directory (AAD) authentication or basic authentication to access the REST API.</p>
    <p>Permissions for REST API operations are governed by the permissions of the accessing user in Alvao.</p>

    <h2>Azure Active Directory</h2>
    <p>First, in Alvao, set up <a href="../../alvao-asset-management/implementation/users/authentication/aad">user authentication using Azure Active Directory</a>.</p>

    <h3>Applications with a logged-in user (on behalf of)</h3>
    <p>In order to access the REST API from an interactive application to which users are logged in (e.g., a web or mobile app), those users must be imported into Alvao using <a href="https://doc.alvao.com/en/10.4/alvao_asset_management/implementation/users/ImportAzure.aspx">Import Azure</a> or SCIM. To authenticate access, do the following:</p>
    <ol>
        <li>Authenticate the user with the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/authentication-flows-app-scenarios#scenarios-and-supported-authentication-flows">appropriate token</a> to the AAD application you have assigned to Alvao.</li>
        <li>Pass the obtained token to the REST API in the HTTP header <i>Authorization: bearer &lt;token&gt;</i>.</li>
    </ol>

    <h3>Non-interactive applications</h3>
    <p>For access from applications or scripts that do not work with the logged-in user (e.g. integration script), do the following:</p>
    <ol>
        <li>In the AAD application associated with ALVAO <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-optional-claims#configuring-optional-claims">add a <i>idtype</i></a> declaration (claim) to the token.</li>
        <li>In AAD, register a new application for the application that will communicate with the REST API.</li>
        <li>Create a new user in <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">Alvao WebApp - Administration - Users</a>. Turn on the <i>Application Account</i> option, select the <i>AAD Application</i> type, and add the application details registered in the previous step. Then assign the necessary permissions in ALVAO to the account. </li>
        <li>Get a token for the application from step 2 using the <a href="https://docs.microsoft.com/en-us/azure/active-directory/develop/scenario-daemon-acquire-token?tabs=dotnetClient">Client credentials flow</a> (set as scope: <i>&lt;Client ID ALVAO application&gt;/.default</i>) and pass it to the REST API in the HTTP header <i>Authorization: bearer &lt;token&gt;</i>.</li>
    </ol>

    <h2>Basic authentication</h2>
    <p>Basic authentication is only for access from non-interactive applications.</p>
    <ol>
        <li>Create a new user in <a href="../../list-of-windows/alvao-webapp/administration/users/create-user">Alvao WebApp - Administration - Users</a>. Turn on the <i>Application Account</i> option and select the <i>Other Applications</i> type. Then <a href="../../list-of-windows/alvao-webapp/administration/users/detail/password">set the account password</a> and assign the required permissions in ALVAO. </li>
        <li>Pass the REST API username and password via the standard <a href="https://datatracker.ietf.org/doc/html/rfc7617">basic authentication</a> header.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        We recommend using the more secure method of authentication via AAD.
    </div>
</asp:Content>
