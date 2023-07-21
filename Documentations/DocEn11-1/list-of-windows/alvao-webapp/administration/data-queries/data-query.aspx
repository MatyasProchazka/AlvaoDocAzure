<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Data query</h1>
<p>On this page or panel, you see information about the selected <a href="../data-queries">data query</a>. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>


<p>Options:</p>
	<ul>
  <li><strong>Command Panel</strong> - see the command panel on the <a href="../data-queries">Data queries</a> page.</li>
        <li>Blocks<ul>
            <li><a href="data-query/edit">Name, Description, ...</a> - basic data query properties</li>
            <li><a href="data-query/query">Query</a> - the SQL query</li>
            <li><a href="data-query/permissions">Permissions</a> - list of users and groups permitted to access the data query.</li>
            </ul>
        </li>
	</ul>

</asp:Content>
