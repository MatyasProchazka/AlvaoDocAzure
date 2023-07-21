<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Approval schemes</h1>
<p>This page is used to manage <a href="../../../../alvao-service-desk/implementation/services/processes/request-approval">approval schemes</a>.</p>

<p>Options:</p>
<ul><li><strong>Command Panel</strong>
  <ul>
	<li><strong>New schema</strong> - create <a href="approval-scheme/create-approval-scheme">new schema</a>. </li>
	<li><strong>Create Copy</strong> - create a copy of the selected schema.</li>
  <li><strong>Edit</strong> - edit the selected schema. The menu contains the same commands as the blocks in the <a href="approval-scheme/detail">schema preview</a>. Schemes that are currently being approved cannot be edited. To edit them, use the <em>Replace</em> command.</li>
	<li><strong>Replace</strong> - If you want to edit a schema that is locked for editing because it is currently being approved, use this command on that schema. The command creates a copy of the selected schema, replaces the selected schema with this copy in all processes, and then removes the selected schema, however, approvals in progress against it will run. You can modify the resulting schema copy until a new approval is started against it, or while the new approval is in progress. We recommend renaming the resulting copy of the scheme so that the name makes the version of the scheme clear, e.g. to indicate the effective date.</li>
	<li><strong>Delete</strong>- delete the selected schema. Schemas that are used in <a href="../../../../alvao-service-desk/implementation/services/processes">processes</a> settings cannot be removed. If you remove the schema under which approvals are currently running, approvals under the schema will normally run out.</li> </ul>
	</li>
  <li><strong>Approval Schema Table</strong>- contains all approval schemas. <a href="../../../../alvao-asset-management/working-with-tables">Customize</a> the table as needed.</li>
  <li><strong>Selected Approval Schema</strong> - after selecting a schema in the table, the <a href="approval-scheme/detail">preview</a> will appear on the right.
  with information about the selected scheme.  The <em>Edit</em> command is displayed in each block of the preview.</li>
	</ul>

</asp:Content>
