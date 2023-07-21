<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Sharing settings</h1>
	<p>Use this window to set <a href="../../../../alvao-asset-management/working-with-tables/table-views">view sharing</a> in a table.</p>
 
	Options:<ul>
	<li>
	<strong>View Owner</strong> - select the user to be the owner of the view. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 If you pass ownership to another user, you will no longer be able to edit the view. </div>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 When creating a shared view, this field is not displayed. You will be the owner of the new shared view. </div>
	</li>
	<li>
 <strong>Share with</strong> - use the <strong>Add</strong> and <strong>Remove</strong> commands to set the groups of users with whom the view will be shared so they can use it. </li>
	</ul>
	
</asp:Content>
