<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Service Catalogue</h1>
  <p>On this page you can see a list of <a href="../../alvao-service-desk/implementation/services">services</a> that you can request.</p>

  <p>
  Options:</p>
  <ul>
  <li><strong>Search in services...</strong> - if you are looking for a specific service, enter at least part of the service name and then select the service you are looking for from the drop-down menu. This will take you directly to the service's page in the catalogue or to its form to submit a new request without having to browse the catalogue from the beginning.</li>
  <li>Service header - icon, name and description of the currently displayed service in the catalogue<ul>
  <li><strong>New Request</strong> - submit a new request to the displayed service</li>
  </ul>
  </li>
  <li>&nbsp;<strong>Select the required service</strong> - choose a child service and click on its tile. This will take you to its page in the catalogue or, if the displayed service no longer contains any child services, to its form for submitting a new request.</li>
  <li><strong>Current news of the service</strong> - click and read the current messages issued by the service provider.</li>
  <li><strong>Knowledge for this service</strong> - view the knowledge issued by the service provider and, if applicable, click and read it.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

