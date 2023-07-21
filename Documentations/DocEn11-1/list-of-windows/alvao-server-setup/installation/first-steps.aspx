<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>First Steps</h1>
	<ul>
 <li><strong>Import users from Active Directory</strong>
  <ul>
 <li><strong>LDAP path</strong> - option to specify the LDAP path. For example: LDAP://dc=company,dc=com
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you need to use LDAPS, you must add Active Directory server hostname and port before specifying the variants. For example: "LDAP://domainserver<b>:636/</b>dc=company,dc=com".
    </div>
 </li>
 <li><strong>Create scheduled task for regular user import (1x/day)</strong> - option to schedule regular user import 1x/day. The created task is named "ALVAO Import Users".</li>
 <li><strong>Other settings</strong>
 <ul>
 <li><strong>Remove users that do not exist in AD</strong>
 - option to remove users that do not exist in AD.</li>
 <li><strong>Person Name Template</strong> - determines which attributes from AD will be used to build the Person Name in ALVAO.</li>
 <li><strong>Active Directory record attribute</strong>
 - A predefined selection of attributes. Select the attribute and click <strong>.
 Paste</strong> button to insert it into the top row.</li>
 </ul>
 </li>
  </ul>
 </li>
 <li><strong>Import portraits</strong>
  <ul>
 <li><strong>Create a scheduled task for regular import of portraits from a folder (1x/day)</strong> - option to import portraits regularly. The created task is named "ALVAO Import Portraits".</li>
 <li><strong>Other settings</strong>
 <ul>
 <li><strong>Path to portraits folder</strong> -
 option to specify the path to the portraits.</li>
 </ul>
 </li>
  </ul>
 </li>
	</ul>
</asp:Content>
