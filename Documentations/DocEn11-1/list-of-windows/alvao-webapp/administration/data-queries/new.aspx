<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>New data query</h1>
    <p>In this form, you can create a new <a href="../data-queries">data query</a>.</p>

    <p>Options:</p>
    <ul>
        <li><strong>Name</strong> - enter a unique name of the data query.</li>
        <li><strong>Description</strong> - enter a description of the data query.</li>
        <li><strong>Hide in menus</strong> - check this option to hide this data query in the list of available data queries on the <a href="../../data-queries">Data queries</a> page. The data query will be still accessible through its direct url, which can be used in a <a href="../../../../modules/alvao-am-custom-apps/applications/i-entity-tab">custom tab</a>, <a href="../../../../modules/alvao-am-custom-apps/applications/i-entity-command">custom command</a>, etc.</li>
    </ul>

</asp:Content>
