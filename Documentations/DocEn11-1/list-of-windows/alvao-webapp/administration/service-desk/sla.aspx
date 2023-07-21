<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SLA</h1>
<p>On this page you can set up <a href="../../../../alvao-service-desk/implementation/services/sla">
Service Level Agreement</a> (SLA), which you then assign to service requesters.</p>

<p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New SLA</strong> - create <a href="sla/create-sla">new SLA</a>. </li>
  <li><strong>Edit</strong> - edit the selected SLA. The menu contains the same commands as the blocks in the <a href="sla/detail">preview</a> SLA.</li>
  <li><strong>Delete</strong> - delete the selected SLA.</li>
  </ul>
  </li>
  <li><strong>SLA table</strong> - contains all SLAs and their selected attributes. The table can be <a href="../../../../alvao-asset-management/working-with-tables">customize</a> as needed.</li>
  <li><strong>Selected SLAs</strong> - after selecting an SLA in the table, <a href="sla/detail">preview</a> will appear on the right
  with information about the selected SLA.  The <em>Edit</em> command is displayed in each block of the preview.</li>
  </ul>



	</asp:Content>
