<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>User portraits</h1>

    <p>User portraits can be displayed in ALVAO Service Desk applications.</p>
    <p>Portraits can be imported into Alvao:</p>
    <ul>
        <li>from image <a href="import-portraits-files">files</a>
            on disk,</li>
        <li>from user portraits on the <a href="import-portraits-sharepoint">SharePoint</a> server.</li>
    </ul>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Portraits newly uploaded to existing persons are displayed in ALVAO WebApp only after the browser cache has been updated (especially in Chrome and Opera browsers, the update can take several days).
    </div>


</asp:Content>
