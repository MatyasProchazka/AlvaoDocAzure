<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New computers</h1>
<p>In this window you can refine your discoveries and create new computers on your network.</p>
	<ul>
 <li><strong>All nearby computers</strong> - select to find all new computers on your network and add them to the database.</li>
 <li><strong>Computers in a domain/group</strong> - select and enter the name of the <strong>domain</strong> or <strong>workgroup</strong> to which you want to limit the discovery of new computers.</li>
 <li><strong>Scan IP address range</strong> - select if you only want to search for computers in a specific IP address range. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div> The start and end IP address are also searched. </div>
  <ul>
 <li><strong>Initial Address</strong> - enter the first address of the interval.</li>
 <li><strong>Final Address</strong> - enter the last address of the interval.</li>
 <li><strong>Write IP address to the &quot;IP address&quot;</strong> property -
 Enable if the found IP address of the computer is to be stored in the <strong>
 IP address</strong> of the newly created computer. <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div><br />
 The IP address will only be stored if the computer template contains the <strong>IP address</strong> property.</div></li>
 </ul></li>
 <li><strong>Computers from Active Directory</strong> - Select to find all new computers in a folder in Microsoft Active Directory, and specify the <strong>LDAP</strong> path to that folder. <ul>
 <li><strong>Search Subfolders</strong> - turn on if you want to search for new computers in the entire subtree of the specified folder.</li>
 </ul></li>
	</ul>
</asp:Content>
