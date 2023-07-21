<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Asset check</h1>
  <p>
  In this window, you will find the last used <a href="../../../modules/alvao-inventory-audits/stocktaking">Asset check</a> - the header shows its number, the date it was started and its status (open or closed). If no inventory is open, the window header shows <i>No inventory selected</i>. The window is part of the module <a href="../../../modules/alvao-inventory-audits">ALVAO Inventory Audits</a>.<br />
  To open an Asset check, use the <b>File - Open Asset check</b> command.
  </p>


  <p>The window contains two tables:</p>
  <ul>
  <li><b>Top table</b> - contains the list of assets to be inventoried. In the coloured columns you will find the data recorded before the inventory started (white and grey columns) and the data detected by the inventory (yellow columns). The red columns show the status values (<i>Locked</i>, <i>Processed</i>, etc.) The special column <i>Mistake Report</i> shows the problems that occur after the inventory has been taken for a given asset. If an issue was found for an asset, this column also displays the <img src="stocktaking/Exclamation.png" /> icons.</li>
  <li><b>Bottom Table</b> - The bottom part of the window lists the barcode reader files into which the assets from the top table are divided. From each reader, the file can be exported pr the reader device and manual inventory records can be imported back from the device.</li>
  </ul>

  <p>Options:</p>
  <ul>
  <li><a href="stocktaking/file">File</a></li>
  <li><a href="stocktaking/edit">Edit</a></li>
  <li><a href="stocktaking/view">View</a></li>
  <li><a href="stocktaking/action">Action</a></li>
  <li><a href="stocktaking/web-asset-check">Web Asset check</a></li>
  </ul>

  <p>Local menu options in the property table:</p>
  <ul>
  <li><b>Assign asset to reader file</b> - assign the selected asset to the reader file selected in the lower table.</li>
  <li><b>Mark reader file</b> - designate in the lower table the reader file to which the selected asset is assigned.</li>
  <li><b>Mark object in tree</b> - label the selected asset in the <a href="../object-tree">tree</a> in the <a href="../../alvao-asset-management-console">Main AM Console</a>.</li>
  <li><b>Go to duplicate entry</b> - mark the duplicate record for the selected asset (if a duplicate record exists).</li>
  <li><b>Transfer asset to user</b> - transfer the selected property to the newly identified owner. If an object owner other than the one recorded in the <a href="../object-tree">tree</a> was found during the inventory, this command transfers the asset to the new user. If the new user exists in the tree, the property will be transferred automatically; if there is a problem finding the user, you will be asked to manually find the user using the <a href="">Objects</a> window.</li>
  <li><a href="../object/choose-object">Transfer asset to ...</a> - select the object under which you want to include the selected property (in the <a href="../object-tree">object tree</a>).</li>
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The property transfer commands invoke the standard action of moving an object in the tree with all the appropriate dialogs. For example, if you are moving a part of a computer assembly, you will be asked before the action whether you want to move only the part or the whole, the change is written to the Journal, etc.</div>
  <li><b>Lock records</b> - prevent changes to selected records in this inventory.</li>
  <li><b>Process records</b> - process selected records and write any new information to the inventory.</li>
  <li><a href="../tab-view/properties/table-options">Table</a> - menu allows you to <a href="../../../alvao-asset-management/working-with-tables">customize the table</a>.
  For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">views</a> or view multiple rows.</li>
  <li><a href="../tab-view/properties/find">Find</a> - search for text in the displayed table.</li>
  <li><b>Delete</b> - remove the selected record from the inventory.</li>
  <li><a href="stocktaking/property">Edit</a> - edit the selected record.</li>
  </ul>

  <p>Local menu options in the reader table:</p>
  <ul>
  <li><a href="stocktaking/file-reader">New reader file</a> - create a new file for the reader device.</li>
  <li><a href="../../../list-of-windows/alvao-webapp/objects/export-xlsx">Export XLSX</a> - export a file with the .xlsx extension as a basis for inventory.</li>
  <li><b>Import XLSX</b> - importing a file with a .xlsx extension after performing an inventory.</li>
  <li><b>ALVAO Mobile Asset check (deprecated)</b> - inventory-related commands using the <a href="../../../modules/alvao-inventory-audits/barcode-reader">ALVAO Mobile Inventory</a> mobile app.
  <ul>
  <li><b>Export IXM</b> - export the inventory documentation file to the reader device and save it to disk.</li>
  <li><b>Import IXM</b> - import the file from the reading device (stored on disk) that was used to perform the inventory.</li>
  </ul>
  </li>
  <li><strong>Delete</strong> - delete the selected reader.</li>
  <li><a href="stocktaking/file-reader">Edit</a> - edit the data of the selected reader.</li>
  </ul>
</asp:Content>
