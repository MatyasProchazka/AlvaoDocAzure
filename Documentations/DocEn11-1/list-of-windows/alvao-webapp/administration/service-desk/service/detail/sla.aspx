<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SLA</h1>
<p>This page is used to assign <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a> to Requesters of the <a href="../../../../../../alvao-service-desk/implementation/services">service being edited</a>. <br/>
  Users who have no SLA assigned here cannot submit requests to the service.</p>


<p>Options:</p>
	<ul>
 <li><strong>Command Panel</strong><ul>
  <li><a href="sla-assignment">Add</a> - add an SLA for the service being edited.</li>
  <li><a href="rewrite-sla-authorization">Overwrite</a> - overwrite all SLA settings of the edited service according to another service.</li>
  <li><a href="sla-assignment">Edit</a> - edit the selected permissions in the table.</li>
  <li><strong>Remove</strong> - remove the selected permission in the table.</li>
  </ul>
  </li>
  <li><strong>Table</strong> - the table contains a list of users and user groups and their assigned SLAs. The table can be <a href="../../../../../../alvao-asset-management/working-with-tables">customized</a> as needed.</li>
 
 
	</ul>
</asp:Content>
