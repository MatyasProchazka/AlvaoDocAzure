<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Notification</h1>
<p>This section on the <a href="create-service">New Service</a> form is used to set up automatic notifications about the creation and progress of requests for the service being modified.</p>

  <p>Options:</p>
  <ul class="style1">
 <li><b>Notifications to the solver</b></li>
 <li><strong>Notifications to requester</strong></li>
 <p>For more information on the types of notifications, please visit <a href="../../../../../alvao-service-desk/implementation/services/notifications">
	Notifications</a>.</p>
	
	<p>The setting has three statuses:</p>
	<ul>
  <li><strong>On</strong> - notification is sent.</li>
  <li><strong>Off</strong> - notification is not sent.</li>
  <li><strong>Not set</strong> - the notification settings follow the common settings for all services, see the table on the <a href="../../../../../alvao-service-desk/implementation/services/notifications">Notifications</a> page.</li>
  
 </ul>

 
 </ul>
  <ul class="style1">
	
	<p>Setting options:</p>
 <ul>
  <li><strong>Send standard notification</strong> -
  standard system notification is sent.</li>
  <li><strong>Send custom notification</strong>
  - a custom notification is sent. Define the content of the custom notification with the <em>Define</em> button, which opens the <a href="../../../../../list-of-windows/alvao-webapp/administration/service-desk/service/message-template">Message template</a>.</li>
 </ul>

  </ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Individual users can customize the notification settings, see <a href="../../../../../alvao-service-desk/implementation/services/notifications">
	Notifications</a>.</div>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 {
 margin-bottom: 19px;}
</style>

</asp:Content>

