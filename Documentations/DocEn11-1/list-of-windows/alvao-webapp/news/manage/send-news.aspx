<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	<h1>Send a message by e-mail</h1>
	<p>Use this form to send the selected message by email to the selected recipients.</p>
  <p>Options:</p>
  <ul>
  <li>Command Panel<ul>
  <li><strong>Send</strong> - send the message. The command has the same function as the <em>Send</em> button on the form.</li>
  </ul>
  </li>
  <li>Send message by email:
 <ul>
  <li><strong>To requesters of assigned services</strong> the message will be sent to all requesters of the services to which the current message is assigned. This option is only available for messages with the <a href="new-news">Show to requesters</a> option enabled.</li>
  <li><strong>To members of the assigned service's resolution team</strong>
  - message will be sent to all members of the <a href="../../../../alvao-service-desk/implementation/services/service-roles">
  service resolution teams</a> to which the current message is assigned. </li>
  <li><strong>To Selected Recipients</strong> - enter the recipients' email addresses separated by semicolons.</li>
 </ul>

  </li>
  </ul>
  

</asp:Content>
