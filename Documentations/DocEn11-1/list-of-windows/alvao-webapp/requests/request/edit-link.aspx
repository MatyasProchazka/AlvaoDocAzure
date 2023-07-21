<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Add/edit link</h1>
    <p>In this window you can create a new link or edit an existing link between two requests. You can find a request's links to other requests on its <a href="../request">links</a> tab.</p>
    <p>Options:</p>

    <ul>
        <li><strong>Request</strong> - a request to which you are creating a new or modifying an existing link. If you are editing an existing link, you can select another request and move the link to the selected request. In this case, enter the number, tag, or part of the requirement name, and then select the requirement you are looking for from the menu.</li>
        <li><strong>Link type</strong> - select the type of <a href="../../../../alvao-service-desk/requests/relations">link</a> between the top and bottom request. The name of the link type corresponds to the reading of the data in the top-down window.</li>
        <li><strong>Request</strong> - enter the number, tag, or part of the request name, then select the request you want to bind to the top request from the menu.<br />
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                If you enter a request number, you no longer need to select the request from the drop-down menu below the input line and you can confirm the window directly with <span class="key">Enter</span>.
            </div>
        </li>
    </ul>


</asp:Content>
