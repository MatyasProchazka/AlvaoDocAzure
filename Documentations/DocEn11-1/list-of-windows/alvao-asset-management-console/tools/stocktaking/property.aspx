<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Assets</h1>
<p>In this Window you can write or edit the asset data found <a href="../../../../modules/alvao-inventory-audits/stocktaking">
Asset check</a>.</p>
	<ul>
 <li><strong>Object Kind</strong> - display the type of object being edited.</li>
 <li><strong>Object Name</strong> - display the name of the object in the tree.</li>
 <li><strong>Asset Kind, Asset Name, Inventory Number,...</strong>
 (<a href="../../../../alvao-asset-management/objects-and-properties">properties of the object</a>)
 <ul>
 <li><strong>Loaded (modified) values</strong> - enter valid values for object (property) properties. Values found during inventory are displayed.</li>
 <li><strong>Loaded (original) values</strong> - display the values of the object (asset) properties entered in the records before the start of the inventory.</li>
 </ul>
 </li>
 <li><strong>Asset check date</strong> - display the date of the inventory.</li>
 <li><strong>Asset check status</strong> - display the inventory result.</li>
 <li><strong>Locked for editing</strong> - turn on if you want to prevent further editing of this inventory item.</li>
 <li><strong>Transferred</strong> - the option is enabled if the asset has been transferred to another user based on the findings.</li>
 <li><strong>Processed</strong> - enable if the item has already been processed and the detected changes have been entered into the records. If this has already happened, the option is enabled.</li>
 <li><strong>Note</strong> - add any note if necessary.</li>
	</ul>
</asp:Content>
