<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>New installation - computers</h1>
    <p>The left table (<strong>Computer menu</strong>) shows all available computers in the inventory. In the right table (<strong>Selected Computers</strong>), move the computers on which you want to write an installation record.</p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Tables can be <a href="../../../../alvao-asset-management/working-with-tables">customize</a>.
    </div>

    <p>Options:</p>
    <ul>
        <li><strong>&gt;</strong> - move the computer (selected in the left table) to the right table.</li>
        <li><strong>&lt;&lt;</strong> - remove the computer selected from the right table (move it back to the left table).</li>
    </ul>
</asp:Content>
