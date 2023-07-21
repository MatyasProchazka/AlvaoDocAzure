<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Message</h1>
  <p>Use this form to <a href="../../../../alvao-service-desk/requests/send-message">send an email message</a> regarding the selected request. The message will be sent from the request service email address and will be displayed on the <a href="../request">Communications</a> tab.</p>

  <p>Options:</p>
  <ul>
  <li>
  <strong>Command Panel</strong>
  <ul>
  <li><strong>Send</strong> - send a message</li>
  <li><strong>Attachment</strong> - attach an attachment to the message. This command has the same function as the <em>Add Attachment</em> button
  in the form.</li>
  <li><b>Message</b> - if, in the course of writing a message, you decide that you do not want to send the text you have written as a message, but just want to save it to the request log, e.g. as a note or minutes of a personal meeting, select the desired event type from this menu. This will change the form to <a href="note">Note</a>.</li>
  <li><strong>Transit to status</strong> - move to another request status according to the <a href="../request">solving process</a>.</li>
  </ul>
  </li>
  <li><strong>To</strong> - enter at least part of the message recipient's name, then select that recipient from the drop-down menu. You can also type the recipient's email address directly into the line.</li>
  <li><strong>Copy</strong> - in the case of a secondary recipient, enter the secondary recipient of the message.</li>
  <li><strong>Subject</strong>- check and edit the subject of the message.</li>
  <li><strong>Text</strong>- write the message. You can use the <em>Knowledge Base</em> button in the command bar above the input field to insert the text of some knowledge from the Knowledge Base into the message text.</li>
  <li><strong>Attachments</strong> - list of attachments to the message.<ul>
  <li><strong>Add Attachment</strong> - select the file you want to add as an attachment. You can also attach files by dragging and dropping them into the form.</li>
  </ul>
  </li>
  <li><strong>Display to requester</strong> - turn on if you want the Requester to see the message on the <em>Communications</em> tab of the selected request.</li>
  <li><strong>Wait for response</strong> - turn on if you want to count the time between sending the message and receiving a response from the requester as <a href="../../../../alvao-service-desk/requests/wait-for-response">waiting for the requester</a>. Time is only counted in the <em>waiting for a requester</em> if the message is addressed to the requester.</li>
  <li><strong>Important</strong> - enable this option if there is an important event, such as a request being submitted or clarified. On the <a href="../request">Communications</a> tab, the event will be highlighted with a blue flag symbol.</li>
  <li><strong>Request solution</strong> - enable this option if the event contains a description of how to resolve the request. On the <a href="../request">Communications</a> tab, the event will be highlighted with a green flag symbol.</li>
	<li><strong>Cost Report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">show the work time</a> spent resolving the request.</li>

  </ul>


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

