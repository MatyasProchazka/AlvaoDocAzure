<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>License registry</h1>
<p>This Window displays and allows you to interact with any records of license purchases or sales. For more information, see <a href="../../../alvao-asset-management/software-management/licenses">
License registry</a>.</p>
<p>Options:</p>
  <ul>
  <li><strong>Main Menu:</strong>
  <ul>
	  <li><a href="license-registry/edit">Edit</a></li>
	  <li><a href="license-registry/view">View</a></li>
	  <li><a href="license-registry/tools">Tools</a></li>
  </ul>
  </li>

  <li> <strong>Filters:</strong>
  <ul>
 
 <li><b>Computer/user</b> - if you want to
 <em>License registry</em> to display only records for a specific computer/user, set it to this filter.<ul>
  <li><b>Button &quot;...&quot;</b> -
 opens a window with a list of computers and users, in which you can select one filtered object.</li>
  </ul>
  </li>
 <li><strong>Product</strong> - if you only want to display records for a specific product in <em>License Audit</em>, set it to this filter.<ul>
  <li><b>Button &quot;...&quot;</b> - opens a product list window in which you can select one filtered product.</li>
  </ul>
  </li>
  </ul>
  
  <li><strong>License Table</strong> - the table contains records of purchases or cancellations (e.g. sales) of individual software licenses.
 <li><img src="../../alvao-asset-management-console/LicIn.GIF" />
 Valid license, or <img src="../../alvao-asset-management-console/LicInInvalid.gif" />
 for a license that is issued for a product that is invalid in the software product library.</li>
 <li><img src="../../alvao-asset-management-console/LicOut.GIF" />
	 
 Cancellation or invalidation of the license, e.g. sale of part of the license, scrapping of the computer, donation of a computer with OEM software.   These records are used to record the history of changes in the license registry.</li>
 <li><img src="../../alvao-asset-management-console/LicInItem.GIF" /> Icon for valid license entry, or <img src="../../alvao-asset-management-console/LicInItemInvalid.gif" />
 for an item that is issued for a product that is invalid in the software product library.</li>
 <li><img src="../../alvao-asset-management-console/LicOutItem.GIF" /> An icon for an item with an invalid, revoked license.</li>
 </ul>
 </li>

  </ul>
  </li>


 </li>
 
 



</asp:Content>
