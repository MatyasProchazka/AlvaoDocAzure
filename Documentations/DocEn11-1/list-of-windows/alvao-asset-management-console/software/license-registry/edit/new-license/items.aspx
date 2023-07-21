<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New license - license items</h1>
<p>The table shows the individual license items and the computers or users to which they are assigned. The window allows you to edit the entries. The bottom right shows how many licenses <strong>are enrolled</strong> / of the total <strong>
number of licenses</strong>.<br/>
The license will be written to <a href="../../../../../../alvao-asset-management/software-management/licenses">
License registry</a>.</p>
<p>Options:</p>

	<ul>
 <li><a href="item">Add</a> - add another item.</li>
 <li><a href="item">Edit</a> - edit the value of the selected item.</li>
 <li><strong>Delete</strong> - remove the selected item.</li>
	</ul>
</asp:Content>
