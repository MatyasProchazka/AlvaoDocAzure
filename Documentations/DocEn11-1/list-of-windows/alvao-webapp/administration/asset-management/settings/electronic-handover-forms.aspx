<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Signing documents via the web</h1>
  Use this form to set up signing of handover protocols and other documents over the web and to notify users of unsigned documents. The form is part of the <a href="../../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> module.
<p>Features:</p>

<ul>
<li><strong>Recipient Message</strong>
	<ul>
	<li><a href="electronic-handover-forms-message-template">Edit message template</a> - edit the message template that will be sent to the recipient of the asset after the document is issued.</li>
	</ul>
</li>
<li><strong>Require login password when signing</strong> - enable if you want the asset recipient to have to enter their login password when signing the document. This functionality only works for users who authenticate via Active Directory or with a password set in WebApp - Administration - <a href="../../users">Users</a>.</li>
<li><strong>Alert Recipient</strong> - turn on if you wish to send notifications to the recipient of the asset when the document is not signed.<ul>
	<li><strong>If the beneficiary does not sign the document within (days)</strong> - enter the number of days. If the document is not signed after this number of days, a notification will be sent to the beneficiary.</li>
	<li><a href="electronic-handover-forms-message-template">Edit message template</a> - edit the notification template.</li>
	</ul>
</li>
<li><strong>Notify Handing Technician</strong> - turn on if you wish to send a notification to the handing technician when a document is not signed.<ul>
	<li><strong>If the recipient does not sign the document within (days)</strong> - enter the number of days. If the document is not signed after this number of days, a notification is sent to the transferring technician.</li>
	<li><a href="electronic-handover-forms-message-template">Edit message template</a> - edit the notification template.</li>
	</ul>
</li>
<li><strong>Alert recipient's direct supervisor</strong> - turn on if you wish to send a notification to the direct supervisor when a document is not signed.<ul>
	<li><strong>If the recipient does not sign the document within (days)</strong> - enter the number of days. If the document is not signed after this number of days, a notification is sent to the recipient's direct supervisor.</li>
	<li><a href="electronic-handover-forms-message-template">Edit message template</a> - edit the notification template.</li>
	</ul>
</li>
<li><strong>Alert Team</strong>
	- turn on if you want to send notifications to members of a specific user group.<ul>
	<li><strong>If the recipient does not sign the document by (days)</strong> - enter the number of days. If the document is not signed after this number of days, a notification will be sent to the selected user group.</li>
	<li><strong>Notify group members</strong> - select the user group. <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	  In the sent message, the <em>To Whom</em> field lists all members of the group, so each recipient knows who received the notification.</div>

  </li>
	<li><strong>Automatically repeat this alert after (days since last alert)</strong> - enable if you want to send alerts repeatedly and specify the period of sending in days).</li>
	<li><a href="electronic-handover-forms-message-template">Edit message template</a> - edit the notification template.</li>
	</ul>
</li>
<li><strong>Alert sending time</strong> - enter the time when alerts should be sent (in hh:mm format).</li>
</ul>


<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	Notifications to the submitting engineer, team and direct supervisor are sent in bulk for all unsigned documents.</div>

</asp:Content>
