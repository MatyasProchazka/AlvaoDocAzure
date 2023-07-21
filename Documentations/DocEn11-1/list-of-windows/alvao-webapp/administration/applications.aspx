<%@ Page masterpagefile="~/doc.master" Language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Applications</h1>
<p>On this page you can manage <a href="../../../modules/alvao-sd-custom-apps/applications">apps</a> in Alvao. This page is only available after activating the <a href="../../../modules/alvao-sd-custom-apps">ALVAO Service Desk Custom Apps</a> module.
  or <a href="../../../modules/alvao-am-custom-apps">ALVAO Asset Management Custom Apps</a>.</p>

<p>Options:</p>
	<ul>
  <li><strong>Command Panel</strong>
  <ul>
   <li><a href="applications/app/new">New application</a> - create a new application</li>
   <li><strong>Edit</strong>
  <ul>
  <li><a href="applications/app/edit">Properties</a> - edit the name and description of the selected application</li>
  <li><strong>Scripts</strong> - manage scripts of the selected application</li>
  </ul></li>
   <li><strong>Delete</strong> - permanently delete the selected application including scripts</li>
   <li><strong>Allow</strong> - enable all scripts of the selected application to run</li>
   <li><strong>Disable</strong> - disable the execution of all scripts of the selected application</li>
   <li><strong>Export</strong> - export the selected application to a file</li>
   <li><strong>Import</strong> - import the application from a file. After importing, the application will be disabled until you enable it to run, see the <em>Enable</em> command.</li>
  </ul>
  </li>
  <li><strong>Application Table</strong> - contains all applications in the Alvao system and their selected properties. You can <a href="../../../alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
  <li><strong>Selected Application</strong> - after selecting an application, the <a href="../../../list-of-windows/alvao-webapp/administration/applications/app">view</a> with information about the selected application and its scripts will appear on the right.</li>
	</ul>

</asp:Content>
