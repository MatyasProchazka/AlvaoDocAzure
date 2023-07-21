<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Note</h1>
<p>This form can be used to add a new <em>event</em> to the <a href="../request">Communications</a> tab, i.e. a note, phone call minutes, minutes from a face-to-face meeting, etc.</p>

<p>Options:</p>
  <ul>
  <li>
  <strong>Command Panel</strong>
  <ul>
  <li><strong>OK</strong> - save event to <a href="../request">Communications</a></li> tab
  <li><strong>Attachment</strong> - attach an attachment. This command has the same function as the <em>Add attachment</em> button
  in the form.</li>
  <li><b>Note/Phone call/Personal Meeting</b> - if applicable, change the type of event you want to create. If you select the <i>Message</i> event type, the form will change to the <a href="message">Message</a> form to send an email message.</li>
  <li><strong>Transit to status</strong> - move to another request status according to the <a href="../request">solving process</a></li>
  </ul>
  </li>
  <li><strong>Subject</strong> - enter the subject of the event.</li>
  <li><strong>Text</strong>- type more detailed information about the event.</li>
  <li><strong>Attachments</strong> - list attachments<ul>
  <li><strong>Add attachment</strong> - select the file you want to attach as an attachment. You can also attach files by dragging and dropping them into the form.</li>
  </ul>
  </li>
  <li><strong>Date and Time</strong> - edit the date and time of the event if necessary.</li>
  <li><strong>From </strong>- change the author of the event if necessary.</li>
  <li><strong>To Whom</strong> - if applicable, indicate with whom you have spoken on the phone or had face-to-face discussions. </li>
  <li><strong>Display to requester</strong> - turn on if you want the requester to see the event on the <a href="../request">Communications</a> tab of the selected request.</li>
  <li><strong>Waiting for requester</strong> - turn on if you want the time since the event was written to count as <a href="../../../../alvao-service-desk/requests/wait-for-response">waiting for requester</a>.</li>
  <li><strong>Important</strong> - enable this option when there is an important event, such as a request being submitted or refined. On the <a href="../request">Communications</a> tab, the event will be highlighted with a blue flag symbol.</li>
  <li><strong>Request solution</strong> - enable this option if the event contains a description of how to resolve the request. On the <a href="../request">Communications</a> tab, the event will be highlighted with a green flag symbol.</li>
	<li><strong>Cost Report</strong> - Alternatively, <a href="../../../../alvao-service-desk/requests/work-time">show the work time</a> spent resolving the request.</li>

  </ul>


</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  </asp:Content>

