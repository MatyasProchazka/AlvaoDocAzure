<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>SLA</h1>

<p>This window is used to assign <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>
  and <a href="../../../../../alvao-service-desk/implementation/services">services</a> to the selected user. A user can only submit requests to services in which has at least one SLA assigned. By assigning an SLA in a service, the user becomes a <a href="../../../../../alvao-service-desk/implementation/services/service-roles">requester</a> in that service.</p>

<p>Options:</p>
	<ul>
 <li><strong>Command panel</strong><ul>
  <li><a href="sla-sla">Add</a> - add another SLA to the table.</li>
  <li><strong>Remove</strong> - remove the selected SLA from the table.</li>
  </ul>
  </li>
  <li><strong>Table</strong> - contains combinations of <a href="../../../../../alvao-service-desk/implementation/services/sla">SLAs</a>
  and <a href="../../../../../alvao-service-desk/implementation/services">services</a> that are available to the selected user. You can <a href="../../../../../alvao-asset-management/working-with-tables">customize</a> the table content as needed.</li>
	</ul>

</asp:Content>
