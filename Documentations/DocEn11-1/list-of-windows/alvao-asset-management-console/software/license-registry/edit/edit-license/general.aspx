<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
<p>This tab allows you to edit the basic license information written in <a href="../../../../../../alvao-asset-management/software-management/licenses">
Licence registry</a>.</p>
	<p>Options:</p>
	<ul>
 <li><strong>License Name</strong> - enter the full name of the license. By default, the name is the same as the product name. If you are working with <a href="../edit-license">
 License Package</a>, you need to enter the license name manually.</li>
 <li><a href="../../../products">Product</a>
 - select the product name from the menu or use the <strong> button
 ...</strong>
 button to select it in the Products window. Use the <strong>&quot;pencil&quot;</strong> button to view/edit the product.</li>
 <li><strong>Language</strong> - enter the language of the license.</li>
 <li><strong>Count</strong> - enter the number of licenses you own.</li>
 <li><strong>Licensing Model</strong> - select the licensing method or CAL: <ul>
 <li><strong>per device</strong> - allocate license items to computers.</li>
 <li><strong>per user</strong> - allocating license items to users. The license then covers all of the user's computers (i.e., computers that the user has under in <a href="../../../../../../alvao-asset-management/implementation/tree-design">
 object tree</a>).</li>
 <li><strong>per connection</strong> - typically for server licenses, the number of active connections is limited.</li>
 <li><strong>per processor</strong> - typically server products are licensed by the number of processors.</li>
 <li><strong>per core</strong> - typically server products are licensed <em>per core</em>, i.e. by the number of compute cores in the processor.</li>
  </ul>
 </li>
 <li><strong>License Mode</strong> - select a license mode from the menu or enter your own.</li>
 
 <li><strong>Valid from</strong> - entering the date of the beginning of the license validity.</li>
 <li><strong>Valid to</strong> - enter the expiry date of the licence if the licence is time limited.</li>
 <li><strong>Upgrade/Support Until</strong> - write the date when the product support expires (and an upgrade is required).</li>
 <li><strong>Reminder</strong> - write the date when the system should remind you of the upcoming expiration of, for example, a time-limited license or to renew the product. The reminder will appear in the reminder list and automatically alert at the specified time.</li>

 
 <li><strong>License type</strong> - select the license type.  <ul>
 <li><strong>Normal</strong> - normal license or multilicense.</li>
 <li><strong>Unlimited volume license</strong> - license for unlimited installations, uses and users.</li>
 <li><strong>Floating</strong> - use of licenses is protected by special software, hardware key or access rights. A license can be assigned to more entities than the number set in the number field.</li>
 <li><strong>OEM</strong> - OEM license when a new computer or device (component) is purchased.</li>
 <li><strong>CAL</strong> - a CAL (client access license), or a license for a product that has no installation on the computer. This license will not be reported as "surplus".</li>

  </ul>
 <li><strong>Hardlock</strong> - enable if the license requires hardware key protection. The "Hardlock" flag can only be registered for a floating license.</li>
 <li><strong>License Package</strong> - enable if the license is part of a package.</li>
 <li><strong>Cover components without package installation</strong> - disable if this license doesn’t cover the installations of parts of the package unless the package is installed. This option doesn’t affect packages on the Substitute products tab, where parts installations are always covered regardless of the installation of the package.</li>
 <li><strong>Assign automatically</strong> - turn on if the system should automatically allocate and remove this license to all computers in the active inventory. This option cannot be enabled if the Licensing Model is set to <em>&quot;per user&quot;</em> or <em>&quot;per kernel&quot;</em> or if the <em>License Type</em> is of type <em>OEM license</em>.
  <br />If this option is active:
 <ul>.
 <li>The system allocates this license whenever there is any product installation that can be covered by this license and at the same time that installation is not covered by another license.</li>
 <li>If the product is uninstalled (detected or manually), the system automatically releases the license again: <ul>
 <li>If any data is entered in the item (serial number, inventory number, cost center, etc.), the item will only cancel the computer.</li>
 <li>The system automatically releases only items that have been automatically allocated. Manually allocated items are not automatically unallocated.</li>
 </ul>
 </li>
 <li>It is possible to manually allocate or move licenses (even those that were previously allocated automatically).
 <br />If an item is manually allocated, the system will not automatically remove it, but it will remain permanently allocated.</li>
 <li>Licenses are automatically assigned according to cost center priority:<ul>
 <li>Cost center license and computer match (both can be blank).</li>
 <li>License cost center is empty (the license is purchased for the entire organization and therefore the computer cost center can be any).</li>
 </ul>
 <br />The system therefore does not automatically assign a license to a computer with a different cost center (but it is possible to do this manually).</li>
 <li>Automatic assignment/deassignment occurs: <ul>
 <li>After some time after saving the license with the &quot;Automatically assign&quot; option enabled.</li>
 <li> Immediately after any evaluation of the SW detection of the computer (AM Collector, manual loading of the detection result into the AM Console).</li>
 <li>Once a day (at night) using the AM Collector. All computers in the inventory that can be assigned/unassigned some licenses are searched.</li>
 </ul>
 </li>

 <li><a href="../auto-assign-license-settings">[Settings ...]</a></li>
  </ul>
 </li>
 <li><strong>Allow multiple license assignment to a single object</strong> - enable if it is possible to assign a license multiple times to the same object.</li>
 </li>
 
 <li><strong>Activation Key</strong> - Enter the license activation key. If you enter an activation key for a license, all newly created license entries will have the activation key automatically added according to the license's prescription. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 This value will be stored in the database in unencrypted form! </div></li>
 <li><strong>Inventory number</strong> - specify the inventory number under which this license will be recorded in the accounting system.</li>
 <li><a href="../../../../tools/lists/documents">
 Certificate</a> - to select a certificate from the document register.</li>
 <li><strong>Request</strong> - enter the number of the request related to the license (e.g., the purchase request to which the purchased license relates).</li>
  <li><strong>Organization</strong> - select the organization for which the purchased license is intended. If you do not select any value, the license will be available for all organizations. This field is only displayed to users who have the
  <a href="../../../../../alvao-webapp/administration/asset-management/software-licenses-security">Software License Security</a>.
  Set permissions to change licenses from at least one organization.  </li>
 <li><strong>Cost Center</strong> -&nbsp; specify <a href="../../../license-and-install-overview/view">
 cost center</a> for which the purchased license is intended. If you do not enter any value, the license will be available for all cost centers.</li>
 <li><strong>Price</strong> - specify the price at which the license was purchased. Enter the value in integer form.</li>
 <li><strong>Download website URL</strong> - enter the address where the software was downloaded from if it is an <em>internet license</em>.</li>
 <li><strong>License ID in external system</strong> - enter the license identifier in the external system from which <a href="../../../../../../alvao-asset-management/software-management/import-lic">automatically retrieves</a> the current information about the license.</li>
 <li><strong>Note</strong> - enter a note about the license you purchased.</li>
	</ul>
</asp:Content>
