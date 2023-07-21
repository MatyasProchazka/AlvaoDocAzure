<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Software Profile</h1>
<p>This tab allows you to set <a href="../../../../alvao-asset-management/software-management/software-profiles">
Software Profile</a> to the computer currently being edited.</p>
	<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	Differences in actual installations versus the Software Profile are indicated on the <strong>individual computer tab</strong>.
	Software</strong> in the <a href="../../../alvao-asset-management-console">main AM Console window</a>.</div>

<p>Options:</p>
	<ul>
 <li><strong>Software profile for selected computer</strong> -
 select one of the predefined Software Profiles from the menu.</li>
 <li><a href="software-profile-exeptions">Exceptions</a>
 - define an exception (minor changes from the selected Software Profile).</li>
 <li><strong>Description</strong> - display the description of the selected Software Profile.</li>
 <li><strong>All software is enabled</strong> - turn on if you do not want to use the Software Profile on the computer being edited. (The profile status for all products installed on the computer will be displayed as optional.)</li>
	</ul>
</asp:Content>
