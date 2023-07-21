<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Document to object link</h1>
    <p>Each document can be linked to one or more objects. For example, an invoice for the purchase of a computer is linked to the computer. A report of a transfer of a computer between two workers is linked to the computer and also to the transferring and receiving workers. By link documents to objects, you can, for example, find all handover protocols related to a computer.</p>

    <h2>Creating a link</h2>
    <ol>
        <li>Select an object in the object tree.</li>
        <li>In <a href="../../list-of-windows/alvao-asset-management-console">main window</a>, select the <strong>Diary</strong> tab, right-click in the table, and select <strong>Diary</strong> from the context menu. <strong>Add - Document link</strong>.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/documents">Documents</a> , in which you double-click the document you want to link to the object.</li>
    </ol>
    <div class="tooltip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        <p>
            In the <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/documents">Documents</a> you can search for a document using the table search functions, see <a href="../working-with-tables/tables-searching">Finding values</a> and <a href="../working-with-tables/tables-filtering">Filter</a>.
        </p>
    </div>

    <h2>Removing the link</h2>
    <ol>
        <li>Select an object in the object tree.</li>
        <li>In <a href="../../list-of-windows/alvao-asset-management-console">main window</a>, select the <strong>Diary</strong> tab, right-click on the document whose object link you want to remove, and select <strong>Remove</strong> from the menu.</li>
    </ol>
    <p>Note: To view the removed document links, go to the <strong>Diary</strong> tab and enable the "Table - Show Deleted Items" option from the local menu.</p>

</asp:Content>
