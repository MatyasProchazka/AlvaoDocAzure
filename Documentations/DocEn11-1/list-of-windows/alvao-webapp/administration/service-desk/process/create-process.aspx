<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New process</h1>
<p>This window is used to create a new <a href="../../../../../alvao-service-desk/implementation/services/processes">
process</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Name</strong> - enter the name of the process. <div class="tooltip">
  <div class="icon"></div>
  <div class="title">Tip:</div>
  We recommend naming processes with the name of the process entity (in singular) that the process handles, e.g. "<em>Incident</em>",
  "<em>Change Request</em>", etc. The process names are displayed to users in the titles of the <em>New Request</em> and <em>Edit</em>(request) windows.
 </div></li>
 <li><strong>Description</strong> - enter a description of the process.</li>
 <li><strong>Influence on the health of objects</strong> - select how requests in services with this process affect the <a href="../../../../../modules/alvao-configuration-management/object-health">health</a> of objects that are linked to the requests. The option is only available if the <a href="../../../../../modules/alvao-configuration-management">ALVAO Configuration management</a> module is activated.</li>
	</ul>




</asp:Content>
