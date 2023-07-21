<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Tools</h1>
<p>The Tools menu contains the management of advanced <a href="../../alvao-asset-management/console">
Asset Management Console</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Lists</strong></li>
 <ul>
  <li><a href="../alvao-webapp/administration/service-desk/service/icons">Icons</a></li>
  <li><a href="tools/lists/properties-definition">
      Property definitions</a></li>
  <li><a href="tools/lists/object-security">
  Object security</a></li>
  <li><a href="tools/lists/node-classes">Kinds of objects</a></li>
  <li><a href="../alvao-webapp/administration/asset-management/link-types">Types of links between objects</a></li>
  <li><a href="tools/lists/numeric-sequences">
  Numeric sequences</a></li>
  <li><a href="tools/lists/commands">Commands</a></li>
  <li><a href="tools/lists/organization">
  Organization</a></li>
  <li><a href="tools/lists/documents">
  Documents</a></li>
  <li><a href="tools/lists/media">Media</a></li>
  <li><a href="software/products">
  Products (software)</a></li>
 </ul>
 <li><strong>Detection</strong></li>
 <ul>
  <li><a href="tools/detection">Load from file</a></li>
  <li><strong>Clear old detections</strong> - leaving only the most recent detection for each machine.  <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  To keep only the most recent detection for each computer (automatically deleting the previous one on a successful detection), enable <strong>WebApp</strong> in ALVAO <strong>
    Administration</strong> - <strong>Asset Management</strong> - <strong>Settings</strong> - <a href="../alvao-webapp/administration/asset-management/settings/detection">
  Detection</a> option <strong>Maintain only one valid detection per computer</strong>.
  </div>

  </li>
 </ul>
 <li><strong>Database</strong></li>
 <ul>
  <li><strong>Edit Database</strong> - recalculate pre-calculated items (paths in the tree, object names generated from property names, etc.).</li>
  <li><strong>Restore removed items</strong> - restore selected deleted entries in <a href="tab-view/diary">Diary</a>.
  To mark the removed entries, you must first view them using the local menu - <strong>Table</strong> - <strong>
  Show removed entries</strong></li>
  <li><a href="tools/database/sql-query">SQL query</a></li>
  <li><strong>Run SQL script</strong> - select the SQL script you want to run from the disk.</li>
 </ul>
 <li> <a href="tools/password">Change password</a></li>
 <li> <a href="tools/login">Sign in as a different user</a></li>
 <li>
 <a href="../../alvao-asset-management/searching/data-analysis">Data analysis</a> - open the ALVAO Asset Management analysis workbook located in the folder "C:\Users\{user}\Documents\ALVAO\Asset Management Analysis.xlsm" in MS Excel.<div class="note">
  <div class="icon">
  </div>
  <div class="title">
 Note:</div>
  The location of the analysis workbook may vary depending on your computer settings.</div>
  </li>

 <li><a href="tools/stocktaking">
 Asset check</a></li>
 <li><a href="tools/barcode-reader">
 Barcode reader</a></li>
 <li><a href="tools/settings">Settings</a></li>
	</ul>
</asp:Content>
