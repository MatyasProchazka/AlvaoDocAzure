<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Change password</h1>

<p>The window allows you to set a password for the selected user to log in to Alvao applications.</p>

<p>Options:</p>
	<ul>
 <li><strong>New password</strong> - enter a new password.</li>
 <li><strong>Re-enter new password</strong> - enter the new password again to check.</li>
	</ul>

<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	The new password must match the policy set in <em>ALVAO WebApp - Administration - Settings</em>
	- <a href="../../settings/password-policy">Password Policies</a>.
</div>

<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div><br/>
	Only users who were created in Alvao can change their password.  Users who were loaded into Alvao from Active Directory (AD) do not have their password stored in Alvao.  They enter their password from AD during form authentication.</div>

</asp:Content>
