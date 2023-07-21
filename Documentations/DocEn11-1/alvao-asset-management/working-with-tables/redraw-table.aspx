<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Table redraw</h1>

    <p>
        By <strong>Table - Refresh</strong> command from the local menu or by pressing <span class="key">F5</span> key you can redraw the table content at any time according to the current data in the database.<br />
        By <strong>Table - Automatically refresh</strong> command from the local menu you can set the time interval after which the table content should be redrawn automatically.
    </p>
    <p>Most tables can refresh their contents in the background. If, when you hover the mouse cursor over the table, the cursor displays an operation in progress (hourglass), the table refreshes the content in the background. If the refresh takes longer, the table displays a loading indicator and the operation can be aborted using the <strong>Abort Loading</strong> button.</p>
    <p>If the table refreshes a large number of records, the table fills with records sequentially. The newly loaded records are inserted at the end of the table. The operation can be aborted using the <span class="key">ESC</span> key, or the <strong>Table - Abort Load</strong> command from the local menu.</p>


</asp:Content>
