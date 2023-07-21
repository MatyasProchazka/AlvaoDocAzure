<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Stacking assets</h1>
    <h2>Preparation of stacking</h2>
    <div>
        <ol>
            <li>Check the contents of the delivery, especially the types of equipment and quantities.</li>
            <li><strong><em>Optional:</em></strong> Attach an inventory or registration number (a barcode label from a pre-printed series) to each item. Write the assigned inventory number or registration number in pencil on the delivery note for each item.</li>
            <li>If you are using a barcode scanner, take serial numbers from each item in turn.</li>
            If an item does not have a serial number, skip it.
	 <li><strong><em>Optional:</em></strong> If you are immediately assigning an inventory or record number when you stack, use the scanner to take the serial number of item 1, then the inventory (or record) number of item 1, the serial number of item 2, the inventory (or record) number of item 2, and so on for all items in the shipment. </li>
        </ol>
        <div class="tip">
            <div class="icon"></div>
            <div class="title">Recommendation:</div>
            If the item does not have a serial or inventory (or registration) number, remove another code instead to maintain the sequence serial number - inventory/registration number - serial number -
 serial number - inventory/registration number - etc. Then edit the list of retrieved codes after loading them into the computer.
        </div>
    </div>
    <h2>Loading</h2>
    <div>
        In the AM Console for each item on the delivery note in turn:
        <ol>
            .
  <li>Create an object (<a href="inserting-object-in-tree">Adding an object to the tree</a>) in the Warehouse folder (<a href="material-warehouse">Supplies Warehouse</a>).</li>
            <li>Fill in the properties for it:<ul>
                <li><strong>Name</strong> (the computer does not have this property),<strong>
 Manufacturer</strong>, <strong>Serial Number</strong>.</li>
                If multiple units of the same device are to be stocked, do not fill in the serial number. To be entered later
                <li><strong>Purchase Date</strong>, <strong>Supplier</strong>, <strong>Supplier</strong>, <strong>Supplier</strong>,
 <strong>Delivery note - number</strong></li>
                You can copy these properties from an already stocked asset <strong>from the same delivery note</strong> as follows:<ol>
                    <li>Select one already stocked property in the tree.</li>
                    <li>On the <strong>Properties</strong> tab, select the properties "Purchase date", Supplier, "Delivery note -
 Number" and press <strong>Ctrl+C</strong>.</li>
                    <li>Select the asset currently being stocked in the tree and press <strong>Ctrl+V</strong>. Confirm the overwrite of existing properties.</li>
                </ol>
                <li><strong>Warranty</strong> (date until which the warranty is valid)</li>
                <li><strong><em>Optional:</em> </strong>Enter "Inventory Number" or "Registration Number". If you are using a barcode scanner, you can retrieve the inventory number from the scanner similar to the serial number. If multiple pieces of the same equipment are to be stocked, do not fill in the inventory (or registration) number. It will be entered later.</li>
            </ul>
            </li>
            <li>If you are stacking a computer and need to assign licenses directly, use the "Assign licenses" command from the local menu.
            </li>
            <li>If multiple units of the same device are to be stacked, create additional objects as follows:
                <ul>
                    <li>Copy the first object.</li>
                    <li>Enter the "Serial Number" and possibly also the "Inventory Number"</li>
                </ul>
            </li>
            <li>Deliver the delivery note to the accounting department.</li>
        </ol>

        <div class="tip">
            <div class="icon"></div>
            <div class="title">Recommendation:</div>
            If the inventory number is assigned retrospectively and the asset does not have a serial or registration number and it is not clear from the name of the asset what item on the delivery note it is, add the asset ID in pencil to the relevant items on the delivery note. This will make it easier to identify the delivery note items in the accounts department.
        </div>
    </div>


</asp:Content>
