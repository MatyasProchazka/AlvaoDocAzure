<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Password</h1>
<p>In this window you can change the password of the currently logged in user. It is followed by <a href="password-new">
to enter a new password</a>.</p>
<div class="caution">
	<div class="icon"></div>
	<div class="title">Caution:</div>
	Only users who log in via the form (not in Active Directory) can change their password this way.
</div>

<p>Options:</p>
	<ul>
 <li><a href="password-new">Enter current password</a>
 - Enter the password you used to log in to the AM Console.</li>
	</ul>

</asp:Content>
