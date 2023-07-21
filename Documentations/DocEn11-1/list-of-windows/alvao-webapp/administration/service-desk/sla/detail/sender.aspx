<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Sender</h1>
<p>This window allows you to set the email address from which SLA summary notifications are sent. This setting is common to all SLA rules.</p>
	<ul>
 <li><strong>E-mail for sending summary alerts</strong> -
 Enter the email address from which alerts will be sent.<br />
  Eg: <span class="console">ALVAO &lt;alvao@domain.com&gt;</span><br />
     <p>We recommend entering the existing service mailbox used for <a href="../../service/loading-messages">receiving messages to Service Desk</a>.</p>
<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	SMTP server used to send messages (see <em>Administration - Manage - Settings -</em>
	<a href="../../../settings/messaging">Sending messages</a>) must be authorized to send messages from this address with the specified credentials.</div></li>
	</ul>
	

</asp:Content>
