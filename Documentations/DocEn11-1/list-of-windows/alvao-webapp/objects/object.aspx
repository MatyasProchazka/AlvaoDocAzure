<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Object</h1>

  <p>On this page or panel, you see information about the selected <a href="../../../alvao-asset-management/objects-and-properties">object</a> in ALVAO Asset Management.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command Panel</b>
  <ul>
  <li><strong>Tree</strong> - display <a href="../objects">object tree</a> on the left side of the page.</li>
  <li><b>Move</b> - <a href="object/move">move an object</a> to another location in the tree.</li>
  <li><a href="object/print">Print</a> - create a print report containing the selected objects. The print report is in PDF format and you can print it on your printer.</li>
  <li><b>Display in AM Console</b> - launches the AM Console and displays the currently selected object in it.</li>
  <li><b>Diagram of links</b> - displays the <a href="object/links-diagram">diagram of links</a> of the object.</li>
  <li><b>Delete</b> - <a href="../../../alvao-asset-management/objects-and-properties/removing-object">removing an object</a>.</li>
  <li>Additional commands depending on the active tab.</li>
  </ul>
  </li>
  <li><b>Object header</b> - use breadcrumb navigation to easily navigate to a parent object.</li>
  <li><b>Tabs</b>
  <ul>
  <li><a href="object/properties">Properties</a></li>
  <li><a href="object/child-objects">Childs objects</a></li>
  <li><a href="object/software">Software</a></li>
  <li><a href="object/related-tickets">Related requests</a></li>
      <li><a href="object/attachments">Attachments</a></li>
  <li><a href="object/diary">Log</a></li>
  </ul>
  </li>
  </ul>

</asp:Content>
