<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Merge requests</h1>
<p>Use this form to merge multiple <a href="../../../../alvao-service-desk/requests/duplicate-requests">duplicate requests</a> into one.</p>
<p>Options:</p>
	<ul>
 <li><strong>Requests</strong> - enter the number, tag, or part of the name of the request you want to merge, then select the request from the drop-down menu. This will add the request to the list of requests below the input field. <div class="caution">
  <div class="icon"></div>
  <div class="title">Caution:</div>
	  All requests in this list will be irreversibly removed!  </div></li>

 <li><strong>Merge in request</strong>- Enter the number, tag, or part of the request name into which you want to merge all requests in the top list. The following information from all requests in the top list will be transferred to the specified request:<ul>
  <li>Request Logs</li>
  <li><a href="../../../../alvao-service-desk/requests/relations">Links to other requests</a></li>
  <li>Object links</li>
  <li><a href="../../../../alvao-service-desk/requests/subscribers">Followers</a></li>
  </ul>
  <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	  This field is automatically populated with the request over which you ran the <a href="../../requests">Merge Requests</a> command, or the oldest of the selected requests if there are more than one. The other selected requests are listed in the top list.</div>
  </li>
	</ul>

  
</asp:Content>
