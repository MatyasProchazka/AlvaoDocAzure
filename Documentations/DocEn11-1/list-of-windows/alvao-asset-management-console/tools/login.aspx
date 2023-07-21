<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Login</h1>
<p>In this window you can change the logged in user.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use Windows Integrated Authentication</strong> -
 Select this option if you want to log in to the application with the account you are currently logged in with on Windows. This option is only available if the AM Console is connected directly to the database.</li>
 <li><strong>- Use Azure Active Directory authentication</strong> -
 Select if you want to log into AM Console with an Azure Active Directory account. This option is only available if this authentication method is enabled in the application settings.</li>
 <li><strong>Use the specified username and password</strong> -
 Select if you want to enter login credentials. <ul>
   <li><strong>User name</strong> - enter a username. If you want to log in to a different <a href="../../alvao-webapp/administration/settings/activedirectory">
   default domain</a>, use the form domain\login or login@domain.</li>
   <li><strong>Password</strong> - enter the password.</li>
 </ul></li>
  <li><strong>Don't logout</strong> - if you enable this option, the next time you run the application, you will be logged in automatically. If you are idle for more than 7 days, the permanent login will expire.</li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 If your current password has expired, you will be prompted to change it (not valid for Active Directory users).
	</div>

</asp:Content>
