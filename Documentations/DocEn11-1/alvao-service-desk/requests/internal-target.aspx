<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


    <h1>Setting internal request deadlines</h1>

    <p>You can use the <strong>Internal Goal</strong> request item to meet important internal deadlines during request resolution. To set the internal goal of a request, use <strong>Requests</strong> - <a href="../../list-of-windows/alvao-webapp/requests/request/edit">Edit</a> - <strong>Internal Goal</strong>.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        In the requests table, view the columns <em>Current Target</em>, <em>Current Goal (deadline)</em> and <em>Current Goal (hours remaining)</em> by which requests can be sorted and filtered. 
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The <em>Internal Target</em> item must be enabled in the service process as <a href="../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/request-items">request item</a>.
    </div>


</asp:Content>
