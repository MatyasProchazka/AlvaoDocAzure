<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO Inventory Audits</h1>

    <p>With this module you can perform inventory of assets. The following inventory methods are available:</p>
    <ul>
        <li><a href="alvao-inventory-audits/web-asset-check">Web Asset Inventory</a>, which is entrusted to users for use, directly by those users in the <i>ALVAO WebApp</i>.</li>
        <li>Physical inventory using barcodes and the <a href="alvao-inventory-audits/physical-asset-check#orcascan">Orca Scan</a> application for mobile phones and certain barcode scanners.</li>
        <li>(Obsolete) Physical inventory using <a href="alvao-inventory-audits/barcode-reader">Zebra MC3xxx</a> series barcode readers running Microsoft Windows CE.</li>
    </ul>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        For smaller numbers of assets, you can also take inventory the classic way by checking off items on printed inventory lists. You can filter the assets to be inventoried e.g. on the <a href="../list-of-windows/alvao-asset-management-console/tab-view/objects">Assigned objects</a> tab, export them to MS Excel, edit the list and print them on paper. Finally, update the records in the object tree according to the inventory result.
    </div>

</asp:Content>
