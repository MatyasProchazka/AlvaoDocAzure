<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Edit</h1>
<p>This menu contains commands for working with licenses in the <a href="../license-registry">License registry</a> window.</p>
<p>Options:</p>
	<div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
		If you need to find a computer/user that is assigned a specific inventory license number, turn on the <strong>Show License Items</strong> option, and in the <strong>Inventory Number</strong> column enter the filter for the desired value.
	</div>
	<ul>
 <li><a href="edit/new-license">New license</a>
 - create a new license.</li>
 <li><a href="edit/license-upgrade">Upgrade</a>
 - Write license upgrade - in the first step, select the entries for the upgraded license. In the second step, you enter the purchase of a new valid license that replaces the upgraded license.</li>
 <li><strong>Enable downgrade</strong> - enable the installation of an older version of the product.</li>
  <li><strong>Add link to document</strong> (local menu) - use the command to perform bulk document link over selected licenses.</li>
  <li><strong>Remove License</strong>
  - remove the selected license.</li>
 <li><a href="../../tab-view/software/license-transfer">Transfer license</a> - move the selected license.</li>
  <li><a href="edit/void-license">Void license</a> - use invalidate license when you want to record the expiration or divestment of part or all of a license. If you do not want to record the validity or purchase history of individual licenses, remove invalid licenses using the <strong>Remove</strong> command.</li>
  
 
 <li><strong>Delete from Asset Registry</strong> - remove the selected license from the License registry.</li>
 <li><a href="edit/edit-license">Edit</a>
 - edit the selected license.</li>
	</ul>

  

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
  When a license is invalidated and when an upgrade is written, the links to the corresponding corresponding licenses are written to the individual license records. These links can be viewed or edited in the License registry - Edit window on the <a href="edit/edit-license/links">Links</a>.
	</div>
	

</asp:Content>
