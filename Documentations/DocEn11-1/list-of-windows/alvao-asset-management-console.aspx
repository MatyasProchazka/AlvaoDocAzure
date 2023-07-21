<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">ALVAO Asset Management Console</h1>
    <p>
        This chapter describes the windows and commands that appear on the screen when working with the <a href="../alvao-asset-management/console" translate="no">ALVAO Asset Management Console</a>, which is used to work with the <a href="../alvao-asset-management">ALVAO Asset Management</a>.
    </p>

        The main window contains the following 3 main sections:<ul>
            <li><a href="alvao-asset-management-console/object-tree">Object tree</a> - is displayed in the left part of the window. The tree shows all objects registered in Asset Management. For more information about working with objects and the tree, see <a href="../alvao-asset-management/objects-and-properties">Objects and properties</a>.</li>

            <li><a href="alvao-asset-management-console/tab-view">Views tabs</a> - the right side of the window contains the Views tabs. The individual tabs show more detailed information about the object you have selected in the tree.</li>


            <li><b>Status bar</b> - at the bottom of the window there is a status bar that contains the following information:</li>
            <ul>
                <li><a href="alvao-asset-management-console/object">Object</a> - the object selected in the object tree (and the path to the object from the root of the tree).</li>
                <li><strong>Table</strong> - data about the currently selected table.<br />
                    If a single table row is selected, information about the order of the selected row and the total number of table rows is displayed. If multiple rows are selected, information about the number of rows selected and the total number of rows in the table is displayed.</li>
                <li><strong>Database</strong> - the name of the database to which the AM Console is currently connected.</li>
                <li><strong>User</strong> - the user currently logged into AM Console.</li>
            </ul>
        </ul>

</asp:Content>
