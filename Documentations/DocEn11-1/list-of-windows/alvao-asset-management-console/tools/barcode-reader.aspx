<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Barcode Reader Manager</h1>
	<p>In this window you can work with the codes read from the barcode scanner. <br/>
	<br/>
	To scan codes, select the <strong>Symbol CS1504</strong> or <strong>Opticon OPN-2001</strong> reader.
	The codes read in the AM Console can then be selected and entered as a property value (e.g., as a serial number), bulk create objects from the selected codes, set the time, and delete the contents of the reader.</p>

	<ul>
 <li><strong>Codes inside the reader</strong> - display the list of barcodes read from the reader.</li>
 <li><strong>Options:</strong>
  <ul>
 <li><strong>Load Codes</strong> - retrieve codes from the reader.</li>
 <li><strong>Set Time</strong> - set the correct time inside the reader.</li>
 <li><strong>Clear Reader</strong> - clear all codes inside the reader.</li>
 <li><a href="barcode-reader/object-prototype">Create objects</a> - setup bulk import of objects from selected barcodes. This option is only active if a node is selected in the tree and the manager is opened from the button bar or menu.<br/> Objects will be created in the tree under the currently selected node.</li>
 <li><strong>Status &quot;used&quot;</strong> - set the <em>used</em> status (icon with green check mark) to the selected codes.</li>
 <li><strong>Status &quot;deleted&quot;</strong> - setting the status <em>deleted</em> (icon with red cross symbol) to selected codes . These codes are only erased virtually in the program memory, not inside the reader. (The <strong> button is used to erase the reader.
 Clear Reader</strong>).</li>
 <li><strong>Search</strong> - searches for the selected code in the properties of all objects in the entire database and displays the search result.</li>
 <li><strong>Select</strong> - if the window is opened using the barcode icon in the <em>Edit Property</em> window, one currently selected code can be transferred to the value of this property. The selected code will also be set to the <em>used</em> status.</li>
  </ul>
 </li>
 <li><strong>Show &quot;deleted&quot;</strong> - the list of loaded codes will also display codes that have been previously deleted.</li>
 <li><strong>Show &quot;used&quot;</strong> - in the list of loaded codes it will also display codes that have been previously used.</li>
	</ul>

	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 The contents of the code table and the code statuses (deleted, used) are stored only in the program memory and everything in this window is irretrievably lost when the AM Console exits.</div>

</asp:Content>
