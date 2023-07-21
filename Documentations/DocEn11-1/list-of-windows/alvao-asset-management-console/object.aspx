<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Object</h1>
<p>The Object menu allows advanced work with <a href="../../alvao-asset-management/objects-and-properties">
objects</a> in ALVAO Asset Management.</p>
<p>Features:</p>
	<ul>
 <li><a href="object/use-feature">Use function</a>
 - Use <a href="../../alvao-asset-management/objects-and-properties/functions">
 sum function</a> on the object selected in the <a href="object-tree">
 tree</a>.</li>
 <li><a href="object/choose-object">Move</a>
 - move the object selected in the tree or table.</li>
 <li><a href="object/unique">Check uniqueness</a>
 - Check the uniqueness of objects according to the properties that are set as unique. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 The value of a <em>unique property</em> must be unique (i.e., different for two different objects with that property). A typical unique property is a <strong>
 inventory number</strong>.</div></li>
 <li><a href="object/unify-objects">Unify objects</a>
 - unify objects as per the template in <a href="../../alvao-asset-management/implementation/object-templates">
 object templates</a>.</li>
  <li><strong>Diagram of links</strong> - In a web browser, displays the ALVAO WebApp page with the link diagram of the currently selected object in the tree. This command is available only if the <i>ALVAO Configuration Management</i> module is activated. The command can only be used by users with <a href="../../modules/alvao-configuration-management/user-rights">privilege</a> to view the links diagram.</li>
  <li><strong>Draw links in MS Visio</strong> - opens the MS Visio window and draws the links diagram of the currently selected object in the tree. The command is available only if the <i>ALVAO Configuration Management</i> module is activated. The command can only be used by users with <a href="../../modules/alvao-configuration-management/user-rights">privilege</a> to view the links diagram.
	  </li>
 <li><strong>Load XML</strong> - Load new objects from the XML file into the currently selected object in the tree. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 If you have also loaded icons from the file, restart the AM Console to display them correctly.<br/>
  If AM Console is connected via a web service, this command is not available. </div>
 </li>
 <li><strong>Save as XML</strong> - save the selected object, including the subtree, to an xml file.<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
   If the AM Console is connected via a web service, this command is not available. </div>
 </li>
  <li><strong>Load CSV</strong> - launch the wizard to <a href="../alvao-webapp/objects/import-csv">read objects from a CSV file</a>. New objects will be created in the tree under the currently selected object.  <div class="tip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
To import objects from CSV on a regular basis, you can use the <a href="../../alvao-asset-management/import-export-data/import-util">ImportUtil</a> utility, e.g. in a scheduled job on the server. </div>
  </li>
  <li><a href="object/retrieve-objects-AD">Load from Active Directory</a> - retrieve objects from Active Directory.</li>
	</ul>
</asp:Content>
