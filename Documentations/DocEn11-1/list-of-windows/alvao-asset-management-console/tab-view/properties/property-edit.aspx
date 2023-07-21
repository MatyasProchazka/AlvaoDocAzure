<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Property</h1>
	<ul>
 <li><strong>Property name</strong> - display the name of the property.</li>
 <li><strong>Value</strong> - enter the value of the property. <ul><li>In the list that is attached to this input line, you can select a value from the list of default values for this property.</li>
 <li>It is also possible to enter a value from the barcode reader manager using the button with the barcode symbol next to the <em>Value</em> field.</li></ul>
 <li><strong>This property specifies the name of the object</strong> - when this box is checked, the name of the object that contains this property will be automatically created according to the value of this property. The name of an object can consist of up to 8 properties -&nbsp; the values of the properties are ordered in the defined order. If you change the value of the property that defines the object name, the object name in the tree will also change.<ul>
  <li><strong>Order in object name</strong> - A number that determines the order of the value of this property in the object name. When the order is changed, the order of the other properties is automatically adjusted.</li>
  </ul>
  </li>
  <li><a href="../../../../alvao-asset-management/implementation/tree-design#inheritance">Inherit property</a> - if you enable this option, the property will be inherited to all child objects i.e. it will be visible on the <em>Properties</em> tab in the <a href="../../../alvao-asset-management-console">main window</a> in all child objects.</li>
	</ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
	<ul><li>This dialog can only be displayed in the&nbsp;<a href="../../../../alvao-asset-management/implementation/object-templates">object template</a>. Only property values can be changed outside of the object template.</li>
	
  <li>The values of some properties cannot be changed. If the object has the <em>automatically update on detection</em> option enabled in the tree,
 the values of the detected properties cannot be changed (there is a risk of overwriting the values on the next detection). Also, if the object is loaded from <b>Active Directory</b> it is not possible to change the values of properties loaded from AD (there is a risk of overwriting the values on the next import). Information about the impossibility to change the value in such cases is also displayed in the message under the <em>
 Value</em>.</li>
	
 <li>The list of values is dynamically constructed from the property values of the given property only from objects of the corresponding type. If the property is set as unique, the list is populated with the values of the property across all objects in the database.</li></ul>
	</div>
</asp:Content>
