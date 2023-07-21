<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Password</h1>
  In this Window you can change the password of the currently logged in user.

<p>Options:</p>
	<ul>
 <li><strong>Enter a new password</strong> - enter the password you will use to log in to the entire Alvao system.</li>
 <li><strong>Re-type your password to validate</strong> -
 re-enter the same password (typo protection).</li>
</ul>

  <div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	Only users who log in via the form (not in Active Directory) can change their password this way.
</div>
<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	The new password must match the policy set in WebApp Administration - Settings - <a href="../../alvao-webapp/administration/settings/password-policy">Password Policies</a>.
</div>
</asp:Content>
