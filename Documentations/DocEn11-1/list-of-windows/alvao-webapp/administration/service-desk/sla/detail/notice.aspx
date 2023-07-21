<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Alert rules</h1>
<p>This window is used to manage the rules by which SLA deadline notifications are displayed to the solution team in the request list and on the request page in order to prevent possible non-compliance with <a href="../../../../../../alvao-service-desk/implementation/services/sla">SLA</a>, or notifications are automatically emailed to users.</p>
<p>Options:</p>

<ul>
  <li><strong>Command Panel</strong><ul>
  <li><a href="notice-notice">New rule</a> - add a new rule.</li>
  <li><a href="notice-notice">Edit</a> - edit the selected notification rule.</li>
  <li><strong>Delete</strong> - remove selected notification rules.</li>
  </ul>
  </li>
  <li><strong>Table</strong> - alerting rules for the given SLA. You can <a href="../../../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
</ul>

</asp:Content>
