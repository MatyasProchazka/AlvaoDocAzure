<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>License Coverage</h1>
<p>In this Window you can enter a shared license.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use License</strong>
  <ul>
 <li><strong>from a desktop</strong> - select if the shared license is installed on a desktop computer.  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 For some licenses, if the product is installed on a desktop computer, it can be installed on a laptop computer of the same user under the same license. In this case, to install the product on the laptop, select the associated desktop computer from which the license will be drawn.</div></li>
 <li><strong>users</strong> - select if you want to register a computer that is used by multiple people and is not listed under any particular user.</li>
  </ul>
  <li><strong>...</strong> - select from the menu or in a separate window the specific computer or user whose license will be shared on the target computer.<br/>
  Depending on which license you are using, a <a href="users">window will open
  Users</a> or <a href="computers">Computers</a>.</li>
  <li><strong>Note</strong> - enter a note about the license coverage</li>
	</ul>
</asp:Content>
