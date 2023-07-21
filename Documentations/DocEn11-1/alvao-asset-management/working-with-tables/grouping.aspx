<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Grouping</h1>

    <p>
        The grouping feature is useful if you want to see rows grouped by certain criteria.<br />
        If you want to see a list of items grouped by a specific column, right-click on the header of that column and select <strong>Group</strong> from the menu.<br />
        A tree will appear to the left of the table. At the root of the tree will be the &quot;All&quot; item, and below it will be listed the individual column values on the basis of which the grouping was performed. If you select a value, the table will only show the entries that contain it in that column.<br />
        You can use the <strong>New Tree</strong> command to create another tree for grouping by another column. If at least two trees are created, tabs for switching trees are displayed in the table header.
    </p>

</asp:Content>
