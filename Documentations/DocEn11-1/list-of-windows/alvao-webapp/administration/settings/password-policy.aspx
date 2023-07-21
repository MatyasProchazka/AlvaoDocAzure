<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Password rules</h1>
<p>Use this page to set password policies for non-Active Directory users.</p>
<p>Options:</p>
	<ul>
 <li><strong>Password Complexity</strong>
 <ul>
  <li><strong>Minimum password length (number of characters)</strong> -
 Specify how many characters the shortest allowable password can be. <ul>
 <li>Allowed range: 0 - 14.</li>
 </ul>
  </li>
  <li><strong>Passwords must meet complexity requirements</strong> -
 Enable this option if you want passwords to have to meet the following requirements: <ul>
 <li>Must be at least six characters in length.</li>
 <li>Must contain characters from at least three of the following character groups:<ul>
  <li>&nbsp;uppercase letters</li>
  <li>lowercase letters</li>
  <li>numerals</li>
  <li>symbols (for example !, $, #, %)</li>
  </ul>
  </li>
 <li>Must not contain the username or display name of the user.</li>
 </ul>
  </li>
 </ul>
 </li>
 <li><strong>History of passwords</strong>
  <ul>
 <li><strong>Minimum password age (days)</strong> - Enter the minimum number of days that must elapse between password changes. <ul>
 <li>Allowed range: 0 - 998.</li>
 </ul>
 </li>
 <li><strong>Maximum password age (days)</strong> - Enter the maximum password age in days. After this period, the user will have to change password. <ul>
 <li>Allowed range: 0 - 999.</li>
 <li>0 means that passwords are valid indefinitely.</li>
 </ul>
 </li>
 <li><strong>Password history size (number)</strong> - specify the number of passwords that the system will remember back for each user and will not allow the user to set the same password again.  
 <ul>
 <li>Allowed range: 0 - 24.</li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>
</asp:Content>
