<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Services</h1>
<p>On this page you can manage <a href="../../../../alvao-service-desk/implementation/services">
services</a> to which requesters enter their requests.</p>

 <p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Service</strong> - create <a href="service/create-service">new service</a>. </li>
  <li><strong>Table/Tree</strong> - switch the service view mode.</li>
  <li><strong>Display deleted/Hide deleted</strong> - show or hide services that are marked as deleted, see the <em>Delete</em> command. These commands are only available in a tree (see <em>Show as tree</em>). </li>
  <li><strong>Edit</strong> - modify properties and user permissions for the selected service. The menu contains the same commands as in the <a href="service/detail">preview</a> blocks of the service.</li>
  <li><strong>Delete</strong> - mark the selected service as deleted in the database (it cannot be permanently removed from the database, only marked with the <em>Delete</em> flag). Services marked in this way are not normally displayed in the application, but you can view them with the <em>View Deleted</em> command;
  </li>
  <li><strong>Copy</strong> - copies the selected service, possibly including all sub-services. After this command, use the <em>Paste</em> command. You can also invoke the <em>Copy</em> command using the <span class="key">keyboard shortcut
 Ctrl+C</span>.</li>
  <li><strong>Paste</strong> - Paste a copy of the service specified by the last use of <em>Copy</em> into the selected service in the tree. You can also invoke the <em>Paste</em> command using the <span class="key">keyboard shortcut
 Ctrl+V</span>. All service settings are copied except those in the <a href="service/detail/edit">Message Reading</a> block.<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
   You can also copy services in the tree with the mouse using the drag & drop method with the <span class="key">key pressed.
 Ctrl</span>.</div>
	  </li>
  <li><strong>Restore Deleted</strong> - restores selected services that are marked as deleted, see <em>Remove</em>.</li>
  <li><strong>Overwrite permissions</strong>- override all permissions set on the selected services with the permissions of <a href="service/multi-edit/authorization">a specific service</a>. This command is only available for 2 or more selected services in the table. You can override the permissions of a single service with the <a href="service/detail/authorization">Edit - Permissions</a> - <em>Override</em> command.</li>
  <li><strong>Remove permissions</strong> - remove all permissions set on the selected service. This command is only available for 2 or more selected services in the table. You can remove permissions from one service by using the <a href="service/detail/authorization">Edit - Permissions</a> - <em>Remove</em> command.</li>
  <li><strong>Overwrite SLA</strong> - Override all SLAs set on the selected services by setting the SLA of <a href="service/multi-edit/sla">a specific service</a>. The command is only available for 2 or more selected services in the table. You can override the SLA settings of a single service with the <a href="service/detail/sla">Edit - SLA</a> - <em>Override</em> command.</li>
  <li><strong>Remove SLA</strong> - remove all SLAs set on the selected services. This command is only available for 2 or more selected services in the table. You can remove the SLA settings of one service with the <a href="service/detail/sla">Edit - SLA</a> - <em>Remove</em> command.</li>
  <li><strong>Export</strong> - export the selected service including child services and related settings (process, custom fields, etc.) to a file, see <a href="../../../../alvao-service-desk/implementation/services/service-transfer">Service transfer</a>. If you do not select any services, all services in the service tree are exported. <li><strong>Import</strong> - Import services from a file. The services contained in the file are created as child services under the currently selected service. If you do not select any services, the new services are imported into the root of the service tree.</li>
  </ul></li>
  <li><strong>Service tree</strong>- services displayed in the tree (see <em>Show as tree</em>).<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 You can move services in the tree with the mouse using the drag & drop method.</div>

	
 </li>
  <li><strong>Services table</strong> - services displayed in the table (see <em>Show as table</em>). You can <a href="../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.<div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
   You can select multiple services in the table and <a href="service/multi-edit">edit them in bulk</a>. You can select services in the table by clicking in the first column &quot;pipe&quot; or by selecting rows with <span class="key">Ctrl</span> or <span class="key">Shift</span>.</div>
	

  </li>
  <li><strong>Selected service</strong> - after selecting a service in the tree or table, <a href="service/detail">preview</a> will appear on the right
  with information about the selected service.  The <em>Edit</em> command is displayed in each preview block to modify the service settings.</li>
  </ul>



 <h2>How to design a service structure</h2>
  <ul>
  <li>
 Applicants select the service sequentially from the root to the leaves of the tree. It is recommended to build the tree, if possible, so that on the path from the root to the leaves, requesters are able to intuitively select the correct service to insert their request.</li>
  <li>
 For the service tree breakdown you can use auxiliary services with enabled option <a href="service/create-service">Folder</a>. New requests cannot be added to folders.</li>
  <li>
 For frequently used services, you can create a <a href="service/create-service">service placeholder</a> in a more accessible location in the service catalog.</li>
  </ul>

  <h2>Links on the main page</h2>
  <p>Services in the <i>Links on the main page</i> folder appear as tiles on the main page below the search box. If you want to display a link to a form to submit a request to a specific service on the main page, create a shortcut for that service in the <i>Links on Main Page</i> folder in the catalog. The link will only appear on the main page for users who have an SLA assigned to that service. If you want to display a link to any other page in the ALVAO WebApp or elsewhere, create a service and enter the url of the page in the <i><a href="service/detail/new-ticket-items">New Ticket Submission Form</a> - Custom Form URL</i> field and assign any SLA in that service to the users to whom the link should be displayed.  <br />A maximum of 8 links will be displayed on the main page. The links are displayed in the same order as the services in the catalog.</p>
  
 </asp:Content>

