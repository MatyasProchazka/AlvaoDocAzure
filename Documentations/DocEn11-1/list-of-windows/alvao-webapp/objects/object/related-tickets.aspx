<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Related requests</h1>

  <p>On this page you can find all requests that are related to the selected object (i.e. requests that have this object listed on the <a href="../../requests/request">Objects</a> page).</p>

  <p>
  Options:</p>
  <ul>
  <li>
  <b>Command panel</b>
  <ul>
  <li><b>New request</b> - create a new request with a link to the displayed object.  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  The Alvao administrator can edit the contents of the service drop-down menu in <i>Administration - Service Desk - Services - <a href="../../administration/service-desk/service/objects">Objects</a></i>.
  </div>
  </li>
  <li><b>Related templates</b> - display <a href="../../ticket-templates">request templates</a> that have the displayed object set in the <i>Objects</i> field.</li>
  <li><a href="add-request">Add request</a> - binds the displayed object to another request.</li>
  <li><b>Remove request</b> - remove the link of the object to the selected request.</li>
  <li><b>Selected linked requests</b> - menu of commands for operations with selected requests in the table.</li>
  </ul>
  </li>
  </ul>

</asp:Content>
