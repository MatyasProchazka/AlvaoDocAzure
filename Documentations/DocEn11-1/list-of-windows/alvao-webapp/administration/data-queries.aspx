<%@ Page masterpagefile="~/doc.master" Language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Data queries</h1>
    <p>
        On this page, you can manage <em>data queries</em> in Alvao. A <em>data query</em> is a custom SQL query defined by <a href="../../../alvao-asset-management/implementation/users/groups">Administrators</a> or <a href="../../../alvao-asset-management/implementation/users/groups">Configuration administrators</a>. Then, designated users can view the results of the queries on the <a href="../data-queries">Data queries</a> page.</p>

    <p>Options:</p>
    <ul>
        <li><strong>Command Panel</strong>
            <ul>
                <li><a href="data-queries/new">New data query</a> - create a new data query.</li>
                <li><strong>Edit</strong> - edit the properties of the selected data query. The menu contains the same commands as the blocks in the <a href="data-queries/data-query">selected data query panel</a> on the right.
                    </li>
                <li><strong>Enable</strong> - enable the selected queries. Enabled queries are visible to designated (see <a href="data-queries/data-query/permissions">Permissions</a>) users on the <a href="../data-queries">Data queries</a> page.</li>
                <li><strong>Disable</strong> - disable the selected queries. Disabled queries are not accessible by users.</li>
                <li><strong>Delete</strong> - permanently delete the selected queries.</li>
                <li><strong>User view</strong> - opens the <a href="../data-queries">Data queries</a> page with the selected query on a new browser tab. Use this command to check the results of the query from the user&#39;s point of view.</li>
            </ul>
        </li>
        <li><strong>Data query table</strong> - contains all data queries in Alvao. You can <a href="../../../alvao-asset-management/working-with-tables">customize</a> the table as needed.</li>
        <li><strong>Selected data query</strong> - after selecting a query in the table, the <a href="data-queries/data-query">panel</a> with information about the selected data query will appear on the right.</li>
    </ul>

    <p>
        To see this page, activate at least one of the following modules:</p>
    <ul>
        <li><a href="../../../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a></li>
        <li><a href="../../../modules/alvao-am-custom-apps" translate="no">ALVAO Asset Management Custom Apps</a> </li>
    </ul>

</asp:Content>
