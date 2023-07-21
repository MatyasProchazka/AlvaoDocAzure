<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>License Items</h1>
<p>The table shows the users or computers that have been assigned a license. Valid licenses are shown with a yellow icon, invalid licenses are shown with a grey strikethrough icon. The bottom right shows how many licenses <strong>
are registered</strong> / of the total <strong>
number of licenses</strong>.<br/>
Licenses are registered in <a href="../../../../../../alvao-asset-management/software-management/licenses">
License registry</a>.</p>
<p>Options:</p>
 <ul>
 <li><a href="../new-license/item">Add</a> - add another entry.</li>
 <li><a href="../new-license/item">Edit</a> - edit the value of the selected item.</li>
 <li><strong>Delete</strong> - remove the selected item.</li>
	</ul>
</asp:Content>
