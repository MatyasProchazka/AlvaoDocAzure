<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Physical asset check</h1>

    <p>Physical asset check consists of scanning labels with a mobile barcode scanner or a mobile phone with an app installed.</p>

    <h2>Printing barcode labels</h2>
    <ol>
        <li>Create a file in <i>Microsoft Excel</i> that will contain a column called <i>Barcode</i> and below it the values you want to print on the labels.</li>
        <li>Register to <a href="https://orcascan.com">Orca Scan</a> and create a new worksheet.</li>
        <li>Remove all columns from it except the <i>Barcode</i> column.</li>
        <li>Upload the created XLSX file using the <b>Import</b> command, or enter the data into the <i>Barcode</i> column manually.</li>
        <li>In the table, select the values you want to print and open the <i>Barcode Labels</i> menu in the left bar.</li>
        <li>Select the type of labels you want to print (e.g. barcode or QR) from the menu.</li>
        <li>Use the <i>Print Labels</i> command to print or download the labels to your device (PDF file).</li>
    </ol>

    <h2 id="orcascan">Orca Scan mobile app inventory</h2>

    <p>
        You can use the paid <a href="https://orcascan.com/">Orca Scan</a> app for mobile phones and some barcode scanners to take asset check using barcodes. Follow these steps:
    </p>

    <ol>
        <li><a href="stocktaking">Take asset check</a>, create a reader file and assign the required assets to it.</li>
        <li>Use the <b>File - Export XLSX</b> command and select the property containing the barcode values. If an asset has a barcode value stored in another property (e.g. <i>Serial Number, Inventory Number</i>), then open the file in <i>Microsoft Excel</i> and copy the values from the corresponding cells in the <i>Barcode</i> column. You can delete the rows that do not have a value in the <i>Barcode</i> column from the workbook, as they will not be inventoried anyway.</li>
        <li>Register for <a href="https://orcascan.com/">Orca Scan</a> and install the app on your mobile phone or other device.</li>
        <li>Create a new sheet in the web app and remove all columns except the <i>Barcode</i> column.</li>
        <li>Upload the XLSX file using the <b>Import</b> command. All necessary columns will be automatically created and all data will be replaced with the data from the imported file.</li>
        <li>If this is the first time you have imported the file, right-click in the <b>Date</b> column header and select <b>Edit column</b>. Set the <b>Data type</b> item to those of <b>Date Time (automatic)</b>. Similarly, for the <b>ObjectId</b> column, turn on the <b>Readonly</b> option.

  <div class="tip">
      <div class="icon"></div>
      <div class="title">Tip:</div>
      For the columns you want to see in the asset list in the mobile app, turn on the <b>Edit column</b> option in the <b>Show in mobile list</b> menu. The first column with this option is shown as the asset name, the others as other items. If you enable this option in the <b>Date</b> column, you will then be able to sort the assets in the mobile app from not found to already found. In the mobile app, use the filter button in the top bar and select the <b>Sort by</b> column from the <b>Sort by</b> menu.
  </div>

            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                For columns that you don't want to edit when confirming a property (or creating a new one), turn on the <b>Edit column</b> option in the <b>Hidden</b> menu.
            </div>
        </li>
        <li>Open the <i>Orca Scan</i> mobile app and pair it with the web app.</li>
        <li>In the mobile app, switch the sheet to newly created and the bookmark to <i>cloud</i>.</li>
        <li>Use the <b>Scan</b> button in the mobile app to retrieve the barcodes of all inventoried devices one by one. After reading the barcode, always check the correctness of the values in the fields and change them if necessary.
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                If you are doing asset check by room or user, you can group your records by these columns. In the mobile app, use the filter button in the top bar and select <b>Group by</b>
                select the appropriate column.
            </div>
        </li>
        <li>After completing the asset check, use the <b>Export</b> command in the <i>Orca Scan</i> web app to download the XLSX (Microsoft Excel) file to your computer.</li>
        <li>Open the downloaded file in <i>Microsoft Excel</i>, enable editing in the top yellow bar under the command bar, and save the file.</li>
        <li>In the <i>AM Console</i> in the <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">asset check</a> window, use the <b>File - Import XLSX</b> command and select the downloaded file.</li>
        <li>Then <a href="stocktaking">process the results</a> of the asset check.</li>
    </ol>

</asp:Content>
