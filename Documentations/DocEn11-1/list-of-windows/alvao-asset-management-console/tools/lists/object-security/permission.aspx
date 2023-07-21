<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Permissions</h1>
<p>In this Window, you define the access permissions of a user (or group) to a specific object in the tree, or to an entire subtree. The permissions are implemented using <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">
object security</a>. Permissions can be enabled, disabled, or combined in various ways. They can be set either for a group of users or for a specific user.</p>
	<ul>
 <li><strong>Group</strong> - select the group of users you want to set permissions for from the menu.</li>
 <li><strong>User</strong> - select the user you want to set permissions for from the menu.</li>
 <li><a href="../../../../alvao-webapp/administration/users/detail/securityobject-authorization/select-object">
 Object</a> - select the object in the tree to define the permissions for. Open the tree using the <strong>...</strong> button.</li>
 <li><strong>Including child objects</strong> - turn on if the permission is to be applied to the selected object and also to all its child objects (i.e. subtrees). (If disabled, the permission applies only to the selected object.)</li>
 
 <li><strong>Objects of the kind</strong> - select the object type from the menu (e.g. <em>Printer</em>). Permissions will only apply to objects of this type. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 This entry only makes practical sense with the <strong>option enabled.
 Including child objects</strong>.
 </div></li>
 
 <li><strong>Permissions</strong> - see <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">
 Object security</a>.</li>
	</ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 <ul><li>In order to apply the set access permissions to the objects in the tree, you must enable the <strong>Use permissions in object tree</strong> option in the settings for Asset Management in Administration (see the manual for this program for more information).</li>
	
 <li>Permissions can be defined either for a user or for a group of users -
 not both at once.</li></ul>
	</div>

</asp:Content>
