<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Message template for approvers</h1>
<p>This window allows you to define an approver message template for the approval status of the request being edited. The message to the approver is sent to the approvers as a notification of the start of the approval. It is also displayed on the request approval or rejection form and in the request log in the approval initiation events.</p>
<p>Options:</p>
	<ul>
 <li><strong>Use default template</strong> - use a default message template that is common to all processes and request statuses.<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	  If you are not comfortable with the system default template, you can modify it in the database with an <a href="../../../../../../../alvao-service-desk/requests/update_default_message_for_approver.sql">SQL script</a>.</div>

  </li>
 <li><strong>Use Custom Template</strong> - use a custom template that is defined only for the request status being edited. Edit the message template in the text box. The resulting message should tell the approver what specifically is to be approved, i.e., what specifically to approve or reject in the request (e.g., the requester's original request, the proposed solution, the final implementation method, etc.).<div class="tooltip">
<div class="icon"></div>
<div class="title">Tip:</div>
  In the template, border the text you want to display in bold in the message with <span class="console">&lt;b&gt;</span> and <span class="console">&lt;/b&gt;</span> tags, e.g. <span class="console">&lt;b&gt;Important:&lt;/b&gt;</span>. Other HTML tags are not supported.</div>

<ul>
 <li><strong>Restore Default</strong> - overwriting the current content of the text field with the default template.</li>
 <li><strong>Insert Variable</strong> - use the drop-down menu to select the variable you want to insert into the template at the current cursor position. For a list of variables, see <a href="../../../service/message-template">Custom Notification Template (Approvers Message Template column)</a></li>
 </ul>
  </li>
	</ul>

<div class="note">
<div class="icon"></div>
<div class="title">Note:</div>
Notifications sent to approvers are formatted according to the set <a href="../../../settings/notification-style">notification style</a>.</div>


</asp:Content>
