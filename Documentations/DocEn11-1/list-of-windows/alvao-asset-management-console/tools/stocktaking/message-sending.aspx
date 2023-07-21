<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Send notification</h1>

  <p>This page is used to send notifications about the ongoing web inventory to users participating in the inventory.</p>

  <p>Commands:</p>
  <ul>
  <li><b>Send</b> - send notifications to users.</li>
  <li><b>Edit Notifications</b> - display the <a href="../../../alvao-webapp/administration/asset-management/settings/web-asset-check">Settings - Web Inventory</a> page, where you can edit the notification text and other items.</li>
  </ul>

  <p>Options:</p>
  <ul>
  <li><b>From</b> - display the email address from which notifications will be sent. You can use the <i>Edit Notifications</i> command to change the address.</li>
  <li><b>To Whom</b> - display the current number of notification recipients, i.e. users who have not yet confirmed all assets included in the inventory for which they are responsible.</li>
  <li><b>Notification preview in language</b> - select the language in which you want to preview the content of the notification. The menu contains only the languages into which the notification is translated. We recommend that you check that the translations of the notification in all languages are up to date before sending it. Each users receives the notification in preferred language. If there is no translation for their language (default state), they receives the notification in <a href="../../../../alvao-service-desk/implementation/multi-languages">the language of the Alvao system</a>.</li>
  <li><b>Subject</b> - a preview of the subject of the notification in the selected language.</li>
  <li><b>Text</b> - preview of the notification text in the selected language.</li>
  </ul>

</asp:Content>
