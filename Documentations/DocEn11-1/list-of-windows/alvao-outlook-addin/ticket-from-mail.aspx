<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New request from message </h1>
	<ul>
 <li><strong>Requester</strong> - select the requester you want to create a request for.</li>
 <li><strong>Non-registered user</strong> - if you want to create a request for an applicant who does not exist in SD, select this option and fill in the applicant's contact details.</li>
 <li><strong>Service</strong> - select the service to which the request should be created.</li>
 <li><strong>Request Name</strong> - enter the name of the request</li>
 <li><strong>OK</strong> - then press this button to create a new request.</li>
	</ul>

<div class="note">
  <div class="icon"></div>
  <div class="title">Notes:</div>
 If you pull requests from multiple messages, the <strong>Request Name</strong> field will not be displayed and the <strong>Message Sender</strong> option will be displayed next to the requester.<br />
 Select the <strong>Message Sender</strong> option if you want to select the message sender as the requester of the request.<br />
  </div>

</asp:Content>
