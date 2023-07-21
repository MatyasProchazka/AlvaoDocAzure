<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Installation Settings - Asset Management</h1>
	<ul>
 <li><strong>Collector</strong>
  <ul>
 <li><strong>Run under an account</strong> - if you want to use <a href="../../../alvao-asset-management/implementation/detection">agentless detection</a> HW/SW, enter the login credentials of the account under which the AM Collector service is to run. The specified account must have the <em>Administrators</em> role on the detected end stations.
 <ul>
 <li><strong>User Name (domain\login)</strong></li>
 <li><strong>Password</strong></li>
 </ul>
 </li>
 <li><strong>Local System Account</strong> - unless you will be using <a href="../../../alvao-asset-management/implementation/detection">agentless detection</a>,
 you can have the service run under a local system account.</li>
  </ul>
 </li>
 <li><strong>Asset Management WebService</strong>
  <ul>
 <li><strong>URL</strong> - edit the service address if necessary. For example: <span class="console">http://app.company.com/AssetWebService/AssetWebService.asmx</span>.</li>
 <li><strong>Further settings</strong>
 <ul>
 <li><strong>Virtual Folder Name (Asset Management WebService)</strong> - option to set the virtual folder name for the Asset Management WebService. The default folder name is <em>AssetWebService</em>.
 </li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>
</asp:Content>
