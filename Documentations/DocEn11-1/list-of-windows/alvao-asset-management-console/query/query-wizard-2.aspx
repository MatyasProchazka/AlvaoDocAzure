<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Query Wizard - Step 2</h1>
<p>In the second step of creating a <a href="../../../alvao-asset-management/searching/query">
database query</a>, define the properties you want to monitor.<br/>
The content of the window changes depending on which object you select in the <strong>Object List</strong> - the parameters are set separately for each object.</p>
<p>Options:</p>
	<ul>
 <li><strong>Object List</strong> - select the object whose properties are displayed in the <strong>Property List</strong> window.<br/>
 Only the control object selected in step 1 is listed at the beginning. Use the <strong> button.
 Add Object</strong> button to add additional objects to the list whose properties should appear in the query result.</li>
 <li><strong>Property List</strong> - turn on all properties of the selected object that you want to use in the query,<br/>
 i.e. you want to display them in the query result or set some condition for them, e.g. &quot;RAM size less than 64 MB&quot;.</li>
 
 <li><strong>Search direction</strong> - select the search direction of the selected object relative to the control object.<br/>A object other than the control object must be selected. Typically, child objects are searched. <ul>
 <li><strong>Child Object</strong> - select if you want to search downwards, i.e. among the child objects of the control object.</li>
 <li><strong>Parent object</strong> - select if you want to search upwards, i.e. between parent objects.</li>
  </ul>
 </li>
 <li><strong>Level</strong> - select the search depth of the selected object.<ul>
 <li><strong>Depth</strong> - select if the searched object can be anywhere in the tree of child objects of the controlling object.</li>
 <li><strong>Surface</strong> - select if the searched object must be a direct child object of the control object, i.e. not a child object of a child object.</li>
  </ul>
 </li>
 <li><strong>Quality</strong> - select the search quality of the selected object.<ul>
 <li><strong>All</strong> - select to search the entire subtree of the controlling object.</li>
 <li><strong>Closest</strong> - select to find only those objects that are at the closest level in the control object's subtree.</li>
  </ul>
 </li>
 <li><strong>Non-empty objects only</strong> - turn on if the control object should only be in the query result if the selected child/superordinate object exists.</li>
 <li><a href="../edit/new-object/object-template">
 Add object</a> - add another object to the <b>Object List</b>.</li>
 <li><strong>Delete Object</strong> - remove the selected object.</li>
	</ul>
</asp:Content>
