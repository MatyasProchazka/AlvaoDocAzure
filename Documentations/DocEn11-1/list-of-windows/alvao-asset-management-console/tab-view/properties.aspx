<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Properties</h1>

<p>In the upper part of the <em>Properties</em> tab there is a table of properties of the currently selected object in the <a href="../object-tree">tree</a> and in the lower part there is a <a href="diary">log</a> of this object. <br/>
The property status icons have the following meaning:</p>
 
 <ul>
  <li><img src="properties/PropInh.jpg" />Inherited property - the property is inherited to this object from the parent object whose name is specified in the <em>Object</em> column.</li>
  <li><img src="properties/prop_locked.jpg" />Only for reading - the value of the property is retrieved from Active Directory or hw detection and therefore cannot be manually changed.</li>
  <li><img src="properties/alert.jpg" />Alert - there is something wrong with the property. Hover over the icon and a more detailed description of the error will appear in the bubble.</li>
 </ul>
 
<p>Local menu options on the <strong>Properties</strong> tab:</p>
	<ul>
 <li>
 <a href="../tools/lists/properties-definition">
 New property</a> - adds a new property to the selected object in the tree.</li>
 <li><strong>Copy</strong> - copy the selected property.</li>
 <li><strong>Paste</strong> - paste a property from the clipboard (e.g. copied from another object).</li>
 <li><strong>Delete</strong> - remove the selected property from the properties of the object selected in the tree.</li>
 <li><strong>Functions</strong>
 <ul><li><a href="../../../alvao-asset-management/objects-and-properties/functions">Summary</a> - summing the value of the selected property in all subobjects of the object selected in the tree.</li></ul></li>
 <li><strong>Go to Parent Object</strong> - navigate in the tree to the object from which the selected property is inherited (using the menu <strong>Go</strong> - <strong>Back</strong> command, the original object can be displayed again).</li>
 <li><a href="properties/table-options">Table</a> - menu allows <a href="../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple rows.</li>
 <li><a href="properties/find">Find</a> - search for text in the displayed table.</li>
 <li><strong>Insert Barcode</strong> - insert a code from a barcode reader into the selected property.</li>
 <li><strong>Generate Value</strong> - generate a new value for the selected property by the <a href="../../../alvao-asset-management/objects-and-properties/setting-up-new-sequence">number sequence</a> that this property uses. (This option is only available for editable non-heritable properties.)</li>
 <li><a href="properties/property-edit">Edit</a> - edit the value and behavior of the selected property.</li>
	</ul>

</asp:Content>
