<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New connection</h1>
<p>Use this form to create a new connection to <a href="../../../../../../modules/alvao-microsoft-endpoint-manager-connector">MS SCCM</a>.</p>
<p>Features:</p>
	<ul>
 <li>
  <strong>Connection Type</strong> - Select the connection type.  <ul>
 <li>
 <strong>Administration Service</strong> - Select if you want Collector to read data through the Administration Service. <ul>
 <li><strong>URL</strong> - Enter the URL to the Administration Service. For example, <span class="console">https://cmg.cloudapp.net/CCM_Proxy_ServerAuth/12345678987654321/AdminService/</span>.</li>
 <li><strong>User Name</strong> - enter the user's login name to connect to the Administration Service.</li>
 <li><strong>Password</strong> - enter the user's password.</li>
 <li><strong>Application (Client) ID</strong> - enter the GUID of the native client application registered in Azure to connect through the Cloud Management Gateway.</li>
 <li><strong>OAuth 2.0 (v2) Token Endpoint</strong> - to connect through the Cloud Management Gateway, enter the URL of the access point of the native client application to obtain the authorization token.</li>
 <li><strong>URL identifier for the application ID</strong> - to connect through the Cloud Management Gateway, enter the URL of the Azure-registered web application.</li>
 </ul>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The Administration Service is only available in SCCM from version 1810 onwards.</div>
 </li>
 <li>
 <strong>Database</strong> - select if you want Collector to read data by directly connecting to the SCCM SQL database. <ul>
 <li><strong>Connection String</strong> - enter the connection string to the MS SCCM database.<br />
 For example <span class="console">Data Source=localhost;Initial Catalog=CM-SITE;Integrated Security=SSPI;Provider=sqloledb</span>.
 </li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>


</asp:Content>
