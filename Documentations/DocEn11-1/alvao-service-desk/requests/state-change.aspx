<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Status change</h1>
    <p>After completing a task within a request status, the solver moves the request further within the defined workflow using <a href="../../list-of-windows/alvao-webapp/requests">Request</a>y - <strong>Go to status</strong> or <strong>Edit - Request status</strong>. You cannot change the status of a request while approval is in progress. </p>
    <p>When changing the status, the user is prompted to fill in the required items for that status. The mandatory items and solving process can be set on the <a href="../implementation/services/processes">Processes</a> page.</p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also easily change the status of a request in the <a href="../../list-of-windows/alvao-webapp/requests/request">Request</a> - <em>Solution Progress</em> tab by clicking on the appropriate "thermometer" cell near the left edge of the tab.
    </div>
</asp:Content>
