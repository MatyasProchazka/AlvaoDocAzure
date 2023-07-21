<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Unify Objects</h1>
  <p>
  In this Window, you can unify the property sets and icons of all objects of a certain type in the tree according to a selected <a href="../../../alvao-asset-management/implementation/object-templates">object template</a>.
 As of Alvao 10.4, changes to an object template are automatically reflected in all existing objects of that type in the tree. In earlier versions, template changes were not automatically projected, and therefore objects of the same type may historically exist in the tree with different sets of properties or icons. You can use this command to explicitly unify existing objects.  </p>
 <div class="caution">
  <div class="icon"></div>
  <div class="title">Caution:</div>
  The object unification operation is irreversible.  </div>

	<ul>
  <li><strong>Add missing</strong> - turn on if you want to add all properties from the template that are missing in the objects.<br />
  If an object already contains a property, its value is not changed.</li>
  <li><strong>Remove Excess</strong> - turn on if you want to remove all properties from objects that are not in the template.</li>
  <li><strong>Unify property states</strong> - turn on if you want to unify the <a href="../tab-view/properties/property-edit">property states of objects</a> according to the selected template.</li>
  <li><strong>Unify object flags</strong> - turn on if you want to unify <a href="../edit/object/general">object flags</a>
  according to the selected template.</li>
  <li><strong>Unify object icons</strong> - turn on if you want to unify object icons according to the selected template as well.</li>
  </ul>

 

  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The operation can only be performed by users with the <em>Asset Management administrators</em> role.
  </div>


</asp:Content>
