<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Actions</h1>
<p>The offering allows you to manage license allocations and audits in <a href="../license-and-install-overview">License and Installation Overview</a>.<br/>
Most options are only available if you have at least one object selected in the bottom window. Objects in the bottom window will appear once you have selected at least one product in the top window that is installed on a machine.</p>
<p>Options:</p>
	<ul>
 <li><a href="actions/allocate-license">Assign a license to a computer</a> - select the license to assign to the selected computer.</li>
 <li><strong>Assign license automatically</strong> - automatically allocate a free license to the selected computer.</li>
 <li><strong>Remove license from computer</strong> - remove the license from the selected computer.</li>
 <li><a href="actions/license-cover">Share license</a>
 - assign a shared license to the selected object.</li>
 <li><a href="actions/special-installation">Special installation</a> - enroll a special installation of the product.</li>
 <li><strong>Audit Product</strong></li>
 <li><strong>Exempt product from audit</strong></li> </li>
	</ul>
</asp:Content>
