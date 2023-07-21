<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Asset check</h1>
    <p>On this page, employees check their entrusted assets during an inventory check.</p>

    <ul>
        <li><strong>Save</strong> - save and submit the asset report</li>
        <li><em>Info text</em> - a text set by the asset manager</li>
        <li><strong>Table</strong>
            <ul>
                <li><strong>Found </strong> column - select one of the icons depending on whether the asset is in your possession or not.</li>
                <li><strong>Message </strong> column - you can add or edit messages for the asset manager by clicking on the pencil icon.</li>
            </ul>
        </li>

    </ul>

</asp:Content>
