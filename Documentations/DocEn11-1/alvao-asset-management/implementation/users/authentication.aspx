<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User authentication in applications</h1>

    <p>When a user logs into the Alvao applications, their identity is authenticated in one of the following ways:</p>

    <ul>
        <li>
            <a href="../../../alvao-asset-management/implementation/users/authentication/aad/provisioning/object-attribute-mapping">Azure Active Directory (AAD) authentication</a> - user accounts are primarily stored in Azure Active Directory (cloud).
        </li>
        <li>
            <a href="../../../alvao-asset-management/implementation/users/authentication/ad">Active Directory (AD) authentication</a> - user accounts are primarily stored in Active Directory (on-premises).
        </li>
        <li>
            <a href="../../../alvao-asset-management/implementation/users/authentication/alvao">Alvao authentication</a> - user accounts are primarily stored in the Alvao database.  </li>
    </ul>

    <p>Each user is authenticated in only one way. AD authentication can be combined with Alvao authentication, i.e. some users can authenticate with AD and some with Alvao. AAD authentication cannot be combined, i.e. if AAD authentication is enabled, all users must authenticate with AAD.</p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If there are multiple users with the same username in Alvao, none of them will be able to log in. This applies, for example, to users with a username with a domain name (e.g. contoso.com\james) and without a domain name (james).<br />
    </div>


</asp:Content>
