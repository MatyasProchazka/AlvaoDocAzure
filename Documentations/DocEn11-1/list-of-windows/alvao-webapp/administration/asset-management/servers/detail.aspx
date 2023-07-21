<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Server</h1>
  <p>On this page, or panel, you can see information about the selected server. You can edit the information displayed in each block by using the <em>Edit</em> command in that block.</p>
  <p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../servers">Servers</a> page.</li>
  <li>Block <ul>
  <li><a href="detail/edit">General</a> - set general server information. </li>
  <li><a href="detail/scan-network">Network Scan</a> - setup network scan.</li>
  </ul>
  </li>
  </ul>

</asp:Content>
