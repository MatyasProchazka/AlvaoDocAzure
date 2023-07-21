<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>License and Installation Overview</h1>
<p>In this window you will find a comparison of purchased licenses and installed software.</p>
<p>Options:</p>
	<ul>
 <li>Main Menu<ul>
  <li><a href="license-and-install-overview/view">View</a></li>
  <li><a href="license-and-install-overview/table">Table</a></li>
  <li><a href="license-and-install-overview/actions">Actions</a></li>
  <li><a href="license-and-install-overview/tools">Tools</a></li>
  </ul>
  </li>
  <li><strong>Product Table</strong> - the top table contains a list of products. When you select a product in it, a list of computers on which the product is installed or licensed appears at the bottom of the window.</li>
  <li><strong>Devices and Users Table</strong> - The bottom table displays the devices and users on which the selected product in the top table is installed or assigned. Record types displayed:<ol>
 <li>Installations of the selected product, covered or not covered by a license.</li>
 <li>Unnecessarily assigned licenses for the selected product.</li>
 <li>Installations of another product that are covered by the license of the selected product (the information in the &quot;Installed product&quot; column is then different).</li>
</ol>

 </li>
	</ul>
  <h2>Product table columns</h2>

 <ul>
  <li><strong>Icon</strong> - icon <img src="../tools/stocktaking/Exclamation.png" />
  is displayed for products where there is a problem with the license, software profile, or product status.</li>
  <li><strong>Product</strong> - the name of the product.</li>
  <li><strong>Operating System</strong> - information on whether the product is an "operating system".</li>
  <li><strong>Publisher</strong> - the publisher of the product.</li>
  <li><strong>Installations without assigned licenses</strong> - number of installations of the product that are not covered by any license.</li>
  <li><strong>Risk</strong> - a numerical value that can be used to estimate the risk associated with using unlicensed software - this value shows the number = product price x number of missing licenses. In order to display this value, the price of the product needs to be added to the monitored products. The price can be set in the product overview e.g. using <strong>Software - Products (software)</strong>
 and inserting the value with the price of the respective software.</li>
  <li><strong>Installations assigned without reason</strong> - the number of licenses that are allocated but no product is installed that the license could cover.  
  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 "OEM" and "CAL" licenses are not counted in the number of unnecessary licenses allocated.</div>

  
  </li>
  <li><strong>Inconsistency</strong> - the difference between the number of licenses purchased and the number of installations. A negative number in this column means that the specified number of licenses for the product is missing. Purchased licenses should be entered in <a href="../../../alvao-asset-management/software-management/licenses">License registry</a>.
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Each product installation that does not have a license assigned draws just 1 license, even in the case of a kernel license. Therefore, in the case of installations with no kernel licenses assigned, this column will likely display a higher value than the actual number of free licenses. </div>

  </li>
  <li><strong>Licenses in stock (per device)</strong> - The number of available (free) licenses in stock for licenses per device. For multilicenses, &quot;999999&quot; is specified.</li>
  <li><strong>Licenses in stock (per user)</strong> - the number of available (free) licenses in stock for licenses per user. For multilicenses, &quot;999999&quot; is specified.</li>
  <li><strong>Licenses in stock (per core)</strong> - the number of available (free) licenses in stock for licenses per core.</li>
  <li><strong>Total Licenses (per device)</strong> - the total number of licenses purchased per device.</li>
  <li><strong>Total Licenses (per user)</strong> - the total number of licenses purchased per user.</li>
  <li><strong>Total licenses (per core)</strong>- total number of licenses purchased per core</li>
  <li><strong>Unlimited/Floating</strong> - (unlimited number of licenses) - a value of Yes means that we have an unlimited number of licenses available.</li>
  <li><strong>Installations</strong> - the total number of times the product has been installed on computers on the network.</li>
  <li><strong>Special Installations</strong> - This attribute indicates a software installation that we don't want to draw a license, e.g., placing the product on a file server, a test installation of the product in the acceptance procedure, etc.</li>
  <li><strong>Shared License</strong> - the number of installations on laptops that are covered by a desktop license. Some products can be installed on both the desktop and laptop of a single user under a single license. This column indicates the number of installations on laptops.</li>
  <li><strong>Type</strong> - Type of software. This figure is for reference only. The same products may be sold under different licenses.</li>
  <li><strong>Audit</strong> - Should the product be displayed in this table? You can exclude a product from the evaluation by pressing the right mouse button on it and selecting the command from the menu -
  <a href="license-and-install-overview/audit">
  Audit...</a>, in which you select <strong>No</strong>.<br/>
  Hidden products will be visible in this window once you enable the display of unaudited products with <strong>Show -</strong>.
  Unaudited Products</strong>.</li>
  <li><strong>Parameter1</strong> - the user parameter of the product.</li>
  <li><strong>Parameter2</strong> - user product parameter.</li>
  <li><strong>Product description</strong> - note/description of the product.</li>
  <li><strong>Product Status</strong> - contains the set product status.</li>
  <li><strong>Approved Version</strong> - if the product status is set to "Approved" or "Approved - Scheduled for Decommissioning", this column contains the exact version of the approved product.</li>
  <li><strong>Product status updated by</strong> - this indicates the person who last made a change to the product status.</li>
  <li><strong>Product status updated</strong> - this indicates when the product status was last changed.</li>
  <li><strong>Will be excluded from operation</strong> - if the product status is set to "Approved - scheduled to be decommissioned", this column indicates the date on which the product status will change to "Decommissioned".</li>
  <li><strong>Request</strong> - if the product status is set to "Approving", the request number from the Service Desk where this approval is being resolved can be entered here.</li>
  <li><em>Custom Product Items</em></li>
 </ul>

	<h2>Device and User Table Columns</h2>
 <ul>
  <li><strong>Error Message</strong> - displays the error of the assigned license, Software Profile, or product status. Icon <img src="../tools/stocktaking/Exclamation.png" />
  is displayed if the column displays any error message.</li>
  <li><strong>Record kind</strong> - display the record type: <ul>.
  <li><img src="../tab-view/software/SwInstallation.GIF" /> <strong>
  Installation</strong> - the product is installed on the computer. The status of the license or software profile is displayed in the appropriate columns.</li>
  <li><img src="../tab-view/software/SwLic.PNG" /> <strong>
  License</strong> - the license for the selected product is assigned to computers. It can be:</li>
  <ul>
 <li>"CAL" license,</li>
 <li>redundantly assigned license,</li>
 <li>licenses covering installations of another product.</li>
 <p>For more information, see the "License Status", "License Type", and "Installed Product" columns.
 </p>
  </ul>
  <li><img src="../tab-view/software/SwProfReq.GIF" /> <strong>
  Required product</strong> - the computer is missing an installation of a product that is defined as "required" in the software profile.</li>

  </ul>
  </li>
  
  <li><strong>Object</strong> - the name of the object in the tree on which the product is installed or licensed.</li>
  <li><strong>Path in tree</strong> - display the path in the tree where the displayed object is located.</li>
  <li><strong>Above Object</strong> - The parent object in the tree (e.g., User) under which the asset is located.</li>
  <li><strong>License Status</strong> - Displays the license status for the selected product on the selected computer. Possible values.
 <li><strong>Not needed</strong> - the license for the product is not needed (it is a Freeware product).</li>
 <li><strong>Allocated</strong> - the license for the product is allocated.</li>
 <li><strong>Missing</strong> - a license for the product is not assigned but is needed (the product is commercial/shareware). This is an error condition.</li>
 <li><strong>Overflowing</strong> - A license for the product is assigned to the computer, but the product is not installed on the computer (the computer is drawing a license unnecessarily). This is an error condition.</li>
 <li><strong>Special</strong> - the installation is marked as special (shareware product, trial installation, etc.).
 The license in this case is guarded by the system administrator.</li>
 <li><strong>Shared</strong> - a computer shares a license with another computer (e.g. a laptop shares a license with a desktop computer).</li>
  </ul>
  <p>You can assign a license to a computer either in the license acquisition record in the License registry (see. <a href="../../../alvao-asset-management/software-management/licenses">
  License registry</a>) on the <strong>License Items</strong> tab,
  or by clicking on a computer in this list and selecting the command - Allocate a license to a computer... from the menu, which opens <a href="license-and-install-overview/actions/allocate-license">
  Allocate license</a> window with free unallocated licenses or the command - Allocate license to computer automatically, which will automatically select the first free license. The command - Remove Computer License is used to remove the license.</p>
  </li>
  <li><strong>License from a product</strong> - the name of the product whose license covers the product installation.</li>
  <li><strong>License</strong> - the name of the license that covers the product installation.</li>
  <li><strong>License Type</strong> - the type of license.</li>
  <li><strong>License Model</strong> - per device, per user, per connection, per processor.</li>
  <li><strong>Number of assigned licences</strong> - the number of licenses assigned to the object</li>
  <li><strong>Activation Key</strong> <strong>(license)</strong> - -
  activation key of the assigned license item.</li>
  <li><strong>License Inventory Number</strong> - the inventory number of the assigned license item.</li>
  <li><strong>(License) cost center</strong> - the cost center to which the license is assigned.</li>
  <li><strong>Organisation (licence)</strong> - the organisation to which the licence is assigned.</li>
  <li><strong>License created by</strong> - the person who created the license.</li>
  <li><strong>The license has been created</strong> - the date on which the license was created.</li>
  <li><strong>License assigned/removed by</strong> - the person who assigned the license (if assigned) or the person who last revoked the license (if not assigned).</li>
  <li><strong>License assigned/removed</strong> - the date the license was last assigned or revoked, if applicable.</li>
  <li><strong>Note to license</strong> - display the note listed for the license, shared license, or special installation -.
  depending on the license coverage of the product on the computer.</li>
  <li><strong>Document</strong> - the designation of the document for which the assigned license was purchased (the document is listed with the license purchase).</li>
  <li><strong>Shares license with</strong> - display the name of the object from which the license is shared - computer or user.</li>
  <li><strong>Product</strong> - display the selected product (may be useful if multiple products are selected at once in the top list).</li>
  <li><strong>Installed Product</strong> - the exact name of the installed product recognized by the SWLIB software product library.</li>
  <li><strong>Special Installation</strong> - a value of Yes indicates that this is a special installation of the product. You can change this value by pressing the right mouse button on the item and selecting - Special Installation from the menu.</li>
  <li><strong>Installed</strong> - the date the product was installed.</li>
  <li><strong>Installed by</strong> - the person who performed the installation.</li>
  <li><strong>Detected Product</strong> - the exact name of the installed product as detected from the system registry or an executable file.</li>
  <li><strong>Detected Version</strong> - the exact version value of the installed product detected by detection from the system registry or from an executable file.</li>
  <li><strong>Detected ProductID</strong> - the ProductID value of the installed product as detected by detection from the system registry or from an executable file.</li>
  <li><strong>Activation Key (detected)</strong> - display the detected activation key of the product.</li>
  <li><strong>Software from (last software detection)</strong> - the date when the software detection was last evaluated on the computer.</li>
  <li><strong>Software Profile Status</strong> - displays an indication of the status of the product installation against the software profile definition. Possible values.
 <li><strong>Optional</strong> - the product is defined in the profile as optional, or the <strong>option is set for the computer.
 All software is enabled</strong>. In this case, product installations are not tracked against the software profile.</li>
 <li><strong>Mandatory</strong> - the product is defined as mandatory in the profile.</li>
 <li><strong>Disabled</strong> - the product is defined as disabled in the profile. The product is installed, but is disabled - e.g. someone installed the product without admin approval, etc.  All products that are not enabled in the profile are disabled by default (unless all software on the computer is enabled). This is an error condition.</li>
 <li><strong>Missing</strong> - The product is defined as mandatory in the profile, but is not installed on the computer. This status is an error.</li>
  </ul>
  <p>The profile settings for the computer can be set in the object tree by invoking the command - Edit.... Then the profile can be set up on the <strong>Page</strong>.
  Object - Software Profile</strong> (this tab is only visible for objects of type &quot;computer&quot; and &quot;computer assembly&quot;). Profile settings can also be made in bulk on the <strong>Objects - Software tab.
  Computers</strong> by invoking the <strong>Change Software Profile...</strong> command from the context menu.</p>
  </li>
  <li><strong>Any properties</strong> of the object in the tree (computer or user) on which the product is installed or licensed. The columns are named by the property name with a "(object)" suffix.</li>
  </ul>

 <p>Columns for module <a href="../../../modules/alvao-sam-assistant">ALVAO SAM Assistant</a>:</p>
 <ul>
  <li><strong>Alerts sent</strong> - total number of alerts sent.</li>
  <li><strong>Last Alert</strong> - the date on which the last alert was sent.</li>
  <li><strong>Next scheduled alert</strong> - the date on which the next alert will be sent.</li>
</ul>
 <p>In the bottom table, you can also view any computer property value (even inherited), custom license entries, and custom product entries.</p>
 <p>You can print the table contents using the <strong>Table -
 Print</strong> from the local menu, or you can further process the table in Microsoft Excel with <strong>Table - Analyze in MS Excel Table</strong>.</p>

	<h2>Use scenarios</h2>

 <ul>
  <li>SAM manager controls the legality of software use in the organization. It looks for software installations that are not covered by licenses and resolves them.</li>
  <li>SAM manager checks for unnecessary purchases of software licenses. Locates unnecessarily allocated licenses and stock licenses.</li>
  <li>Checks whether the detected product activation key matches the activation key of the allocated license item.</li>
  <li>Exports summary of selected products (installations on computers) to MS Excel</li>
 </ul>
	
 <h3>Checking for missing licenses</h3>
  <ol>
 <li>In the AM Console, use the <strong>Software -
 Overview of Licenses and Installations</strong>.</li>
 <li>Select the <strong>View</strong> from the top and bottom lists.
 Missing Licenses</strong>.</li>
 <li>The top list shows the number of installations that are not covered by any license in the Installations with no licenses assigned column.<br />
 For each product: <ol>.
 <li>Select the product in the list with the mouse. In the list below, click the mouse button to select the product and click on it to display the list of computers that are missing licenses.</li>
 <li>Select these computers in the bottom list and assign a license to them using the &quot;Assign license&quot; or &quot;Assign license automatically&quot; commands.</li>
 </ol>
 </li>
  </ol>

  <h4>Prioritisation by risk of sanction</h4>
 
 <p>First, address licenses for products that pose the greatest risk of penalty to the organization in the event of a software audit.</p>
 <p>Recommended course of action:</p>
 <ol>
 <li>In the AM Console, use the Software - Products command.</li>
 <li>Find the major products used in your organization in the list and use the Edit command to add the indicative price of 1 license (Product - Price tab). Significant products are those that are installed on a large number of computers or have a high license price.</li>
 <li>In the top list, display the Risk column. This column displays the total cost of potentially missing licenses for the product.</li>
 </ol>

  <h4>Orientation control without license allocation</h4>
  If you do not want to assign licenses to specific computers, you can check licenses only by the Inconsistency column, which must be zero or a positive number.  
 <h3>Finding unnecessarily assigned licenses</h3>
  
  <ol>
 <li>In the AM Console, use the Software command - &quot;Overview of licenses and installations&quot;.</li>
 <li>Select the <strong>View</strong> from the top and bottom lists.
 Unnecessarily assigned licenses</strong>.</li>
 <li>Select one product from the list. The bottom list displays the computers on which the license is allocated but the product is not installed. You can remove the license from the computer by using the &quot;Remove Computer License&quot; command from the local menu.</li>
  </ol>
  <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 An item with a shared license in the bottom list is displayed without an icon to warn of an unassigned license. Also, in the case of a special installation, it is assumed that the system administrator is guarding such a license.</div>

 <h3>Check if the detected product activation key matches the activation key of the assigned license</h3>
  
  <ol>
 <li>From the main menu, use <strong>Software - License and Installation Overview</strong>.</li>
 <li>The <strong>License and Installation Overview</strong> window will appear.</li>
 <li>Select a specific product - the bottom table will display the product installation.</li>
 <li>Check that the values in the <strong>columns match
 Activation Key (detected)</strong> and <strong>Activation Key (license)</strong>.</li>
  </ol>

 <h3>Export overview of selected products (installation on computers) to MS Excel</h3>

  <ol>
 <li>Select multiple products in the top list.</li>
 <li>The bottom list shows the computers on which the selected products are installed (or have a surplus license). The <strong>Product</strong> column displays the product name.</li>
 <li>In the bottom table from the local menu, use the <strong>
 Table - Analyze in MS Excel spreadsheet</strong>.</li>
 <li>MS Excel will be displayed with a summary of the selected products.<br />
 Note: The current table view will be transferred to MS Excel -
 order and visibility of columns.</li>
  </ol>

 <h3>Updating installation records</h3>
 If the list below shows computers from which the product has recently been uninstalled, you can take a current software detection on those computers as follows:<ol>
 <li>Select the desired software from the top list.</li>
 <li>In the bottom list, select the computers that should no longer have the software.</li>
 <li>From the local menu, select <strong>Detect...</strong>.</li>
 <li>A window will open to create a request for new detection, where you can set the desired detection method and, if necessary, enable the <strong>
 Detect and evaluate immediately</strong> to ensure that you see the changes in your records as soon as possible. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 If you select the "autonomous agent" detection method, detection will be performed depending on the current interval of the agent contacting the web service. </div>

 </li>
  </ol>


</asp:Content>
