<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Child objects</h1>

  <p>On this page you can find all objects that are subordinated to the currently displayed object in the tree.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command Panel</b>
  <ul>
  <li><b>Select in tree</b> - the selected child object is highlighted in yellow in the object tree.</li>
  <li><b>Display in AM Console</b> - launches the AM Console and displays the currently selected object in it.</li>
  <li><b>Displayed Object Commands</b> - menu contains the commands available for the currently displayed object.</li>
  <li><b>Show in Table</b> - the child objects are displayed in a table on the left side of the page, where you can conveniently scroll through them.</li>
  </ul>
  </li>
  <li><b>Child Objects Table</b> - contains all child objects of the displayed object. You can <a href="../../../../alvao-asset-management/working-with-tables">customize the table</a> as needed.
  </li>
  </ul>

</asp:Content>
