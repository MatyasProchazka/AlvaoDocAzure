<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Child objects</h1>

<p>The top of the <em>Child Objects</em> tab lists all the child objects of the object that is currently selected in the tree. If you select an object in the table, its <a href="diary">diary</a> is displayed at the bottom.
<br/>
For objects of type computer, a status icon may be displayed:</p>
  <ul>
 <li><img src="objects/PcUnknown.gif" /> The computer's network power-on status is unknown (the ping function was not called).</li>
 <li><img src="objects/PcOn.gif" /> The computer is powered on (the last call to the ping function was successful).</li>
 <li><img src="objects/PcOff.gif" /> Computer; is off or unavailable (last ping function call was unsuccessful)</li>
  </ul>Child Objects tab can also be viewed in the <a href="../../../alvao-asset-management/searching/list-of-objects">
 Lists of objects</a>. This window allows you to work with objects in the <a href="../../alvao-asset-management-console">
 AM Console main window</a> and still have a list of them in sight.</p>
<p>The local menu options of the <em>Assigned Objects</em> tab:</p>
	<ul>
 <li><strong>Mark in tree</strong> - bold highlights in <a href="../object-tree">
 tree</a> of objects, the object selected in the table</li>
 <li><a href="../object/choose-object">
 Move</a> - move the selected object under another object. If you select an object of type computer, you will be asked if you want to <a href="objects/move-options">
  Move</a> only computers or computers including reports. </li>
 <li><a href="../view/list-of-objects">View in object lists</a> - open the displayed list of objects in a separate window <a href="../../../alvao-asset-management/searching/list-of-objects">
 Lists of objects</a>.
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Before you open the list of objects in a separate window, you can apply filters to limit the list to the objects you are interested in.<br/>
        Objects in a separate window can still be displayed in a tree. So you can work with the list you have created without losing the list by editing specific objects. 
    </div>
 </li>
 <li>
   <a href="../../../list-of-windows/alvao-webapp/requests/new-request">New request</a> - create a new request in <a href="../../../alvao-service-desk">
 ALVAO ServiceDesk</a> related to the selected objects.</li>
 <li><a href="../add-objects-to-ticket">Add to request</a> - add selected objects to an existing request in <a href="../../../alvao-service-desk">
 ALVAO ServiceDesk</a>.</li>
 <li><strong>Related Requests</strong> - view requests in <a href="../../../alvao-service-desk">
 ALVAO ServiceDesk</a> that are related to the selected object.</li>
 <li><a href="properties/table-options">Table</a>
 - The menu allows <a href="../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple rows.</li>
 <li><a href="properties/find">Find</a>
 - search for text in the displayed table.</li>
 <li><a href="../software/license-and-install-overview/table/html-document">
 Print</a> - open the details of the selected objects in the HTML print window. The form and content of these details depends on the selected report (print-set.epq).</li>
 <li><strong>Delete</strong> - remove selected objects from the active Asset Management records, i.e. move them to the trash.</li>
 <li><a href="../tools/lists/documents">
 Add a link to a document</a> - add a link to the selected <a href="../../../alvao-asset-management/documents/links-between-objects-and-documents">
 object to an existing document</a>.</li>
 <li><a href="objects/edit">Edit</a> - edit a property or <a href="../../../alvao-asset-management/objects-and-properties">
 type</a> of selected objects.</li>
	</ul>

</asp:Content>
