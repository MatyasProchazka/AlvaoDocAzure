<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Standard HW/SW Request Forms</h1>
    This module supports the process of requesting pre-approved hardware and software.
    <h2>Technical Requirements</h2>
    <ul>
        <li>ALVAO Asset Management</li>
        <li>ALVAO Service Desk</li>
    </ul>
    <h2>Installation</h2>
    <p>
        In the application <strong>ALVAO WebApp - Administration - Licenses</strong> select <strong>Insert Activation Key</strong> and enter the activation key that you obtain from your Alvao system vendor.
    </p>
    <p>
        On the server where the <b>ALVAO WebApp</b> is installed,
	run the installation package <b>AlvaoStandardHWSWRequestForms.msi</b>
        and follow the instructions in the wizard.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The module is only in Czech and is not localized to other languages.
    </div>

    <h2>Create a custom HW request form</h2>
    <p>
        Copy the Custom/Templates/StandardHwSwRequestForm/StandardHwSwRequestForm_Hw_NewTicket.cshtml file to the Custom/&lt;function_name&gt; folder and the Custom/Templates/StandardHwSwRequestForm/Code/StandardHwSwRequestForm_Hw_NewTicket.cs file to the Custom/&lt;function_name&gt;/Code/ folder. You can rename the files, but name both files (.cshtml and .cs) the same.
    </p>
    <ol>
        <li>In the namespace name at the beginning of the .cs file, replace the trailing "Templates.StandardHwSwRequestForm" with the name of the functionality, i.e. Alvao.ServiceDesk.ServiceDeskWebApp.Custom.&lt;functionality_name&gt;.</li>
        <li>If you have renamed the .cs file, change the class name (at the beginning of the file by the keyword class) to &lt;filename&gt;Controller.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The file names of all forms used must be unique. If you use multiple different forms, you need to ensure that the name of the StandardHwSwRequestForm_Hw_NewTicketController class is unique.
    </div>

    <h3>Devices offered</h3>
    <p>In the object tree, first define a list of categories and devices from which users will be able to select devices, e.g.:<o:p></o:p></p>
    <ol>
        <li>HW Request (type <em>HW Request - Catalog</em>)<ol>
            <li>Notebooks (type <em>HW request - category</em>)
 <ol>
     <li>Standard Laptop (type <em>HW Request - Item</em>)</li>
 </ol>
            </li>
            <li>Desktop computers (type <em>HW request - category</em>)<ol>
                <li>Standard PC (type <em>HW request - item</em>)</li>
            </ol>
            </li>
            <li>Monitors (type <em>HW request - category</em>)
            </ol>
            <li>Standard Monitor (type <em>HW Request - Item</em>)</li>
    </ol>
    </li>
	</ol>
	</li>
	</ol>

	<p>On the form, catalog items (of type <em>HW Request - Item</em>) show users all properties of the objects that have a value filled in, except for the system properties <em>Order, User Groups, and Hidden Properties</em>. You can add additional properties to the <em>HW Request - Item</em> object template as needed to display to users in the catalog.<o:p></o:p></p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>If you want to record additional properties in the item objects for catalog management purposes, but they should not be displayed to users in the form, in the <em>HW Request - Catalog</em> object in the <em>Hidden Properties</em> property, provide a comma-separated list of these properties, e.g. "Last updated (date), Url in supplier's e-shop".</p>
    </div>

    <p>
        Categories and items are displayed on the form in alphabetical order by object name. If you want to display objects in a different order, use the <em>Order</em> property.
 The objects will then be primarily sorted by the value of the <em>Order</em> property in ascending order, with objects that do not have this property filled in being displayed last. Objects with the same value in this property will be sorted secondarily alphabetically by object name.<o:p></o:p>
    </p>

    <p>We recommend writing values in the form e.g. "10 152" to the <em>Price</em> property. Before submitting the request, the total price of the ordered items will then be displayed to the user at the bottom of the form.<o:p></o:p></p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>If you want to offer some categories or items on the form only to some users, in the <em>User Groups</em> property, provide a comma-separated list of user groups to which the category or item should be offered. The user to whom the devices are intended is the decisive one. The Requester of the request can be someone else. If the <em>User Groups</em> property has an empty value, the object is displayed to all users.<o:p></o:p></p>
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <p>If you need to offer users items with significantly different properties in the catalog, you can define other object types in addition to the system type <em>HW Request - Item</em>. In the form, objects of any type are displayed to requesters as items.<o:p></o:p></p>
    </div>

    <h3 id="standard_hw_images">Device images</h3>
    <p>Create a note in the object log and insert the device image as an attachment. Images must be in JPG or PNG format. The recommended image size is 150x150 px.<o:p></o:p></p>
    <p>If a facility's log contains multiple notes with images attached, the form will display the image from the most recent note. If the note contains multiple images, the most recently inserted image is displayed. If there is no such note in the journal, the object is displayed on the form without an image.<o:p></o:p></p>

    <h3>Edit HW Request Form</h3>
    <p>In the .cs file before starting the <strong>LoadPage()</strong> function, you can edit the values of the variables:<o:p></o:p></p>

    <ol>
        <li><strong>folderName</strong> - enter the name of the folder including the path in the tree that contains each category of devices offered, e.g. <strong>&quot;HW request&quot;</strong>.</li>
        <li><strong>categoryObjectKind</strong> - specify the type of objects that represent the categories, e.g. <strong>"HW Request - Category"</strong>. Sub-objects of these categories will appear on the form as offered devices. Objects that do not have a <strong>categoryObjectKind</strong> will not be displayed on the form as category objects (and their subobjects will not be displayed).

  <div class="caution">
      <div class="icon"></div>
      <div class="title">Caution:</div>
      The user can request any child of the object specified by the <strong>folderName</strong> and <strong>categoryObjectKind</strong> variables (i.e., even an object that they would not have access to in the Asset Managment tree).
  </div>
        </li>
        <li><strong>categories</strong>
        - specify the category names (e.g. "Monitors, Laptops") to be displayed on the form. If the variable is empty, all categories are displayed.
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>
            The display of objects and their properties can be edited in the .cshtml file. For more information on editing forms, see <a href="../modules/alvao-sd-custom-apps/custom-form-template">Custom form for submitting a new request</a>.
        </p>
    </div>

    <h2>Create your own SW request form</h2>
    <p>Follow the same steps as creating a custom HW request form, but use the Custom/Templates/StandardHwSwRequestForm/Code/StandardHwSwRequestForm_Sw_NewTicket.cshtml and Custom/Templates/StandardHwSwRequestForm/Code/StandardHwSwRequestForm_Sw_NewTicket.cs files.</p>
    <p>
        The form displays software products that are in approved state, for more see <a href="../alvao-asset-management/software-management/product-state">product status</a>.
    </p>
    <p>It is not possible to set the display of images for individual products in this form.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>
            For more information on editing forms, see <a href="../modules/alvao-sd-custom-apps/custom-form-template">Custom form for submitting a new request</a>.
        </p>
    </div>

    <h2>Service Settings</h2>
    <p>
        In <b>ALVAO WebApp - Administration - Service Desk - Services</b>, create a service (for example, <b>IT/Request for New HW</b>),
	that will use the form, or use an existing one. Use one service for each form. Set up the form for this service.
    </p>
    <ol>
        <li>In <b>ALVAO WebApp - Administration - Service Desk - Services</b>, in the service tree, select the service (IT/New HW Request) and use the <strong>Edit - New Request Form</strong> command.</li>
        <li>Change the <strong>Form design</strong> section to <b>Custom Form (URL)</b> and set the value to the address used by the request form, for example <span class="console">~/Custom/&lt;feature_name&gt;/&lt;form_name&gt;</span>.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the address begins with <span class="console">http</span> or <span class="console">https</span>, it is used as is. Otherwise, the path to the root of the <b>ALVAO WebApp</b> is automatically added to the beginning.
    </div>
    <p>Set the service process. You can use an existing process or create a new one.</p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The status entered by creating a request must not have any mandatory items.
    </div>

</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">


    <style type="text/css">
        pre {
            margin-bottom: .0001pt;
            font-size: 10.0pt;
            font-family: "Courier New";
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
    </style>


</asp:Content>

