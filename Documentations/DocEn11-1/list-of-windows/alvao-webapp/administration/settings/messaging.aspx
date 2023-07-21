<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Sending messages</h1>
<p>This page is used to set up basic messaging in Alvao.</p>
<p>Options:</p>
	<ul>
 <li><strong>SMTP Server</strong>
  <ul>
 <li><strong>Address</strong> - enter the address or name of the SMTP server on the network.</li>
 <li><strong>Port</strong> - enter the port number of the SMTP server. For a secure connection (SSL) this is usually 465, for an insecure connection it is 25.</li>
 <li><strong>Authentication</strong> - select the authentication method from the menu.<ul>
  <li><strong>User Name and Password</strong> - enter the name and password of the user who is authorized to send messages from the SMTP server in the following fields. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
   The username and password are stored in the Alvao database in unencrypted form.</div>

  <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
   If a username and password are filled in, this user must have send permission (SendAs) for all service email addresses.</div>
    </li>
  <li><strong>Integrated Authentication</strong> - select this option if the SMTP server is able to authenticate the user in an integrated way. The user account running the Alvao Service service must have permissions to send messages from that SMTP server.</li>
  </ul>
  </li>
  <li><strong>User Name</strong> - Enter the username of the user who is authorized to send messages from the specified SMTP server.</li>
  <li><strong>Password</strong> - enter the password of the user.</li>
 <li><strong>SSL</strong> - enable if you want to connect to the SMTP server securely (encrypted).</li>
  </ul>
 </li>
 <li><strong>Message Sender</strong>
  <ul>
 <li><strong>Address</strong> - enter an email address to send general messages from Alvao.
 <br />For example: <span class="console">ALVAO &lt;alvao@domain.com&gt;</span>
  <p>We recommend entering an email address of an existing service used for <a href="../service-desk/service/loading-messages">receiving messages to Service Desk</a>.
      If you don‘t use ALVAO Service Desk, the system does not load messages from the mailbox, so we recommend entering a non-existent email address
      or an address where you can arrange message pickup in another way. E.g.: ALVAO DontReply <a href="mailto:do-not-reply@domain.com">do-not-reply@domain.com</a>.</p>
   <p>This address is used for sending <a href="../../../../alvao-service-desk/news">current news</a>, <a href="../../../../alvao-asset-management/implementation/periodic-alerts">periodic alerts</a>,
       <a href="settings-check">notifications about problems in system settings</a>, etc.</p>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 Messages associated with requests in Alvao Service Desk are sent from the email addresses of the requests‘ services.</div></li>
  </ul>
 </li>
	</ul>
</asp:Content>
