<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Active Directory and Azure Active Directory</h1>
<p>Use this page to set the Active Directory server address and default domain to generate the secret key needed to import users from Azure Active Directory.</p>
<p>Options:</p>
	<ul>
		<li><strong>Active Directory</strong>
			<ul>
				<li><strong>Active Directory Server</strong> – the address of the LDAP server where users imported from Active Directory are authenticated when formally logging into Alvao applications. By default, &quot;LDAP://&quot; will automatically use the root AD controller on the network to authenticate users. If this value is blank, authentication via Active Directory is disabled.</li>
				    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        If you need to use LDAPS, you must specify AD server hostname and port: "LDAP://<b>&lt;AD server hostname&gt;:636</b>".
                    </div>
				<li><strong>Default Domain</strong> – Enter the name of the most common network domain in your organization. Users from this domain will be able to log in to Alvao applications with their username without the domain name. Users from other domains will need to provide their username including the domain.</li>
			</ul>
		</li>
		<li><strong>Azure Active Directory</strong>
			<ul>
				<li><strong>Generate new key</strong> – press if you want to generate new secret key needed to <a href="../../../../alvao-asset-management/implementation/users/authentication/aad">import users from Azure Active Directory</a>. The new secret key is immediately stored in the database and invalidates the previous one. </li>
			</ul>
		</li>
	</ul>

</asp:Content>
