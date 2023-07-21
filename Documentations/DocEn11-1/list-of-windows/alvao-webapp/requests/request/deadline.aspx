<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Due date</h1>
<p>Use this form to change the <a href="../../../../alvao-service-desk/requests/deadline">deadline</a> of selected requests.</p>
<p>Options:</p>

	<ul>
 <li><strong>Due date</strong> - enter the date and time by which the request will be resolved.</li>
 <li><strong>Message for requester</strong> - type a message for requester that will be sent to them in an email notification. In the message to the requester, explain the reasons for the change in the deadline for resolving the request.</li>
	<li><strong>Cost Report</strong> - if applicable, <a href="../../../../alvao-service-desk/requests/work-time">explain the work time</a> spent resolving the request.</li>

 <li><strong>Do not send notifications to the requester</strong> - turn on if you do not want to inform the applicant about the deadline change.</li>
	</ul>

</asp:Content>
