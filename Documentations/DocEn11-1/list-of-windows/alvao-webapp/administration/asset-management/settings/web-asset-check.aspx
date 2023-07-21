<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Web Inventory</h1>
<p>The form is used to set up the <a href="../../../../../modules/alvao-inventory-audits">ALVAO Inventory Audits</a>.</p>

<p>Options:</p>
	<ul>
 <li><strong>Command Panel</strong><ul>
  <li><strong>Save</strong> - saves the settings and closes the form.</li>
  <li><strong>Restore default text</strong>
  <ul>
 <li><strong>Notification</strong> - in the <em>Notification Text</em> field
 inserts the default text.</li>
 <li><strong>Forms</strong> - inserts default text in the <em>Form Text</em> field.</li>
  </ul>
   </li>
  </ul>
 </li>
  <li><strong>Notification</strong> - template message sent to users at the start and possibly during the inventory. You can edit the text before sending each message.&nbsp;<ul>
 <li><strong>From</strong> - enter the email address from which notifications will be sent. You can enter only the email address or display name and email address, e.g. <span class="console">Alvao DontReply &lt;do-not-reply@domain.com&gt;</span></li>
 <li><strong>Subject</strong> - enter the subject of the notification.</li>
 <li><strong>Text</strong> - enter the text of the notification. In the text, we always recommend to include a link to the web inventory form in the ALVAO WebApp.<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
   You can return the notification text to its default status by using the <em>Restore Default Text - Notifications</em> command.</div>
	  </li>
  </ul>
 </li>
 <li><strong>Form</strong>
  <ul>
 <li><strong>Form Text</strong> - enter explanatory text that will be displayed to users at the top of the web inventory form. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
   You can return this text to its default status by using the <em>Restore Default Text - Form</em> command.</div>
	  </li>
  </ul>
 </li>
	</ul>
	
	<div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  In <a href="../../../../../alvao-service-desk/implementation/multi-languages">
  multi-language environment</a>, after changing the <em>Subject</em>, <em
  <em>Notification Text</em> or <em>Form Text</em>, it is necessary to update the translations into other languages as well. If you don't update the translations, users will see an unupdated translation or text in the system language.

</asp:Content>
