<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Asset check</h1>

    <h2>Starting the asset check</h2>
    <ol>
        <li>Command <b>AM Console - Tools - Asset Inventory</b> to open the <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">Inventory</a>.</li>
        <li>From the window menu, select <b>File - Open Inventory</b>.</li>
        <li>This will open a <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/stocktakings">Inventory List</a> window on the screen, in which you press the <b>Add</b> button.
  A new inventory can only be created if there is currently no inventory open. Before creating a new inventory, you must enter a date in <b>Closed</b> in all existing inventories.
  <li>This will create a new entry in the list. You can use the <b>Edit</b> button to change its properties if necessary.</li>
            <li>Open the new inventory with the <b>Open</b> button.</li>
    </ol>

    <h2>Asset selection</h2>
    <p>Now in the inventory, select the assets you want to inventory and put them into the active inventory.</p>
    <ol>
        <li>In the AM Console main window, in the object tree, select the entire company or organizational unit in which you want to take inventory.</li>
        <li>On the <b>Assigned Objects</b> tab, alternatively, select the <b>All</b> tab to view all objects in the organizational folder. In the object list, select the objects you want to inventory. To inventory all objects, use <b>Edit - Select All</b>.</li>
        <li>Then right-click in the list and select <b>Add to Inventory</b> from the menu. When the control query is confirmed, all objects for which the <i>Inventory Number</i> or <i>Evidence Number</i> property exists will be inserted into the inventory.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The <i>Location</i> column in the inventory displays the value of the <i>Location</i> property of the object. The property can be inherited or custom (custom takes precedence over inherited).
  Similarly, the <i>Centre</i> column displays the value of the <i>Cost Centre</i> property.
    </div>

    <h2>Creating Reader Files</h2>
    <p>If you have multiple people working simultaneously on a physical inventory, you can divide the inventoried assets into several reader files and assign one file to each worker. Similarly, if you want to inventory part of the assets physically and part via the web, create at least one file for the physical inventory and one file for the web inventory. You must create at least one reader file to perform the inventory. One asset can be contained in multiple reader files within a single inventory.</p>

    <p>First, create a new reader file:</p>
    <ol>
        <li>Use the <b>AM Console - Tools - Asset Inventory</b> command to open the inventory window. At the top of the window, you will see a list of the objects that you entered into the inventory in the previous paragraph.</li>
        <li>In the <b>bottom table</b>, right click and select <b>New Reader File</b> from the menu.</li>
        <li>Enter a file name, e.g. &quot;reader1&quot; and select the name of the person who will work with the reader, if applicable. If the asset file will be inventoried using web inventory, enable the <i>Web Inventory</i></li>
        option.
    </ol>

    <p>Then assign the asset to the reader file:</p>
    <ol>
        <li>In the bottom table, select the reader file you want to put the asset into.</li>
        <li>In the top table, select the asset to be placed in the selected reader file.</li>
        <li>From the main window menu, select <b>Action - Assign asset to reader file</b>.</li>
    </ol>

    <h2>Conducting asset check</h2>
    <p>Process the created reader files according to the selected inventory method:</p>
    <ul>
        <li><a href="web-asset-check">Web inventory</a></li>
        <li>Physical inventory with <a href="physical-asset-check#orcascan">Orca Scan</a></li>
        applications
  <li>Physical inventory by <a href="barcode-reader">Zebra MC3xxx</a></li>
    </ul>

    <h2>Results processing</h2>
    <p>
        By loading the result files from the physical inventory or the data from the web inventory, the current inventory data will appear in yellow columns at the top of the window. Pay particular attention to the <b>Movement report</b> column, which informs whether the assets were found during the inventory, whether any changes were detected in some data, or whether there are new assets that are not recorded. If a change in data has been detected, the <b>Error Report</b> column also shows what data has been changed. The inventory also detects duplicate data and displays an error message for it. For assets that are flagged as duplicates, it is first necessary to resolve these issues manually (decide which entry is relevant and delete the duplicate, etc.).
    </p>

    <p>
        You can also manually add or edit the inventory information using the <b>Edit - Edit</b> command. If a change of user has been detected, you can use the <b>Transfer assets to user</b> command,
  which will attempt to move the asset under the newly detected user in the tree. 
    </p>

    <p>
        Close the processed items with the <b>Process</b> command from the local menu, which will eventually write the newly found data into the record (the new data will be written into the properties of the corresponding objects in the tree).
  No error message is displayed for properties that have the <i>Processed</i> status set (successive elimination of problem data and setting the <i>Processed</i> status).
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the inventoried asset has the <b>Inventory Date</b> property in the tree, the actual inventory date, i.e. when the asset was actually found, is transferred to it when processing the record. 
    </div>

    <h2 id="close">Closing the asset check</h2>
    <p>
        If you want to write the results of the inventory to the Object Logs after closing it, then in <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">Inventory</a>
        Use the <b>File - Open Inventory</b> command to open the <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/stocktakings">Inventory List</a>, in which you select the appropriate inventory and select the <b>Enter Object Log</b> command from the local menu. For all records that meet the following three conditions, an entry <i>Inventoried with result ...</i> will be written to the Object Log.
    </p>
    <ul>
        <li>Inventory is closed.</li>
        <li>The record has the flag <i>Processed</i>.</li>
        <li>The record has the flag <i>Locked</i>.</li>
    </ul>

</asp:Content>
