<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Notifications</h1>
  <p>
  Set up <a href="../../../alvao-service-desk/implementation/services/notifications">notifications</a>.
  </p>
  <p>
  Options:</p>
  <ul>
  <li><strong>Send notifications by e-mail</strong> - enable this option if you want to have solver, requester, and approver notifications e-mailed to you.</li>
      <li><strong>Send notifications by MS Teams add-in</strong> - turn on to receive notifications from the ALVAO Bot in MS Teams. This option is available only if the <a href="../../../modules/alvao-teams-addin">ALVAO Teams Add-in</a> module is activated.</li>
      <li><a href="custom-notification-settings/advanced-settings">Advanced settings</a> - set up email notifications for individual services.</li>
  </ul>

</asp:Content>
