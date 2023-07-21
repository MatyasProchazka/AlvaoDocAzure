<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Add permission</h1>
<p>On this page or panel, you see information about the selected <a href="../../../data-queries">data query</a>. You can edit the data displayed in each block by using the <em>Edit</em> command in that block.</p>


<p>Options:</p>
	<ul>
  <li><strong>Search for a person or group to add</strong> - enter at least part of the user name or group name and select the user or group from the drop-down menu. This will add the selected user or group to the list below the input field. You can select several users and groups at a time, or use the [...] button to select several entries from the table at once.</li>
        <li><strong>Permissions</strong><ul>
            <li><strong>Run query</strong> - users with this permission can view the results of the data query on the page <a href="../../../../data-queries">Data queries</a>. The permission can&#39;t be denied.</li>
            </ul>
        </li>
	</ul>

</asp:Content>
