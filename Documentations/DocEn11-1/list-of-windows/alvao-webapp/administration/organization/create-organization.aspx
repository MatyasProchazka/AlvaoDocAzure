<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New organisation</h1>
<p>Use this form to create a new <a href="../../../../alvao-service-desk/implementation/users/companies">organization</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Name</strong>- enter the name of the organization.</li>
  <li><strong>Company ID</strong> - enter the organization's ID number if applicable.</li>
  <li><strong>VAT ID</strong> - enter the organization's VAT number if applicable.</li>
 <li><strong>Contact information</strong> - enter the following contact details for the organisation as appropriate.  <ul>
 <li><strong>Phone</strong></li>
 <li><strong>Phone 2</strong></li>
 <li><strong>E-mail</strong></li>
 <li><strong>E-mail 2</strong></li>
 <li><strong>Fax</strong></li>
 <li><strong>Web</strong></li>
 <li><strong>Address</strong> - use the <a href="address">Edit</a> link to enter the address.</li>
 <li><strong>Address 2</strong> - use the <a href="address">Edit</a> link to enter the address.</li>
  </ul>
 </li>
 <li><strong>Other</strong> - fill in the values of other items if necessary. This block only appears on the form if <a href="../../../../alvao-service-desk/implementation/custom-items">custom-items</a> are defined for the organization.</li>

	</ul>
</asp:Content>
