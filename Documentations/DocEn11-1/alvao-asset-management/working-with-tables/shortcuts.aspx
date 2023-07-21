<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Keyboard shortcuts</h1>

    <table>
        <thead>
            <tr>
                <th>Keyboard Shortcut</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><span class="key">Tab</span></td>
                <td>Move to the next cell of the filter row or to the next table.</td>
            </tr>
            <tr>
                <td><span class="key">Shift</span>+<span class="key">Tab</span></td>
 <td>Move to the previous cell of the filter row or to the previous table.</td>
            </tr>
            <tr>
                <td><span class="key">Delete</span></td>
                <td>Delete the selected item.</td>
            </tr>
            <tr>
                <td><span class="key">F5</span></td>
                <td>Refreshes the table with the current data in the database.</td>
            </tr>
            <tr>
                <td><span class="key">Ctrl</span>+<span class="key">P</span></td>
                <td>Print a table or <a href="../implementation/customization/reports">print reports</a>.</td>
            </tr>
            <tr>
                <td><span class="key">Ctrl</span>+<span class="key">E</span></td>
                <td>Opens table in MS Excel</td>
            </tr>
            <tr>
                <td><span class="key">Ctrl</span>+<span class="key">F</span></td>
                <td>Opens the search window</td>
            </tr>
            <tr>
                <td><span class="key">Enter</span></td>
                <td>Edit Item</td>
            </tr>
        </tbody>
    </table>


</asp:Content>
