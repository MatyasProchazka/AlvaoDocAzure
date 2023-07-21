<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Other</h1>
<p>This tab can be used to fill in more detailed information about the organisation.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 You cannot modify organization details loaded from <a href="../../../../../alvao-asset-management/software-management/custom-swlib">
 Software Product Libraries</a>
	</div>
<p>Options:</p>
	<ul>
 <li><strong>Valid record</strong> - turn off if you want to exclude a company/organization from the list of companies/organizations. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 This step cannot be undone. </div></li>
 <li><strong>UID</strong> - display the identification number of the company record. The number is automatically assigned to new records.</li>
 <li><strong>Date</strong> - display the date of the last change.</li>
 <li><strong>Certified by</strong> - display the certification authority that created the record.</li>
 <li><strong>Description</strong> - enter a comment for this record if applicable.</li>
	</ul>

	

</asp:Content>
