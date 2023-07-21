<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Installation settings</h1>
	
	<ul>
 <li><strong>SMTP Server</strong>
 <br />If you don't use notifications, you can skip the SMTP server settings.  <ul>
 <li><strong>SMTP server for sending emails and notifications</strong> - enter the name of the SMTP server. For example:
 smtp.company.com:25.</li>
 <li><strong>Use SSL</strong> - provides encrypted communication.</li>
 <li><strong>Login to SMTP server</strong>
 <ul>
 <li><strong>Windows Integrated Authentication</strong>
 - Option to use integrated Windows authentication.</li>
 <li><strong>User</strong> - option to enter a username.</li>
 <li><strong>Password</strong> - option to enter a user password.</li>
 </ul>
 </li>
 <li><strong>Message Sender Address</strong> - option to enter the sender's email address. E.g.: ALVAO &lt;alvao@domain.com&gt;.
     See also <em>Administration – Settings – </em><a href="../../alvao-webapp/administration/settings/messaging">Sending messages</a><em> – Message sender</em>.</li>
 <li><strong>E-mail address to test connection with SMTP server</strong> - option to enter an e-mail address to test connection with SMTP server. For example: info@company.com.</li>
  </ul>
 </li>
 <li><strong>Active Directory Authentication</strong><ul>
 <li><strong>Active Directory server address for user authentication</strong> - Option to specify the Active Directory server address for user authentication. For example: LDAP://domainserver. If you want to use the default AD server, enter only "LDAP://".
	<div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you need to use LDAPS, you must add AD server hostname and port. For example: "LDAP://domainserver<b>:636</b>".
    </div>
 </li>
 <li><strong>Default login domain</strong> -
 Enter the name of the default login domain. For example:
 company.local.</li>
  </ul>
 </li>
	</ul>
</asp:Content>
