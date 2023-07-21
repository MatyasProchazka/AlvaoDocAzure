<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New rule</h1>
<p>This form is used to create a new rule for incoming messages.</p>
<p>Options:</p>
	<ul>
 <li><strong>Rule Name</strong> - enter the name of the rule.</li>
 <li><strong>Conditions</strong> - enter one or more of the following conditions. If you specify more than one condition, the rule will be executed only if all the specified conditions are met.&nbsp; <ul>
 <li><strong>Message Subject Contains</strong> - enter the text that must be included in the message subject. For example, if you specify: <em>Application installation</em>, the condition will be met for messages with the subject line: <em>Office application installation</em>; <em>Remote installation of applications on a computer</em>; <em>Application installation</em>. <em>Basic Application Installation</em> will not satisfy the condition.</li>
 <li><strong>Message body contains</strong> - enter the text that must be included in the message body.</li>
 <li><strong>Sender contains</strong> - enter the text that must be contained in the <em>From</em> field of the message.</li>
 <li><strong>Recipient contains</strong> - enter the text that must be contained in the <em>To</em> field of the message.</li>

  </ul>
 </li>
  <li><strong>Send a message</strong><ul>
  <li><strong>Send Message</strong> - if you enable this option, the rule sends the message that is defined in the following fields. </li>
  <li><strong>To whom</strong> - specify the recipient of the message. You can enter multiple email addresses in the field, which can be separated by semicolons or commas.</li>
  <li><strong>Subject</strong> - enter the subject of the message.</li>
  <li><strong>Text</strong> - enter the text of the message.</li>
  </ul>
  </li>
  <li><strong>Next Action</strong> - select which actions to perform on the request that was created based on the incoming message.  <ul>
  <li><strong>Create in Service</strong> - the request is created directly in the selected service.</li>
   <li><strong>Resolve Request</strong> - the request is automatically resolved immediately.</li>
   <li><strong>Delete Request</strong> - the request is automatically deleted immediately.</li>
  </ul>

  </li>
	</ul>


</asp:Content>
