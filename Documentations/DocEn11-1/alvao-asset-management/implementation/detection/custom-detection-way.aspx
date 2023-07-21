<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Custom detection method</h1>

    <p>Enter a new row in the <i>tblDetectMethod</i> table and enter the name of the new detection method in the <i>Name</i> column.  In the <i>Custom1</i> column, enter a unique identifier (which the external utility will then use to search for detection requests with the correct detection method).</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Leave the value in the <i>BehaviorId</i> column at 0.
    </div>

</asp:Content>
