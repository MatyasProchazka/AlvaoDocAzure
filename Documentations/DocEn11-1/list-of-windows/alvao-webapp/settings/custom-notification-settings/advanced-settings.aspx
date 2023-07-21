<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Advanced notification settings</h1>
  <p>
  Set up email <a href="../../../../alvao-service-desk/implementation/services/notifications">notifications</a> for each service. </p>
  <p>
  Options:</p>
  <ul>
  <li><strong>Services table</strong>- In the table, select the service for which you want to change the notification settings. Use <em>&lt;All services&gt;</em>
  you can change the default settings for all services in bulk. <ul>
  <li>Edit settings - options for individual <a href="../../../../alvao-service-desk/implementation/services/notifications">notification types</a>:
  <ul>
  <li><strong>Default</strong> - select this option if you want to use the settings in <em>&lt;All Services&gt;</em> for this service.
  If you select this option in <i>&lt;All services&gt;</i>, the <a href="../../../../alvao-service-desk/implementation/services/notifications">service specific settings</a> defined by the Alvao system administrator are used.  </li>
  <li><strong>Send</strong> - select if you want to receive that notification. </li>
  <li><strong>Do Not Send</strong>- select if you do not want to receive the notifications.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>

  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  Notifications to main solvers are sent in the language and time zone of the service. The individual settings of each main solver are not taken into account.  </div>

</asp:Content>
