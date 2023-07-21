<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>General</h1>
<p>This page contains general settings for the <a href="../../../../../alvao-asset-management">
ALVAO Asset Management</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use permissions in the Object Tree</strong> - enable if you want access to the object tree to be governed by the rights explicitly <a href="../../users/detail/security-object">set for each user</a>.
   By default, this option is disabled and users' permissions to objects in the tree are controlled by their <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">roles</a>.
 <div class="caution">
   <div class="icon"></div>
  <div class="title">Caution:</div>
 Some <a href="../../../../../alvao-asset-management/objects-and-properties/object-access-rights">roles grant rights</a> to read or manipulate objects independently of the rights in the object tree. For example, the Asset Management administrators has all rights to work with objects, and this role cannot be removed. </div>

 </li>
 <li><strong>Create document files</strong> - enable if you want to automatically create PDF documents when creating internal handover protocols.</li>
 <li><strong>The &quot;Generate new document&quot; option in the handover protocol will be switched on by default</strong> - enable if you want to have enable option <strong>Generate new document</strong> in dialog of <a href="../../../objects/object/print">Transfer Protocol Internal</a> when generating an internal transfer protocol.</li>
 <li><strong>Alert for installed products with &quot;Unclassified&quot; state</strong> - turn on if you want to control a life-cycle of software products, see <a href="../../../../../alvao-asset-management/software-management/product-state">product status</a>. Installations of the sw products that were not explicitly approved will appear highlighted in the AM Console.</li>
 <li><strong>Document attachments to store</strong> - select where to store the generated handover protocols internally.&nbsp; <ul>
 <li><strong>To database</strong> - the log will be stored in the Alvao database.</li>
 <li><strong>To a shared folder (not recommended)</strong>
 - logs will be saved to a shared folder on disk. Specify the path to the folder.  Network paths can also be used (e.g. <span class="console">\\server\doc</span>).
  
 </li>
  </ul>
 </li>
 <li><strong>Default object kind for computers </strong>- <a href="../../../../../alvao-asset-management/implementation/node-class">
 object kind</a> of type computer. This type will be preset (the default option) when manually creating new computers and when importing them. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br />
 In order to select a computer object kind, a template must exist for it. </div></li>
  <li><strong>State the domain name in computer names (FQDN)</strong> - enable if you want to register computers from multiple domains. The domain name will then also be listed in the computer names in the object tree. This option controls the creation of new computers in the tree <a href="../../../../alvao-asset-management-console/object/retrieve-objects-AD">by reading from AD</a>,
  <a href="../servers/detail/scan-network">by scanning the network</a>
  and <a href="../../../../../alvao-asset-management/implementation/detection/detection-way">detection by the Autonomous Agent</a>.
  <div class="note">.
   <div class="icon"></div>
   <div class="title">Note:</div><br />
   After changing this option, the next time you load from AD, the previously loaded computers in the tree will be automatically renamed. Searching the network in the tree will create new computers.   </div>
  </li>
	</ul>


</asp:Content>
