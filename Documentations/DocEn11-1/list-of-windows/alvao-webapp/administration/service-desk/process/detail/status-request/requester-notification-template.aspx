<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Template of notifications to requester about the change of status</h1>
<p>This window allows you to define a template for notifying the requester when the status of a request changes.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use default template</strong> - select if you want to use the default notification template.</li>
 <li><strong>Use custom template</strong> - select if you want to define a custom notification template. <ul>
 <li><strong>Refresh Default</strong> - the template text will replace the default notification template.</li>
 <li><strong>Insert Variable</strong> - from the drop-down menu, select the variable you want to insert into the notification template at the current cursor position. For a list of variables, see <a href="../../../service/message-template">Custom Notification Template (Status Change Requester Notification Template column)</a></li>
 </ul>
  </li>
	</ul>
	
<div class="note">
<div class="icon"></div>
<div class="title">Note:</div>
Notifications sent to requesters are formatted according to the set <a href="../../../settings/notification-style">notification styles</a>.</div>

<div class="tip">
<div class="icon"></div>
<div class="title">Tip:</div>
If you want some text in the message to appear in bold, put it between the tags "&lt;b&gt;" and "&lt;/b&gt;".</div>


</asp:Content>
