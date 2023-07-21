<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Request items</h1>
<p>In this window, you can add additional data items to requests that are controlled by the process you are editing. All requests in all services that use the edited process have data items listed here.</p>
  <p>The data items listed here are <a href="../../../../../../alvao-service-desk/implementation/services/service-roles">to the members of the solution teams</a> of those services, including exceptional solvers and readers, are automatically displayed in the request on the <em>General</em> tab, as well as in the <em>New Request</em> and <em>Edit</em> (request) forms.</p>

<p>Options:</p>
	<ul>
 <li><strong>Command Panel</strong><ul>
  <li><a href="request-item">Add</a> -
 add a new request item to the process.</li>
  <li><strong>Remove</strong> - remove the selected item from the process.</li>
  </ul>
  </li>
  <li><strong>Items table</strong> - the table shows the items that are currently included in the process. You can <a href="../../../../../../alvao-asset-management/working-with-tables">use the table as needed</a>.</li>
	</ul>

<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	For each workflow status, set the mandatory items that must be completed before the request can move to that status (<em>ALVAO WebApp - Administration - Service Desk - Processes - Process - solving process - Status - </em><a href="status-request/edit">Edit</a><em> - General - Mandatory Items</em>).</div>
</asp:Content>
