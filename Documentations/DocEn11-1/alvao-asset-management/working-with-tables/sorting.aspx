<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Sorting values</h1>

    <p>
        You can sort values in tables by one or more columns. When you click the mouse on a column header, the table contents are sorted by the values in that column. When you click on the column header again, the rows are sorted in reverse order.<br />
        You can sort the table by multiple columns as follows:
    </p>
    <ol>
        <li>Mouse click on the header of the first column you want to sort by.</li>
        <li>Press and hold <span class="key">Ctrl</span> or <span class="key">Shift</span> and click on the headers of the other columns with the mouse one by one.</li>
    </ol>
    <p>
        If you click with the mouse on the column header that is already sorted by while holding down the <span class="key">Ctrl</span> or <span class="key">Shift</span> key,
the column will sort in reverse order.<br />
        The first column header displays one larger arrow pointing down or up, depending on whether it is sorted in ascending or descending order.
    </p>

    <img src="status.png" alt="Sorting, first column" />

    <p>In the other columns, two smaller arrows indicate the order.</p>

    <img src="computer.png" alt="Sorting, additional columns" />

</asp:Content>
