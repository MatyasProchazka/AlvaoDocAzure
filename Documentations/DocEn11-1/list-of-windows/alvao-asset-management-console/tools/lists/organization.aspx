<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Organization</h1>
<p>The table shows the contact details of organisations or companies that represent manufacturers of software products, suppliers of hardware, software or services.</p>
 <div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	<a href="../../../../alvao-asset-management/working-with-tables">
	Customize a table</a>: It is possible to filter and group, customize an existing view or create additional views.</div>

<p>Options:</p>
	<ul>
 <li><a href="organization/organization-edit">New</a> - add a new organization.</li>
 <li><a href="organization/organization-edit">Edit</a>
   - edit the selected organization.</li>
 <li><strong>Delete</strong> - delete the selected organization. Only records that are not linked to other information in the database can be deleted.</li>
 <li><a href="organization/replace">Replace</a> - Replace your own organization with a certified organization. Certified records are delivered via <a href="../../../../alvao-asset-management/software-management/custom-swlib">
 Software Product Library</a>, which is available on the Internet.</li>
	</ul>
</asp:Content>
