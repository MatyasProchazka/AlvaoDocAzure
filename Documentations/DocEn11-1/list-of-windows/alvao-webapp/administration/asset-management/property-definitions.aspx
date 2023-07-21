<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Property definitions</h1>
    <p>On this page you can manage <a href="../../../../alvao-asset-management/implementation/object-properties">property definitions</a>.</p>
    <p>Options:</p>
    <ul>
        <li><strong>Command panel</strong>
            <ul>
                <li><a href="property-definitions/create-property">New property</a> - create a new property definition.</li>
                <li><strong>Edit</strong> - edit the selected property definition. The menu contains the same commands as the blocks in the <a href="property-definitions/detail">Property definition</a> panel.</li>
                <li><strong>Delete</strong> - delete selected property definitions.</li>
            </ul>
        </li>
        <li><strong>Table</strong> - contains all property definitions. You can <a href="../../../../alvao-asset-management/working-with-tables">customize</a> as needed.</li>
        <li><strong>Selected property definition</strong> - after selecting a record in the table, this <a href="property-definitions/detail">panel</a> will appear on the right with information about the selected record.</li>

    </ul>

</asp:Content>
