<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
<p>This tab allows you to edit basic <a href="../../../../alvao-asset-management/objects-and-properties">
object</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Object Name</strong> - enter the name of the object. If the object name is made up of properties, the name field displays the properties in sequence. </li>
 <li><a href="choose-icon">Change icon</a>
   - change the icon of the object. The object icon can only be changed in the corresponding object template.</li>
 <li><strong>Object kind</strong> - select <a href="../../../../alvao-asset-management/implementation/node-class"> from the menu
 object kind</a>.
 <ul><li><strong>...</strong> - or select the object kind in a separate window.</li></ul>
 <ul><li><strong>Show all kinds of objects</strong> -
 turn on if you want to select an object kind that is not a computer type.</li></ul>
 </li>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
 After changing the object kind, the object is automatically unified according to the corresponding template (if any).<br/>
 
 When you change the object kind from "computer" to another type, the object is automatically delicensed and installations, detections, and requests for detections are removed.<br/>
	
 Only a user with the <i>Asset Management administrators</i> or <i>Asset managers</i> role can change the object kind. An asset administrator can change the object kind only on computers and only on a different type of computer.
 </div>
 
	
 <li><strong>GUID of the object in Active Directory</strong> - Displays the value that binds the object to Active Directory. If there is no value, then the object is not linked to AD. <div class="note">
 <div class="icon"></div>
 <div class="title">Notes:</div><br/>
 The value is only displayed if the object was imported from AD.<br/>
 The field cannot be edited: it can either be <strong>Delete</strong> or its value can be copied.<br/>
 Deleting it breaks the link between the object and AD, then it is possible to edit the values of properties imported from AD.</div></li>
 <li><strong>Flags</strong>
  <ul>
 <li><strong>Automatically update according to detection</strong>
 - Enable if the object is to be automatically updated with data from hardware detection.</li>
 <li><strong>Ignore inconsistencies with detection</strong> -
 turn on if hardware (or software) detection should not report an error if a difference is detected against detection.</li>
 <li><strong>Non-moveable</strong> - turn on if you want the object to be unable to be moved to another location in the tree.  <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 This value can only be changed by the Administrator.</div></li>
 <li><strong>Hidden Object</strong> - turn on if the object is to be hidden.  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Hidden objects are displayed in the object tree only if their display is enabled in the program settings (<strong>Show</strong>
 - <strong>Hidden objects</strong>). </div>
 <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 This value can only be changed by the Administrator.</div></li></ul>
	</ul>
</asp:Content>
