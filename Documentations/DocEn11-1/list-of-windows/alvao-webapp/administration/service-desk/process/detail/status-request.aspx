<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New request status</h1>
<p>This form is used to create a new request status.</p>
<p>Options:</p>
	<ul>
 <li><strong>General</strong>
  <ul>
  <li><strong>Status Name</strong> - enter the name of the status.</li>
  <li><strong>Status description for the requester</strong> - enter a description of the status that will be displayed to the Requester of the request.</li>
  <li><strong>Instructions for solver</strong> - enter instructions for the solver. These instructions are displayed to solvers in the request on the <em>Solution Progress</em> tab. When a request is passed to a solver with a concurrent change of status, the instructions for the new status are automatically written into the message for the new solver. </li>
  <li><strong>Required items</strong> - a list of request data items that must be completed before transitioning to this status.<ul>
  <li><strong>Edit</strong> - open the <a href="status-request/required-items">window</a> to select the required items.</li>
  </ul>
  </li>
  </ul>
 </li>
  <li><a href="status-request/behavior">Behavior</a> - to further set the status of the request.</li>
  <li><strong>Other</strong></li>
	<ul>
		 <li><strong>Custom fields</strong> - here are located your custom fields added to this process.</li>
	</ul>

</ul>

</asp:Content>
