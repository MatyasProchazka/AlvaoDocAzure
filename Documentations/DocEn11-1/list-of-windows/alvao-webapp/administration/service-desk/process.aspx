<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Processes</h1>

<p>This page is used to manage <a href="../../../../alvao-service-desk/implementation/services/processes">
processes</a>.</p>

<p>Options:</p>
  <ul>
  <li><strong>Command Panel</strong>
  <ul>
  <li><strong>New Process</strong> - create <a href="process/create-process">new process</a>. </li>
  <li><strong>Edit</strong> - edit the selected process. The menu contains the same commands as the blocks in the <a href="process/detail">preview</a> process.</li>
  <li><strong>Delete</strong> - delete the selected process.</li>
  </ul>
  </li>
  <li><strong>Process Table</strong> - displays the processes and their selected attributes. You can <a href="../../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
  <li><strong>Selected Process</strong> - After selecting a process in the table, a <a href="process/detail">view</a> will appear on the right with information about the selected process.  The <em>Edit</em> command is displayed in each block of the preview.</li>
  </ul>

</asp:Content>
