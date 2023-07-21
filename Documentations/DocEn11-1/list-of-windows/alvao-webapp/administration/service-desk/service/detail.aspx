<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Service</h1>
 <p>On this page, or panel, you can see information about the selected <a href="../../../../../alvao-service-desk/implementation/services">service</a>.
  You can edit the information displayed in each block by using the <em>Edit</em> command in that block.</p>

	<p>Options:</p>
  


	<ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../service">Services</a> page.</li>
  <li>Block <ul>
  <li><a href="detail/edit">Properties</a> - basic information about the service and its settings.</li>
  <li><a href="detail/new-ticket-items">New Request Form</a> - the form layout for the New Request.</li>
  <li><a href="detail/authorization">Permissions</a> - permissions for users and groups in this service.</li>
  <li><a href="detail/sla">SLA</a> - the SLAs assigned to users and groups for requesting access to this service. </li>
  </ul>
  </li>
 
</ul>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 {
 color: #0072BC;}
</style>

</asp:Content>

