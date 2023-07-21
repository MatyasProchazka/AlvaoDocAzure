<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>SLA assignment</h1>

  <p>The form is used to allocate <a href="../../../../../alvao-service-desk/implementation/services/sla">SLA</a>
  for selected <a href="../../../../../alvao-service-desk/implementation/services">services</a>
  to users.  Users with an SLA assigned to a service have the <a href="../../../../../alvao-service-desk/implementation/services/service-roles">requester</a> role in that service.</p>

  <ul>
  <li><strong>SLA</strong> - select the SLA that you want to allow the user (group) to use in the selected services.</li>
  <li><strong>Select services...</strong> - check the services you want to assign the SLA to.</li>
  
  <li><strong>Default SLA</strong> - check this option to make the SLA the <a href="../../service-desk/service/detail/sla-assignment">default</a> for the users (groups) and the selected services.<br />

  </li>
  </ul>

</asp:Content>
