<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Install applications</h1>

<p>On this page you can download the latest versions of the Windows (MSI) application installation packages.</p>
<p>After downloading the installation package, run. In order to install the package on your computer, you must have the <em>Administrator</em> role on your computer.</p>
<p>If you already have an older version of the application installed on your computer, the installation package will update the existing installation to the new version.</p>

<div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  If the organization does not use <em>ALVAO Asset Management Agent</em> for HW/SW computer discovery (e.g., uses <a href="../../../modules/alvao-microsoft-endpoint-manager-connector">ALVAO Microsoft Endpoint Manager Connector</a>
  or <a href="../../../alvao-asset-management/implementation/detection">agentless detection</a>),
  Alvao Administrator can hide the link to the Agent package. The link can be hidden with an SQL script: <br /><code>update tProperty set bPropertyValue = 0 where sProperty = 'WebApp.Settings.InstallApplications.ShowAmAgentLink'</code>.
</div>

</asp:Content>
