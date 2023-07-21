<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>New service</h1>
<p>This form is used to create a new <a href="../../../../../alvao-service-desk/implementation/services">
services</a>.</p>
<p>Options:</p>
  <ul>
  <li><strong>General</strong>
	<ul>
 <li><strong>Service Name</strong> - enter the service name. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
	  We recommend naming services that contain requests (not just folders in the service tree) with a plural name, e.g. <em>Leave Requests</em>, <em>Improvement Ideas</em>, etc.</div>

  </li>
 <li><strong>E-mail</strong> - enter the service email from which notifications will be sent to applicants and members of the research team. The email can be entered as <em>email address</em> (e.g. <em>support@alvao.com</em>)<em> </em>or</em>
  name-service &lt;email-address&gt; </em>(e.g. <em>Technical Support &lt;support@alvao.com&gt;</em>)<em>.</em> Separate multi-word names with a space, do not use commas, semicolons or other punctuation marks.
 <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div> Do not use an email that is already assigned to a user.</div>
  
 </li>
 
 <li><strong>Phone</strong> - enter the phone number of the main service provider.</li>
 <li><strong>Description</strong> - enter brief information about the service. The service description is displayed to applicants in the service catalog.</li>
 <li><strong>Process</strong> - select the process from the menu that will be used to process requests in the service. <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div>
  <a href="../../../../../alvao-service-desk/implementation/services/processes">Process</a> defines, among other things, the <a href="../process/detail/workflow">process of the solution</a> and the visible <a href="../process/detail/request-items">
  request items</a><a href="../process/detail/workflow">.</a></div>
 </li>
 <li><strong>Request tag prefix</strong> - specify the prefix of the request tag. The request tag has the format <span class="console">&lt;prefix&gt;request-number&lt;prefix&gt;</span>, e.g. T123ALVAO. The request tag is automatically included in the subject line of notifications and other messages and is used to associate the message with the correct request.</li>
  <li><strong>Request Tag Suffix</strong> - Enter the request tag suffix, see <em>Request Tag Suffix</em>.</li>
 <li><strong>Preferred Language</strong> - the language of the service in which notifications are sent to service principals.</li>
 <li><strong>Time zone</strong> - the time zone in which all dates and times in notifications sent to the service principals will be reported.</li>
 <li><strong>Folder (requests cannot be entered into the service)</strong> -
 Enable if you want to disable the creation of requests in this service. A folder can have child services that can be used to insert requests.</li>
 <li><b>Require solver License</b> - enable if you want to ensure that the service requires a solver license regardless of the SLA assignment to the <em>Host</em> user. If the service requires a license per solver, the license must cover all members of the solver team. Applicants then do not require any license. For more information, see <a href="../../../../../alvao-service-desk/implementation/users/sd-licenses">
 License Service Desk</a>.</li>
 
 <li><strong>Service Shortcut</strong> - If you only want to create a shortcut that points to another service, enable this option and select the target service. <em>Permissions</em> and <em>SLAs</em> are applied to the shortcut according to the target service.
 <li><strong>...</strong>
 - or select the service from the service tree.</li>
  </ul>
  <div class="note">
  <div class="icon"></div>
  <div class="title">Note:</div> Once a service is created, this option cannot be changed.</div>
 </li>
	</ul>
	
	<div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>Fields <em>Service Name</em>, <em
	Email</em>, <em>Prefix, Suffix</em> and menus<em> Process, Language, Time Zone</em> are mandatory.&nbsp; </div>
</li>
<li><a href="catalog">Service Catalog</a> - Setting the appearance of the tile in the service catalog in the WebApp, setting keywords, order in the tree, and default request templates.</li>
<li><a href="objects">Objects</a> - select the objects on which the service will appear in the service menu to create a new request.</li>
<li><a href="loading-messages">Message loading</a> - setup loading messages from the mailbox. </li>
<li><a href="extended">Extended</a> - setting the processing flow of the request. </li>
<li><a href="notification">Notification</a> - setting to send automatic notifications about the occurrence and progress of requests for the service being edited. </li>
<li><a href="other">Other</a> - manage custom service items</li>
	
</ul>
	
</asp:Content>
