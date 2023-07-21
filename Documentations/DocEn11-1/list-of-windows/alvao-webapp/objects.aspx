<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Objects</h1>

  <p>On this page you can work with <a href="../../alvao-asset-management/objects-and-properties">objects</a> in ALVAO Asset Management.</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Commands panel</b> - commands are displayed in the panel depending on the selected object in the tree. The command menu can also be found in the local object menu under the right mouse button.  <ul>
  <li><a href="objects/new-object">New object</a> - create a new object in the tree. In the tree, select the folder (object) in which you want to create the new object and use the <i>New Object</i> command. To create a new object at the root of the tree, use <i>New Object</i> when no object is selected in the tree.</li>
  <ul>
  <li>
  <a href="../../list-of-windows/alvao-webapp/objects/import-csv">Read CSV</a> - bulk create new objects from a CSV file. </li>
  </ul>
  <li><a href="objects/object/print">Print</a> - create a print report containing the selected objects. The print report is in PDF format and you can then print it on your printer.</li>
  <li><b>Copy</b> - copy the selected object, including all its child objects, to the &quot;clipboard&quot;. Select the object you want to copy in the tree and use the <i>Copy</i> command.
  (or <span class="key">Ctrl</span>+<span class="key">C</span>). Then select the object in the tree into which you want to paste the copy and use the <i>Paste</i> command (or <span class="key">Ctrl</span>+<span class="key">V</span>).
  </li>
  <li><b>Paste</b> - inserting a copy of an object from the &quot;clipboard&quot; (see <i>Copy</i> command) into the selected object in the tree.</li>
  <li><b>Tree/Table</b> - switch the object display mode.</li>
  </ul>
  </li>
  <li><b>Tree or Table of Objects</b> - the tree or table of objects is displayed on the left side of the page. You can switch the display mode with <i>Tree</i> and <i>Table</i>.You can <a href="../../alvao-asset-management/working-with-tables">customize the table</a> as needed. Setting up views in the table is common with the <i>AM Console - View -
  <a href="../alvao-asset-management-console/view/list-of-objects">List of objects</a></i>.</li>
  <li><b>Selected Object</b> - The right side of the page displays <a href="objects/object">details</a> about the object that is currently selected in the tree.
After selecting multiple objects, a menu with bulk operations will appear, allowing you to Move, Print, Add document, and Delete multiple at once.</li>
  </ul>
  <div class="note">
   <div class="icon"></div>
   <div class="title">Note:</div>
	  This page is the default for all users who have a role in ALVAO Asset Management and also have no role in ALVAO Service Desk.  </div>
</asp:Content>
