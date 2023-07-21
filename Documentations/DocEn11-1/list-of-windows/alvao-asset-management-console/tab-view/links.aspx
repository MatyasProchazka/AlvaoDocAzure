<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Links</h1>

  <p>
  The tab shows the table of objects that are linked to the currently selected object in the tree. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.
  </p>
  <p>The tab is part of the <a href="../../../modules/alvao-configuration-management">ALVAO Configuration Management</a> module.</p>

  <h2>Table Views</h2>
  <p>By default, the table contains the following views:</p>
  <ul>
  <li><b>Direct</b> - display only direct links, i.e. links whose starting or ending object is the directly selected object in the tree.</li>
  <li><b>Is used</b> - display a list of objects by which the selected object in the tree is used, see link type <i>Is used - Used</i>.</li>
  <li><b>Uses</b> - display the list of objects that the selected object is used by in the tree, see link type <i>Is used - Uses</i>.</li>
  </ul>

  <h2>Table columns</h2>
  <table>
  <thead>
  <tr>
  <th>Name</th>
  <th>Description</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Path</td>
  <td>Path to the linked object.</td>
  </tr>
  <tr>
  <td>Object kind</td>
  <td>Type of linked object.</td>
  </tr>
  <tr>
  <td>Object name</td>
  <td>Name of the linked object.</td>
  </tr>
  <tr>
  <td>Direct</td>
  <td>Yes - this is a direct link to the object that is selected in the tree.<br />
  No - this is an indirect link to the object that is selected in the tree (link via another object).</td>
  </tr>
  <tr>
  <td>Link type</td>
  <td>The type of link from the perspective of the currently selected object in the tree.</td>
  </tr>
  <tr>
  <td>Created</td>
  <td>Date and time when the link was created.</td>
  </tr>
  <tr>
  <td>Created by</td>
  <td>The person who created the link.</td>
  </tr>
  <tr>
  <td>Removed</td>
  <td>Date and time the link was removed.</td>
  </tr>
  <tr>
  <td>Removed</td>
  <td>The person who removed the link.</td>
  </tr>
  <tr>
  <td>From object (path)</td>
  <td>The path to the object on which the link is defined. For direct links, this is the selected object in the tree.</td>
  </tr>
  <tr>
  <td>From object (type)</td>
  <td>The type of object on which the link is defined.</td>
  </tr>
  <tr>
  <td>From object (name)</td>
  <td>The name of the object on which the link is defined.</td>
  </tr>
  <tr>
  <td>From object (link type)</td>
  <td>The type of link from the view of the object on which the link is defined.</td>
  </tr>
  </tbody>
  </table>

  <h2>Local menu</h2>
  <ul>
  <li><a href="link">Add</a> - add a new <a href="../../../modules/alvao-configuration-management/object-links">link</a> to the object selected in the tree.</li>
  <li><b>Mark object in tree</b> - label in the <a href="../object-tree">tree</a> the second object to which the currently selected object is linked by the selected link.</li>
  <li><a href="properties/table-options">Table</a> - menu allows you to <a href="../../../alvao-asset-management/working-with-tables">customize the table</a>.
  For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">views</a> or view multiple rows.</li>
  <li><a href="properties/find">Find</a> - search for text in the displayed table.</li>
  <li><b>Remove</b> - remove the selected link.</li>
  <li><a href="link">Edit</a> - edit the selected link.</li>
  </ul>

  <h2>Direct and indirect links</h2>
  <p>For example, the following links exist between objects A to E:<br/>
  A -&gt; B -&gt; <b>C</b> -&gt; D -&gt; E</p>
  <p>If object C is selected in the object tree, then the B-&gt;C and C-&gt;D links are <b>direct</b> because they directly emanate from or point to object C.</p>
  <p>links A-&gt;C and C-&gt;E are <b>indirect</b> because object A is indirectly linked to C via object B. Similarly, object E is linked to C indirectly via object D.</p>

</asp:Content>
