<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ALVAO WebApp display mode</h1>

    <p>When accessing the WebApp, it is possible to add the DisplayMode parameter to the URL to modify the display method. Supported parameter values are: Normal and NoHeading</p>
    <!--NoLogo is not currently supported on the WebApp and behaves the same as Normal.-->
    <p>For example: <code>http://localhost/Tickets?DisplayMode=NoHeading</code></p>
    <p>If the page is displayed in a frame, the header is automatically hidden.</p>

</asp:Content>
