<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New numeric sequence</h1>
<p>In this Window you can define a new <a href="../../../../../alvao-asset-management/documents/sequences">
number sequence</a>. The last two options only appear if you have selected a series for the Property.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use this sequence</strong> - turn on if you want to use the series to automatically generate values.</li>
 <li><strong>Sequence Type</strong> - select from the menu whether the series generates values (selected below) <a href="../../../../../alvao-asset-management/objects-and-properties#rep">
 properties of objects</a>, or document numbers of forwarding reports (i.e. <a href="../../../../../alvao-asset-management/implementation/customization/reports">
 Press reports</a>).</li>
 <li><strong>Sequence name</strong> - enter the name of the numeric series.</li>
 <li><strong>Prefix</strong> - enter the text prefix that will appear before the auto number.</li>
 <li><strong>Next Number</strong> - enter the number from which the automatic numbering of the series will start. The number entered in the field will be respected in the specified format (even with zeros at the beginning) - e.g. it is possible to generate the numbers: <em>IC0001ALVAO</em>, <em>IC0002ALVAO</em>, ... In case of &quot;overflow&quot; of a number, the length is increased by one character. This will break the original formatting - for example, <em>IC999ALVAO</em> will be followed by <em>
 IC1000ALVAO</em>.</li>
 <li><strong>Extension</strong> - enter the text suffix that will appear after the auto number.</li>
 <li><strong>Use this series to generate property values:</strong>
 - select the Property (of type Text) from the menu for which this series will generate values.</li>
 <li><strong>For object kinds</strong> - You can insert one or more object types into the list. The queue will then generate values for the selected property only for the selected object types. If the list is empty, the value of the selected property will be generated for all object types. <br />Add values to this list by selecting the object type in the right search menu and pressing the <strong>
 &lt;&lt;Add</strong> button. If the selected object type is not already in the list, it will be added to the list. Adding <strong>&lt;all&gt;</strong>
 removes all object types from the list (the empty list is applied to all object types). You can also use the <strong> button to remove
 Remove</strong> - removes the selected object type from the list.</li>
	</ul>

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 {
 color: blue; text-decoration: underline;}
</style>

</asp:Content>

