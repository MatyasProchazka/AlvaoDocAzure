﻿<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Print</h1>

  <p>In this form, select the template of the print report you want to print and fill in additional information in the case of handover protocols.</p>

  <p>
  Options:</p>
  <ul>
  <li><b>Select a print report template</b> - type at least part of the name of the print report template you want to use, then select the template you are looking for in the drop-down menu.  <ul>
  <li><b>...</b> - or select the template in the table.</li>
  </ul>
  <div class="note">
   <div class="icon"></div>
   <div class="title">Note:</div>
	  Alvao administrators can customize the print reports menu in <b>WebApp - Administration - Asset Management</b> -
  <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a>.
  </div>
  </li>
  <li><b>Generate New Document</b> - enable if you want to save the created internal PDF handover protocol to the <a href="../../../../alvao-asset-management/documents">documents repository</a> as a new document.  <ul>
  <li><b>Document Folder</b> - select the <a href="../../../../alvao-asset-management/documents">folder</a>,
  folder where you want to save the document you created. This option is only available if you have permissions to multiple <a href="../../../../alvao-webapp/administration/asset-management/document-folders"></a> document folders.</li>
  </ul>
  </li>
  <li><b>Document Number</b> - Enter the document identification number. This entry is only available for <a href="../../../../alvao-asset-management/documents/transfer-protocols">transfer protocols</a>,
  whose number is not automatically generated by a number series.</li>

  <li><b>Sign method</b> - select the method of signing the internal handover protocol from the menu. The option is part of the module <a href="../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a>.</li>
  <li><strong>Transfer Date</strong> - enter the date the assets were actually transferred.</li>

  <li><strong>Issue date</strong> - enter the date of issue of the handover protocol.</li>
  <li><strong>Text</strong> - if applicable, enter the accompanying text that will appear on the handover protocol.</li>
  <li><strong>Person handing over</strong> - fill in the details of the person or organisation submitting the report.  <ul>
  <li><b>Internal Transfer Protocol</b> - display the details of the person who was responsible for the asset being moved before it was last moved (see the <a href="../../../../alvao-asset-management/implementation/tree-design">Asset Responsible</a> property).
  If such a person cannot be traced, your details are filled in here. The <strong>edit</strong> command opens a window in which you can select another person: <ul>
  <li>
  <strong>First and last name</strong> - enter at least part of the first or last name and then select the person you are looking for from the drop-down menu.   This will automatically populate the values of the <em>Personal Number</em> and <em>Location</em> properties of the corresponding object of type <em>User</em> in the following entries.
  </li>
  <li><strong>Personal Number</strong></li>
  <li><strong>Location</strong></li>
  </ul>
  </li>
  <li>
  <b>Transfer Protocol External</b> - displays the address of the organization where the object was before it was last moved.  The <strong>edit</strong> command opens a window in which you can change the address: <ul>
  <li><strong>Organization</strong> - enter at least part of the organization name and then select the organization you are looking for from the drop-down menu.   The value of the <em>Address</em> property of the object type <em>Organization</em> will be automatically filled in the following field.</li>
  <li>
  <strong>Address</strong> - if you want to manually edit the address, first clear the contents of the <em>Organization</em> field above. </li>
  </ul>
  </li>
  </ul>
  </li>
  <li><strong>Recipient</strong> - fill in the details of the person or organisation taking over.  <ul>
  <li><b>Internal Transfer Protocol</b> - display the details of the person who is currently responsible for the object being moved (see the property <a href="../../../../alvao-asset-management/implementation/tree-design">Responsible for the asset</a>).
  If such a person cannot be traced, your details are filled in here. You can select a different person with the <strong>edit</strong> command, see <em>Seller</em>.</li>
  <li><b>Transfer Protocol External</b> - displays the address of the organization where the object being moved is currently located. You can use the <strong>edit</strong> command to change the address, see <em>Submitter</em>.</li>
  </ul>
  </li>
  </ul>

</asp:Content>