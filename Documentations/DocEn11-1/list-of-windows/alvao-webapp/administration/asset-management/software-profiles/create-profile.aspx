<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New profile</h1>
<p>The form allows you to define a specific <a href="../../../../../alvao-asset-management/software-management/software-profiles">software profile</a>. The profile can later be used to make <a href="../../../../alvao-asset-management-console/edit/object/software-profile-exeptions">
exceptions</a>.<br/>
  </p>
<p>Options:</p>
	<ul>
 <li><strong>Name</strong> - enter the name of the software profile.</li>
 <li><strong>Subprofile</strong> - enable if the profile can only be used as a subprofile for the construction of other profiles.</li>
 <li><strong>Description</strong> - if applicable, enter a description of the profile (subprofile) to specify its purpose.</li>
 <li><strong>Notes</strong> - if applicable, enter additional working notes for the profile.</li>
 
	</ul>
</asp:Content>
