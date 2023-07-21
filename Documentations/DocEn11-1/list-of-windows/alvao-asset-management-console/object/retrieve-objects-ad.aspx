<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Load objects from Active Directory</h1>
<p>In this Window, you can retrieve objects from Microsoft Active Directory (AD).</p>
	<ul>
 <li><strong>LDAP path</strong> - Enter the path to the Active Directory folder from which you want to retrieve objects.</li>
 <li><strong>Login</strong>
  <ul>
 <li><strong>Use Windows Integrated Authentication</strong>
 - Select if you want to log in to ActiveDirectory under the currently logged in Windows user,</li>
 <li><strong>Use name and password</strong> - select if you want to log in to the service using a name and password, and fill in these details.</li>
  </ul>
 </li>
 <li><strong>Load objects</strong> - enable the types of objects you want to load:<ul>
 <li><strong>Computer</strong> - AD class: computer,</li>
 <li><strong>User</strong> - AD class: user,</li>
 <li><strong>Organizational Unit</strong> - AD class: organizationalUnit.</li>
 </ul>
 </li>
 <li><strong>Search in</strong> - select the AD tree search level: <ul>
 <li><strong>Only in specified path</strong> - search for objects only in the specified path (folder).</li>
 <li><strong>Including subfolders</strong> - search for objects in the specified path (folder) and in all subfolders.</li>
  </ul>
 </li>
	</ul>
</asp:Content>
