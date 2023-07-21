<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Database maintenance</h1>
  <p>Options:</p>
  <ul>
  <li><strong>Refresh data for reports</strong> - add columns representing new <a href="../../../alvao-asset-management/implementation/customization/database#view-list">database views</a> in the <em>Query</em> schema, which are for data analysis and reporting, to the <a href="../../../alvao-service-desk/implementation/custom-items">custom fields</a> of requests and new <a href="../../../alvao-asset-management/objects-and-properties">properties</a> of objects. This update does not need to be done before each analysis or report, but only after adding new custom fields or properties.</li>
  <li><strong>Optimize Performance</strong> - Update statistics and defragment indexes in the database and remove temporary data. This operation is performed <a href="../../../alvao-asset-management/implementation/installation/maintenance">regularly automatically</a>.
  Use this command only if the database performance has dropped and the Alvao system is slowed down.  <div class="caution">
	  <div class="icon"></div>
	  <div class="title">Caution:</div>
	  We do not recommend optimizing performance during system uptime, as it can take several minutes and applications may stop responding during that time.  </div>
	  <div class="note">
	  <div class="icon"></div>
	  <div class="title">Note:</div>
	  To optimize performance, you need to have <a href="../../../alvao-service-desk/implementation/installation/installation-server-manual">ALVAO Service</a> installed.
	  </div>
  </li>
  <li>
  <strong>Repair Database</strong>- Recalculate precomputed values in the database, such as auxiliary tables of language localizations, paths in the object tree (AM), object names generated from property values (AM), etc. This command is for emergency situations only and does not need to be run regularly.</li>
  </ul>



 

</asp:Content>
