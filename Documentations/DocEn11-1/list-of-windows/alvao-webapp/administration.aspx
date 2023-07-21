<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Administration</h1>
<p>The <em>Administration</em> section is for Alvao administrators to set up the system. The left vertical main menu bar and the top horizontal bar are black in this part of the application to better distinguish it from the regular part of the application.</p>
  <p>The left vertical main menu contains the commands:</p>
  <ul>
  <li><a href="administration/users">Users</a></li>
  <li><a href="administration/groups">Groups</a></li>
  <li><a href="administration/asset-management">Asset Management</a> - ALVAO Asset Management product specific settings.</li>
  <li><a href="administration/service-desk">Service Desk</a> - ALVAO Service Desk product specific settings.</li>
  <li><a href="administration/organization">Organizations</a> - manage the organizations to which users can be assigned.</li>
  <li><a href="administration/custom-items">Custom fields</a></li>
  <li><a href="administration/applications">Applications</a> - manage custom extensions</li>
  <li><a href="administration/data-queries">Data queries</a> - manage data queries</li>
  <li><a href="administration/periodic-alerts">Periodic alerts</a></li>
  <li><a href="administration/settings">Settings</a></li>
  <li><a href="administration/licenses">License</a></li>
  <li><a href="administration/database-maintenance">Database Maintenance</a></li>
  <li><strong>Back to application</strong> - return from <em>Administration</em> to the regular application.</li>
  </ul>

</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>

