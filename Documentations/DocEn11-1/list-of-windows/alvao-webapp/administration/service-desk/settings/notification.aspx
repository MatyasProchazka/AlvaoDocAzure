<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Notification</h1>
  <p>On this page you can set up automatic notifications about the occurrence and progress of requests. This is the <a href="../../../../../alvao-service-desk/implementation/services/notifications">common setting for all services</a><span class="style1">,
 which is only used if the service does not have </span><a href="../service/notification"> custom notification settings</a>.</p>
	
	<p>Options:</p>
  <ul>
 <li><strong>Notifications to the solver</strong></li>
 <li><strong>Notifications to requester</strong></li>
  
  <p>For more information on notification types, see <a href="../../../../../alvao-service-desk/implementation/services/notifications">
  Notifications</a>.</p>
 </ul>

<ul>
 <li>
 <a href="notification-style">
 Notification styles</a>
 - notification style settings</li>
 </ul>
	
	
	</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 {
 color: #525252;}
</style>

</asp:Content>

