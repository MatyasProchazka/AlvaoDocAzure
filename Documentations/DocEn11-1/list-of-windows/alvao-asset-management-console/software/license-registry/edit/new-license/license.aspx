<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New license - license</h1>
  <p>
  This tab allows you to add information about the newly created license, which will be entered into <a href="../../../../../../alvao-asset-management/software-management/licenses">License registry</a>.
  </p>
  <p>Options:</p>
  <ul>
  <li><strong>License Name</strong> - enter the full name of the license so that you can uniquely identify the license later in the&nbsp;list. By default, the name is the same as the product name. If you are working with <a href="../new-license">License Pack</a>, you need to enter the license name manually.</li>
  <li><strong>Language</strong> - select the license language if the license is tied to a specific language. </li>
  <li><strong>Count</strong> - enter the number of licenses you own.</li>
  <li><strong>Licensing Model</strong> - select the licensing method or CAL: <ul>
  <li><strong>per device</strong> - assign license items to computers. </li>
  <li><strong>per user</strong> - allocate license items to users. The license then covers all of the user's computers (i.e., computers that the user has under in the <a href="../../../../../../alvao-asset-management/implementation/tree-design">object tree</a>).</li>
  <li><strong>per connection</strong> - typically for server licenses, the number of active connections is limited.</li>
  <li><strong>per processor</strong> - typically server products are licensed by the number of processors.</li>
  <li><strong>per core</strong> - typically server products are licensed <em>per core</em>, i.e. by the number of compute cores in the processor.</li>
  </ul>
  </li>
  <li><strong>License Mode</strong> - select a license mode from the menu or enter your own.</li>

  <li><strong>Valid from</strong> - entering the date of the beginning of the license validity.</li>
  <li><strong>Valid to</strong> - enter the expiry date of the licence if the licence is time limited.</li>
  <li><strong>Upgrade/support to</strong> - write the date when product support expires (and an upgrade is required).
 <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  You can be notified by email when your license or support is about to expire. For more information, see <a href="../../../../../../alvao-asset-management/implementation/maintenance-reports">Maintenance Reports</a>.
  </div>

  </li>


  <li><strong>License Type</strong> - select the license type.  <ul>
  <li><strong>Normal</strong> - normal (boxed) license.</li>
  <li><strong>Unlimited volume license</strong> - license for unlimited installations, uses and users.</li>
  <li><strong>Floating</strong> - use of the license is protected by special software, hardware key or access rights. A license can be assigned to more entities than the number set in the number field.  </li>
  <li><strong>OEM</strong> - OEM license when a new computer or device (component) is purchased.</li>
  <li><strong>CAL</strong> - A CAL (client access license), or a license for a product that has no installation on the computer. This license will not be reported as "surplus".</li>
  </ul>
  <li><strong>Hardlock</strong> - enable if the license requires hardware key protection. The "Hardlock" flag can only be registered for a "floating" license.</li>

  <li><strong>License Package</strong> - This option determines whether the license is included in the package. The option is set according to whether the <strong>License Package</strong> option was selected in the <a href="../new-license">New License - Product</a> window.</li>
  <li><strong>Cover components without package installation</strong> - disable if this license doesn’t cover the installations of parts of the package unless the package is installed. This option doesn’t affect packages on the Substitute products tab, where parts installations are always covered regardless of the installation of the package.</li>
      <li><strong>Assign automatically</strong> - turn on if the system should automatically allocate and remove this license to all computers in the active inventory. This option cannot be enabled if the <em>License Model</em> is
  of type <em>per user</em>
  or <em>License Type</em> is of type <em>OEM license</em>.
  <br />
  If this option is active: <ul>.
  <li>The system allocates this license whenever there is any product installation that can be covered by this license and at the same time that installation is not covered by another license.</li>
  <li>If the product is uninstalled (detected or manually), the system automatically releases the license again: <ul>
  <li>If any data is entered in the item (serial number, inventory number, cost center, etc.), the item will only cancel the computer.</li>
  <li>The system automatically releases only items that have been automatically allocated. Manually allocated items are not automatically unallocated.</li>
  </ul>
  </li>
  <li>It is possible to manually allocate or move licenses (even those that were previously allocated automatically).
 <br />
  If an item is manually allocated, the system will not automatically remove it, but it will remain permanently allocated.</li>
  <li>Licenses are automatically assigned by organization and cost center:<ul>
  <li>The organization of the license and computer match, and the cost center of the license and computer match (both can be blank).</li>
  <li>The license and computer organization match and the license cost center is empty (the license is purchased for the entire organization so the computer cost center can be any).</li>
  <li>License is not assigned to any organization and the license and computer cost center match (both can be empty).</li>
  <li>License is not assigned to any organization and the license cost center is empty (the license is purchased for the entire organization so the computer cost center can be any).</li>
  </ul>
  <br />
  Therefore, the system does not automatically assign a license to a computer with a different organization and cost center (but it is possible to manually assign a license from another cost center or another organization).</li>
  <li>Automatic assignment/deassignment occurs: <ul>
  <li>After some time after saving the license with the &quot;Automatically assign&quot; option enabled.</li>
  <li> Immediately after any evaluation of the SW detection of the computer (AM Collector, manual loading of the detection result into the AM Console).</li>
  <li>Once a day (at night) using the AM Collector. All computers in the inventory that can be automatically assigned/unassigned some licenses are searched.</li>
  </ul>
  <li><a href="../auto-assign-license-settings">[Settings ...]</a></li>

  </ul>
  </li>
  <li><strong>Allow multiple license assignment to a single object</strong> - enable if it is possible to assign a license to the same object multiple times.</li>


  <li><strong>Activation Key</strong> - if the license has only one activation key (multilicense), enter it in this field. Otherwise, enter activation keys in the field in the license entries. <div class="caution">
  <div class="icon">
  </div>
  <div class="title">
  Caution:</div>
  This value will be stored in the database in unencrypted form! </div>
 <div class="note">
  <div class="icon">
  </div>
  <div class="title">
  Note:</div>
  If you specify an activation key for a license, all newly created license entries will automatically have the activation key added according to the license's regulation. </div>

  
  </li>
  <li><strong>Inventory number</strong> - entering the inventory number under which this license will be recorded in the accounting system.</li>
  <li><a href="../../../../tools/lists/documents">Certificate</a> - select the certificate from the document register.</li>
  <li><strong>Request</strong> - enter the number of the request related to the license (e.g., the purchase request to which the purchased license relates).</li>
  <li><strong>Organization</strong> - select the organization for which the purchased license is intended. If you do not select any value, the license will be available for all organizations. This field only appears for users who have <a href="../../../../../alvao-webapp/administration/asset-management/software-licenses-security">Software License Security</a>.
  set permissions to change licenses from at least one organization.</li>
  <li><strong>Cost Center</strong> - specify the <a href="../../../license-and-install-overview/view">cost center</a> for which the purchased license is intended. If you do not enter any value, the license will be available for all cost centers.</li>
  <li><strong>Price</strong> - specify the price at which the license was purchased. Enter the value in integer form.</li>
  <li><strong>Web download address</strong> - enter the address where the software was downloaded from if it is an <em>internet license</em>.</li>
  <li><strong>Note</strong> - enter a note about the purchased license.</li>
  </ul>
</asp:Content>
