<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Approval scheme</h1>

<p>This page, or panel, displays information about the selected <a href="../../../../../alvao-service-desk/implementation/services/processes/request-approval">approval scheme</a>. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>
<p>Options:</p>
<ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../approval-scheme">Approval Schemes</a> page.</li>
  <li>Blocks <ul>
  <li><strong>Name</strong> - <a href="detail/edit">general information</a> about the schema</li>
  <li><a href="detail/approval-scheme-items">Approval Steps</a> - definition of the approval steps of the schema</li>
  </ul></li>
</ul>

</asp:Content>
