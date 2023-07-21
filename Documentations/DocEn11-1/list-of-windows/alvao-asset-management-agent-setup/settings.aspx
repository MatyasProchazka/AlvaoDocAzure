<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Settings</h1>
	<ul>
 <li><strong>Asset Management WebService</strong> - enter the address (URL) of the AssetWebService, which is usually in the format: https://server/assetwebservice/assetwebservice.asmx.</li>
 <li><strong>Authentication code</strong> - enter the authentication code for the Agent to communicate with the ALVAO Asset Management WebService.</li>
 <li><strong>Communicate using TCP/IP connection (legacy)</strong>
 - Select this option only if you want to use the Agent in a mode that is compatible with ALVAO 7.1 and earlier versions.<ul>
 <li><strong>Use default TCP port (760)</strong> -
 The Agent will use the default port when communicating with the AM Collector application.</li>
 <li><strong>Use custom TCP port</strong>-
 Enter the port number if you do not want to use the default.</li>
 </ul>
 </li>
	</ul>

<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>These settings are stored in the registry, in the <em>HKEY_LOCAL_MACHINE\Software\ALC\ ALVAO Asset Management\Agent branch</em>,
	key &quot;WSUrl&quot;, &quot;AuthenticationCode&quot;, &quot;UseTCPConnection&quot;.
</div>

</asp:Content>
