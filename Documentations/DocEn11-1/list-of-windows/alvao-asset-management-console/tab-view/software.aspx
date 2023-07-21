<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Software</h1>
	
<p>When a computer is selected in the object tree, the table displays a list of programs that are installed on that computer. If another object (such as a department) is selected, the table lists the programs that are installed on its subobjects of the computer type.</p>
  <p>The Software tab also displays registry entries that were not according to <a href="../../../alvao-asset-management/software-management/custom-swlib">software product library</a> assigned to the correct product. Their display can be disabled in the <strong>Asset Management Console</strong> settings: the <strong>Tools</strong> menu.
  - <strong>Settings</strong> - tab <a href="../tools/settings/display">Display</a> - the <strong>Display unassigned registry entries</strong> option.</p>
  The different types of records are distinguished from each other by an icon: <ul>
 <li><img src="software/SwInstallation.GIF" /> <strong>Installation</strong>,
 or <img src="software/SwInstallationInvalid.gif" />,
 if the installed product is invalid in the software product library.</li>
 <li><img src="software/SwReg.GIF" /> <strong>Register</strong>
  - unrecognized registry entry.</li>
 <li><img src="software/SwLic.png" /> <strong>License</strong> - assigned license (license type "CAL"), or <img src="software/SwLicOverInvalid.gif" />,
 if the license product in the software product library is invalid. In the case of an unnecessarily assigned license (i.e. the product is not installed), the license icon is accompanied by <img src="../tools/stocktaking/Exclamation.png" />
 and the <strong>License Status</strong> column displays the <strong>Needed</strong> status. </li>

 <li><img src="software/SwProfReq.gif" /> <strong>Mandatory product</strong>,
 or <img src="software/SwProfReqInvalid.gif" /> if the application product in the software product library is invalid -
 i.e. the product is defined in the Software Profile as <em>mandatory</em>,
 but is not installed.</li>
  </ul>
  <p>Icon <img src="../tools/stocktaking/Exclamation.png" />
  indicates that there is a problem with the product's license or software profile. The text in the <strong>Error Message</strong> column will tell you more.</p>
  
<p>Software</strong> tab local menu options for <em>Software</strong>
computers and reports</em>:</p>
	<ul>
 <li><strong>Licence</strong>
 <ul>
  <li><a href="../software/license-and-install-overview/actions/allocate-license">
  Assign license</a> - allocate a license for the selected product.</li>
  <li><strong>Remove License</strong> - remove the license from the selected products installed on the computer selected in the tree.</li>
  <li><a href="../software/license-registry/edit/new-license">
  New license for this software</a> - create a new license for the selected product.</li>
  <li><a href="../software/license-and-install-overview/actions/license-cover">
  Cover by license</a> - cover the selected product with a shared license.</li>
  <li><a href="../software/license-and-install-overview/actions/special-installation">
  Special installation</a> - mark the selected license as special (not included in the software audit).</li>
  <li><a href="software/license-transfer">Move</a>
    - move the selected license to another computer or cost center.</li>
  <li><a href="../software/license-registry/edit/edit-license">
  Edit</a> - edit the selected license in <a href="../../../alvao-asset-management/software-management/licenses">
  License Log</a>.</li>
 </ul></li>
 <li><strong>Installation</strong>
 <ul>
  <li><a href="../software/installation-registry/record-installation">
  Record installation</a> - to enroll a new installation, the computer selected in the tree is preselected.</li>
  <li><a href="../software/installation-registry/record-uninstallation">
  Record uninstallation</a> - record the uninstall of the selected product from the computer selected in the tree.</li>
  <li><a href="../../../list-of-windows/alvao-asset-management-console/software/installation-registry">
  Installation registry</a> - opens the Installation Log of the computer selected in the tree.</li>
 </ul></li>
 <li><a href="software/recognition">Send SW for identification</a> - send selected records of type <strong>
 registry</strong> for software recognition.</li>
 <li><a href="properties/table-options">Table</a>
 - menu allows <a href="../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple rows.</li>
 <li><a href="properties/find">Find</a>
   - search for text in the displayed table.</li>
 <li><strong>Find parent product</strong> - find the parent product whose license covered the selected installation</li>
 <li><strong>Delete</strong> - remove installation information for the selected product installed on the computer selected in the tree.</li>
 <li><a href="../../../list-of-windows/alvao-asset-management-console/software/installation-registry/alter-installation">
 Edit</a> - edit the installation information for the selected product on the computer selected in the tree.</li>
	</ul>
<p>Local menu options of the <strong>Software</strong> tab for other objects:</p>
	<ul>
 <li><a href="../../../list-of-windows/alvao-asset-management-console/software/installation-registry">
 Installation Registry</a> - opens the Installation Registry.</li>
 <li><strong>Delete from registry</strong> - remove the selected entry from the installation registry.</li>
 <li><a href="software/recognition">Send SW for identification</a> - send selected records of type <strong>
 registry</strong> for software recognition.</li>
 <li><a href="properties/table-options">Table</a>
 - menu allows <a href="../../../alvao-asset-management/working-with-tables">
 customize the table</a>. For example, create filters, <a href="../../../alvao-asset-management/working-with-tables/table-views">
 views</a> or display multiple rows.</li>
 <li><a href="properties/find">Find</a>
   - search for text in the displayed table.</li>
	</ul>

</asp:Content>
