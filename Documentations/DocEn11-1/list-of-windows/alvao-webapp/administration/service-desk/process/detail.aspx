<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Process</h1>

<p>On this page, or panel, you can see information about the selected <a href="../../../../../alvao-service-desk/implementation/services/processes">process</a>.
 You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>
<p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../process">Processes</a> page.
  </li>
  <li>Block <ul>
  <li><strong>Name</strong> - <a href="detail/edit">general information</a> about the process.</li>
  <li><a href="detail/request-items">Request items</a> - all requests in services using this process have these data items.</li>
  <li><a href="detail/workflow">Solving process</a> - defines request statuses and transitions between them.</li>
  </ul>
  </li>
	</ul>

</asp:Content>
