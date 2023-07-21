<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Automatic actions based on request events</h1>

    <p>Automatic actions can be triggered in the following cases:</p>
    <ul>
        <li>Changing the value of a request item (custom/system)</li>
        <li>Creating a new request</li>
        <li>Creating a new event</li>
        <li>Edit event</li>
        <li>Delete event</li>
        <li>Read a new message from the service mailbox</li>
    </ul>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        A poorly defined automated action can irreversibly damage the Alvao database, so always create and test on a copy of the database in the test environment.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        A prerequisite for creating a working automated action is a good knowledge of the <a href="../../../alvao-asset-management/implementation/customization/database">Alvao database</a> and <a href="../../../alvao-asset-management/implementation/customization/alvao-api" translate="no">Alvao.API</a>.
    </div>

</asp:Content>
