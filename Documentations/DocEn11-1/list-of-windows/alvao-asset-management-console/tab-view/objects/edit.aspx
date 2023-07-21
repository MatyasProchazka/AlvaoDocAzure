<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Changing property value</h1>
	<p>This function is used to set the value of a property in bulk for multiple objects, or to edit <a href="../../../../alvao-asset-management/implementation/node-class">
	object kind</a>. </p>
	<ul>
	<li><strong>Edit Property</strong> - select if you want to change the property of the selected objects. <ul>
	<li><strong>Property</strong> - select the property whose value you want to set from the menu. The menu can display two parts separated by a &quot;-------------------------&quot; separator. The top part above the separator is properties that occur for all objects and the part below the separator is properties that do not occur for all objects. In addition, when you select a property that does not occur for all selected objects, a warning indicator is displayed below the menu.</li>
 <li><strong>Value</strong> - enter or select a new value for the selected property from the menu. The value menu is only displayed if the property uses a value dial. If the selected property is of type <em>
 selection only</em>, the value can only be selected from the menu. </li>

	</ul> </li>
	<li><strong>Edit Object Kind</strong> - select to change the <a href="../../../../alvao-asset-management/implementation/node-class">
	kind of selected objects</a>.
 <ul>
	<li><strong>Object Kind</strong> - select the newly selected object kind from the menu. <ul><li><a href="../../tools/lists/node-classes">...</a>
 - Alternatively, select the object kind in a separate window. It is only displayed to users with the <em>Administrator AM</em> role.</li></ul>
	</li>
 </ul>
	</ul>
	
	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
 <ul><li>After changing the object kind, the object is automatically unified according to the corresponding template (if any).</li>
 
 <li>After changing the object kind from "computer" to another type, the object is automatically delicensed and installations, detections, and requests for detections are removed.</li>
 
 <li>Only a user with the <em>AM Administrator</em> or <em>Asset Administrator</em> role can change the object kind. An <em>Asset Administrator</em> can change the object kind <strong>only on computers and only on a different type of computer</strong>.</li></ul></div>
</asp:Content>
