<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Custom commands</h1>

    <p>
        The custom command can be used to perform custom operations or operations with external systems. A custom command can be run for <a href="custom-commands/ticket-custom-commands">just one selected request</a> or <a href="custom-commands/general-custom-commands">without link to a request</a>.
To display it to the user and run it, it is possible to define conditions that control, for example, the role of the logged-in user, the status of the request, or the value of its items.
    </p>

    <p>Using the command can perform a sequence of actions within the ALVAO Service Desk, or open a URL in the user's default browser.</p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Poorly defining a custom command can irreversibly damage the Alvao database, so always create and test commands on a copy of the database in a test environment.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        A prerequisite for creating a functional custom command is a good knowledge of <a href="../../../alvao-asset-management/implementation/customization/database">Alvao database</a> and <a href="../../../alvao-asset-management/implementation/customization/alvao-api">Alvao.API</a>.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip: To display a custom command in the user's preferred language, create one command for each language. Then, in the display condition, check if the user's preferred language matches the language of the command.</div>
    </div>

</asp:Content>
