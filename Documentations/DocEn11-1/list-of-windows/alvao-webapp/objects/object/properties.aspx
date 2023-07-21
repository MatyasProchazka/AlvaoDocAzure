<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Properties</h1>

  <p>This page contains <a href="../../../../alvao-asset-management/objects-and-properties">properties</a> describing the selected object.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command Panel</b>
  <ul>
  <li><b>Edit Value</b> - edit the value of the selected property.You can also change the value of the property directly in the table by double-clicking on it.</li>
  </ul>
  </li>
  <li><b>Property table</b> - contains the properties of the selected object. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.<br />
  Table columns: <table>.
  <thead>
  <tr>
  <th>Column</th>
  <th>Description</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Status</td>
  <td>Icon meaning: <br />
  <img src="zdedena_vlastnost.JPG" alt="Inherited property" /> Inherited property - a property is inherited to this object from a parent object whose name is specified in the <i>Object</i> column.<br />
  <img src="nactena_vlastnost.JPG" alt="Read-only" /> Read-only - the value of the property is retrieved from Active Directory or hw detection and therefore cannot be manually changed.<br />
  <img src="upozorneni.JPG" alt="Alert" /> Alert - there is something wrong with the property. Mouse over the icon and a more detailed description of the error will appear in the bubble.  </td>
  </tr>
  <tr>
  <td>Property</td>
  <td>Property name, see <a href="../../../../list-of-windows/alvao-asset-management-console/tools/lists/properties-definition">Property Definitions</a>.</td>
  </tr>
  <tr>
  <td>Value</td>
  <td>Property value; Double-click on the value to change the value (if you have sufficient permissions to do so and the property value is not locked).</td>
  </tr>
  <tr>
  <td>Object</td>
  <td>The name of the parent object from which the property is inherited.</td>
  </tr>
  <tr>
  <td>Inherit</td>
  <td>The value <i>Yes</i> indicates that this property is inherited to child objects.</td>
  </tr>
  <tr>
  <td>Category</td>
  <td>See <a href="../../../../alvao-asset-management/implementation/property-categories">Property categories</a> for the names of the property categories in which this property is included.</td>
  </tr>
  <tr>
  <td>Object name (order)</td>
  <td>If this property specifies the <a href="../../../../alvao-asset-management/objects-and-properties/object-title">object name</a>, the numeric value in this column represents the order of the part of the object name that this property specifies.  For example, a value of 1 means that the property value specifies the beginning of the object name. </td>
  </tr>
  <tr>
  <td>Order</td>
  <td>The rows in the property table are usually ordered by this column. You can change the value, see <a href="../../../alvao-asset-management-console/tools/lists/properties-definition">Property Definitions</a>.</td>
  </tr>
  </tbody>
  </table>
  </li>
  </ul>

</asp:Content>
