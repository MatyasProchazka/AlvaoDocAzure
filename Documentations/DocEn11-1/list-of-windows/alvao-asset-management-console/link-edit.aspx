<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Add link</h1>
<p>Use this window to edit or create new <a href="../../alvao-asset-management/software-management/licenses-links">
links between two licenses</a>.<br/>
The first license is already pre-populated and cannot be changed (it is the license you are currently editing), so you select the second license and the link you want to connect the two licenses.</p>
<p>Options:</p>
<ul>
	<li><strong>License</strong> - the license currently being edited.</li>
	<li><strong>Link Type</strong> - select <a href="../../alvao-asset-management/software-management/licenses-links#link_type"> from the menu
	link type</a>.</li>
	<li><strong>License</strong> - select a license from the menu. <ul>
  <li><a href="software/license-registry">...</a> - or select a license from the License Registry.</li>
 </ul>
	</li>
</ul>

</asp:Content>
