<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Software Profile</h1>
  <p>On this page, or panel, you can see information about the selected <a href="../../../../../alvao-asset-management/software-management/software-profiles">software profile</a>. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>Edit</strong> - edit profile information, see <em>Blocks</em> below.</li>
  <li><strong>Remove</strong> - remove the software profile.</li>
  </ul></li>
  
  <li><strong>Blocks</strong>
  <ul>
  <li><a href="detail/edit">Name, Subprofile</a> - basic information about the software profile.</li>
  <li><a href="detail/products">Products, Subprofiles</a> - set the presence of SW products.</li>
  </ul></li>
  </ul>
</asp:Content>
