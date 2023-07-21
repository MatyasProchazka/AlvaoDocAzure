<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Asset check with Zebra MC3xxx series barcode scanner</h1>

    <p>
        Performing physical inventories of assets using Motorola/Zebra/Symbol MCxxxx mobile barcode scanners with Microsoft Windows CE / Microsoft Embeded CE /
  Microsoft Windows Embeded Compact. These are e.g. readers: MC3000, MC3100, MC3190, MC32N0, MC3200. 
    </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Due to the type of barcode readers, this is an outdated asset check method that will no longer be supported in future versions of Alvao. 
    </div>

    <h2>Import of assets</h2>
    <ol>
        <li>In AM Console, <a href="stocktaking">run asset check</a> and prepare barcode scanner file(s) as needed.</li>
        <li>In the AM Console, in the <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">asset check</a> window, use the <b>File - ALVAO Mobile Inventory (deprecated) - Export IXM</b> command.
  export the reader file(s) and <a href="barcode-reader/copy-files">copy</a> them to the reader(s)</li>
        .
  <li>In the main window of the mobile app, use the <b>Menu - Import</b> command from the main menu.</li>
        <li>Select the given IXM file.</li>
        <li>Once the import is complete, you can check the contents of the database using <b>Menu - Database - Show</b>.</li>
    </ol>


    <h2>Filter settings</h2>
    <p>Suitable e.g. when conducting an asset check &quot;by room&quot;.</p>
    <ol>
        <li>In the main application window, press
            <img alt="filter" src="barcode-reader/filter.png" />
            (filter) in the main menu.</li>
        <li>A window will appear in which you can select whether to filter by location, resort, or user.</li>
        <li>Confirm the filter with the OK button.</li>
    </ol>

    <h2>Code scanning</h2>
    <p>
        Find the barcode label on the asset and remove it with the scanner. The scanned code is compared with the serial, asset check and registration number of the asset recorded in the records.<br />
        Several variations may occur:
    </p>
    <ol>
        <li>The asset has been found in the records - the asset information is displayed in the main window and the asset is marked as &quot;found&quot;.</li>
        <li>Asset was found in the records, but the data does not match the filter set - a window will appear warning that the asset being captured does not match the filter. It is possible to transfer the asset to another location, centre or user.</li>
        <li>Asset not found in the records - the application will offer to create a new asset and fill in its data.</li>
        <li>Scan code is kept for multiple assets - the application prompts to scan an additional code on the asset (e.g. serial number) to uniquely identify the asset.</li>
    </ol>

    <h2>List of remaining assets</h2>
    <p>The main application window shows how many assets are left to be removed. This number is dependent on the selected filter.</p>
    <ol>
        <li>In the main window of the application, press the
            <img alt="devicelist" src="barcode-reader/devicelist.png" width="14" height="13" />
            button in the main menu (asset list).</li>
        <li>A list of assets will be displayed with the status of whether the asset has been found or not. According to the list, it is possible to find other assets in the room, for example.</li>
    </ol>

    <h2>Adding information to scanned assets</h2>
    <ol>
        <li>Scan asset barcode</li>
        <li>In the main application window, the asset information will be displayed.</li>
        <li>In the main application window, in the main menu, press
            <img alt="edit" src="barcode-reader/edit.png" width="16" height="12" />
            (edit).</li>
        <li>A window will appear in which you can change the details of the asset, e.g. add a serial number by removing another code from the asset in the appropriate field.</li>
        <li>After editing, press the
            <img alt="save" src="barcode-reader/save.png" width="16" height="16" />
            (save) button in the main menu of the window.</li>
    </ol>

    <h2>Export assets to file</h2>
    <ol>
        <li>In the main window, use the <b>Menu - Export</b> command from the main menu.</li>
        <li>Select a location and enter a file name.</li>
        <li><a href="barcode-reader/copy-files">Copy</a> the exported IXM file back to your computer.</li>
        <li>In the AM Console, in the <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">asset check</a> window, use the <b>File - ALVAO Mobile Inventory (deprecated) - Import IXM</b> command.
  load the file. Files should always be loaded into the correct entries (reader files) at the bottom of the window.</li>
        <li>In the AM Console <a href="stocktaking">process the results</a> of the asset check.</li>
    </ol>

</asp:Content>
