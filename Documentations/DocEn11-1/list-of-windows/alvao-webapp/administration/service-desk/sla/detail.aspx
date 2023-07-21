<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>SLA</h1>
 <p>On this page, or panel, you can see information about the selected SLA. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>

	<p>Options:</p>

	<ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../sla">SLA</a> page.</li>
  <li>Block <ul>
  <li><a href="detail/edit">Properties</a> - basic information about the service</li>
  <li><a href="detail/notice">Alert rules</a> - list of notification recipients</li>
  
  </ul>
  </li>
 
	</ul>

</asp:Content>
