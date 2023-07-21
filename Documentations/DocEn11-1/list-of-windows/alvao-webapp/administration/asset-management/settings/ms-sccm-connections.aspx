<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>MS SCCM Connections</h1>
<p>Use this page to set up hardware and software detections using the <a href="../../../../../alvao-asset-management/implementation/detection/detection-way">MS SCCM</a> method.
	This page can only be viewed after activating the <a href="../../../../../modules/alvao-microsoft-endpoint-manager-connector">ALVAO Microsoft Endpoint Manager Connector</a> module.</p>
<p>Features:</p>
	<ul>
 <li>
  <strong>Command Panel</strong>
  <ul>
 <li><strong>New Connection</strong> - create <a href="ms-sccm-connections/create-connection">new connection</a></li>
 <li><strong>Edit</strong> - edit the selected connection</li>
 <li><strong>Delete</strong> - delete selected connections</li>
  </ul>
 </li>
 <li><strong>Connection table</strong> - contains all connections. Customize the table <a href="../../../../../alvao-asset-management/working-with-tables">as needed</a>.</li>
 
	</ul>

</asp:Content>
