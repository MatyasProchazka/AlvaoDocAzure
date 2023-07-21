<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Settings</h1>
<p>This window is used to enable and set up automatic network scanning and creation of new computers found in defined IP address ranges.</p>
<p>Options:</p>
 
  <ul>
 <li><strong>Scan the network and create new computers</strong> - Enable if you want the edited server to search the network and create new computers. </li>
  <li><strong>Write IP address to the "IP address" property</strong> property - turn on if you want the IP address of the uncrawled computer to be written to the computer object in the <em>IP address</em> property.
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
 The IP address is written only if the template of the corresponding computer object type contains the <em>IP address</em> property.
  </div>
  </li>
  </ul>
 
</asp:Content>

