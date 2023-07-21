<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

	<h1>Email message to all tenants</h1>
	<p>Use this form to <a href="../../../../alvao-asset-management/implementation/installation/multitenant">multitenant mode</a> to email the selected message to all tenant users.</p>
  <p>Options:</p>
  <ul>
  <li>Command Panel<ul>
  <li><strong>Send</strong> - send the message. The command has the same function as the <em>Send</em> button on the form.</li>
  </ul>
  </li>
  <li>Send a message by email to all tenants:
 <ul>
  <li><strong>Alvao administrators only</strong> - the message will only be sent to members of the <a href="../../../../alvao-asset-management/implementation/users/groups">Administrators</a> group of each tenant.</li>
  <li><strong>All users</strong> - the message will be sent to all users of each tenant.</li>
 </ul>

  </li>
  </ul>

  <p>In both cases, the message is sent only to active users, i.e. people who have filled in their username and email and whose user accounts are not hidden, blocked or deleted.  </p>


</asp:Content>
