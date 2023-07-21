<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New template</h1>
  <p>Use this form to create a new <a href="../../../alvao-service-desk/requests/ticket-templates">request template</a>.
  </p>

  <p>
  Options:</p>
  <ul>
  <li><strong>Template Name</strong> - enter the name by which users will select the template from the template menu.</li>
  <li><strong>Description of template</strong> - if applicable, enter a more detailed description of the template and its use.</li>
  <li><strong>Service</strong> - enter at least part of the service name and then select the service for which you want to create the requests template from the menu. </li>
  <li><strong>Request Name</strong> - enter a name for the request. This field is only available if the request name is not hidden in the <a href="../administration/service-desk/service/detail/new-ticket-items">new-request-submission form</a>.</li>
  <li><strong>Description</strong> - enter a detailed description of the request if applicable.</li>
  <li><strong>Attachments</strong> - list of attachments to the request<ul>
  <li><strong>Add Attachment</strong> - select the file you want to add as an attachment. You can also attach files by dragging and dropping them into the form.</li>
  </ul>
  </li>
  <li><strong>SLA</strong> - select <a href="../../../alvao-service-desk/implementation/services/sla"> from the menu
	SLA</a> of the request.</li>
  <li>Additional items - depending on the service and its process settings, additional items may be displayed on the form.</li>
  <li><strong>Assign</strong> - if you want to immediately assign a new request created using this template to a specific solver or solver group, enable this option and enter the solver name or group name.</li>
  
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

