<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Diagram of links</h1>

  <p>This page shows a diagram of <a href="../../../../modules/alvao-configuration-management/object-links">links</a> of a specific object.</p>
  <p>This page is part of the <a href="../../../../modules/alvao-configuration-management">ALVAO Configuration Management</a> module.</p>
  <p>Features:</p>
  <ul>
  <li><b>Command Panel</b>
  <ul>
  <li><b>Link Types</b> - select the <a href="../../../../modules/alvao-configuration-management/object-links">link types</a> you want to display in the diagram.</li>
  <li><b>Save as image</b> - save the entire diagram to a PNG file. The image does not contain expand/collapse buttons or link names.</li>
  <li><a href="link">Add object</a> - add another object, or several objects, to the diagram and link them to the first selected object.</li>
  <li><b>Add link</b> - create a link between the selected object and the object you subsequently point to with the mouse.</li>
  <li><b>Edit</b> - modify the type of the selected link.</li>
  <li><b>Delete</b> - delete the selected link.</li>
  </ul>
  </li>
  <li><b>Link diagram</b> - by default, only direct links of the object from which the diagram is drawn are displayed. If you want to display other links of a linked object, click the [+] button in the object. Click the [-] button to hide the expanded links again. You can move the objects in the diagram with the mouse to another place at will.</li>
  <li><b>Selected Object</b> - when you select an object in the diagram, the <a href="../object">details</a> about that object are displayed on the right side of the page.</li>
  </ul>

</asp:Content>
