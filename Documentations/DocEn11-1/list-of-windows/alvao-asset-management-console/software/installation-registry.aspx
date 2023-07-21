<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Installation registry</h1>
<p>The table shows the history of installations and uninstallations of software products. Each type of record is distinguished by an icon:</p>
<ul>
	<li><img src="../InstInst.GIF" />Active (valid) product installation</li>
	<li><img src="../InstUninst.GIF" />Uninstalled product</li>
</ul>
<p>Options:</p>
	<ul>
 <li><a href="installation-registry/record-installation">Record installation</a> - write new product installation records.</li>
 <li><strong>Uninstall</strong> - uninstall selected installation records to uninstall records.</li>
 <li><a href="installation-registry/alter-installation">Edit</a> - edit selected record data.</li>
 <li><a href="installation-registry/record-uninstallation">Delete</a>
 - permanently delete the selected records.</li>
	</ul>

	<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 If you want to show only the current valid installations in the installation list and you are not interested in the history, set the filter in the <strong>
 Active</strong> to <em>&quot;Yes&quot;</em>.
	</div>

</asp:Content>
