<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New computer</h1>
<p>In this window you can create new computers in the Asset Management database. You can automatically create computers that are detected on the network, or manually add a computer.</p>
	<ul>
 <li><strong>Search for new computers on the network</strong> - select to search the network and create computers that are newly discovered on the network.</li>
 <li><strong>Create computer manually</strong> - select if you want to create a new computer in the database.  <ul>
 <li><strong>Object kind</strong> - select from the <a href="../../../alvao-asset-management/implementation/node-class">
 object kind</a> of the computer type. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
 In order to select a computer object kind, a template must exist for that type. Therefore, only types with an existing template are displayed in the menu.<br/>
 
 You can change the default object kind in <strong>ALVAO WebApp</strong> - <strong>Management</strong> - <strong>Message</strong>
 Asset Management</strong> - <strong>Settings</strong> -
 <a href="../../alvao-webapp/administration/asset-management/settings/general">
 General</a>.</div>
 
 
 </li>
 <li><strong>Hostname</strong> - Enter a unique name for the computer on your network.  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br/>
 If a numeric range is active for the selected computer type, the name will be automatically generated according to the computer type and the order of its creation in Asset Management.<br/> Therefore, you cannot manually enter a name.  </div></li>
 <li><strong>Detect computer details over the network using saved settings</strong> - enable if you want to automatically schedule detections for a new computer (according to <a href="../../alvao-webapp/administration/asset-management/settings/detection">
 global detection settings</a> set in administration).</li>
  </ul>
 </li>
	</ul>
</asp:Content>
