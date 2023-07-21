<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Object Security - Permissions</h1>
<p>The window allows you to set user permissions to <a href="../../../../../alvao-asset-management/objects-and-properties">
object</a>. Objects are managed in <a href="../../../../../alvao-asset-management">
ALVAO Asset Management</a>.<br/>
</p>
<p>Options:</p>
	<ul>
 <li><strong>User/group</strong> - select the user or group for which you want to set permissions.</li>
 <li><a href="securityobject-authorization/select-object">Object</a> - select a specific object. The permissions you set will be limited to the selected object and possibly all its child objects.</li>
 <li><strong>Including child objects</strong> - enable if you want to set permissions for <a href="../../../../../alvao-asset-management/glossary">
 child objects</a> of the selected object.</li>
 <li><strong>Objects of the kind</strong> - select from the list the <a href="../../../../../alvao-asset-management/objects-and-properties">type of object</a> for which you want to set permissions.</li>
 <li><strong>Permissions</strong> - see <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">
 Object security</a>.</li>
	</ul>

</asp:Content>
