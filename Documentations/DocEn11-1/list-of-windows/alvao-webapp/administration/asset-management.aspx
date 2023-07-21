<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Asset Management</h1>
  <p>The menu in the <em>Administration - Asset Management</em> section is used to administer the <a href="../../../alvao-asset-management">ALVAO Asset Management</a> system.</p>
  <p>Features:</p>
  <ul>
  <li><a href="asset-management/print-report-templates">Print Report Templates</a> - management of REP-type print report templates, especially handover protocol templates.</li>
  <li><a href="asset-management/detect-profiles">Detect profiles</a> - manage detection profiles. Use detection profiles to easily set detection parameters for sw and hw computers in bulk.</li>
  <li><a href="asset-management/servers">Servers</a> - set up the AM Collector service, which can run on one or more servers on the network.</li>
  <li><a href="asset-management/document-folders">Document Folders</a> - manage document folders where authorized users then store documents.</li>
  <li><a href="asset-management/software-licenses-security">Software license security</a> - manage software license security for <a href="../../../alvao-asset-management/software-management/licenses">multiple organization license management</a>.</li>
  <li>Object Icons - manage icons for <a href="../../../alvao-asset-management/objects-and-properties">objects</a> and possibly their properties.</li>
  <li><a href="asset-management/software-profiles">Software profiles</a> - manage software profiles to help standardize and control the installation of software on computers.</li>
  <li><a href="asset-management/link-types">Link types between objects</a> - manage link types between objects. This section is only available if the <a href="../../../modules/alvao-configuration-management">ALVAO Configuration Management</a> module is enabled.</li>
  <li><a href="asset-management/settings">Settings</a> - additional settings for the ALVAO Asset Management system.</li>
  </ul>
</asp:Content>
