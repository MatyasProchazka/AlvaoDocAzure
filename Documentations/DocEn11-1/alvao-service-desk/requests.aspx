<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Requests</h1>

    <p><em>Request</em> in ALVAO Service Desk is a generic term representing an accompanying record (process entity) in any process, e.g.:</p>
    <ul>
        <li>request<ul>
            <li>for technical equipment</li>
            <li>for an employee benefit</li>
            <li>for leave</li>
            <li>etc.</li>
        </ul>
        </li>
        <li>incident - e.g. printer malfunction, broken hallway light, etc.</li>
        <li>project</li>
        <li>task</li>
        <li>improvement proposal</li>
        <li>change request</li>
        <li>problem</li>
        <li>etc.</li>
    </ul>
    <p>Requests can be found in the application on the <a href="../list-of-windows/alvao-webapp/requests">Requests</a> page, which contains a <a href="../list-of-windows/alvao-webapp/requests/table-of-requests">requests table</a>.</p>
    <p>Each request is categorized into just one <a href="implementation/services">service</a>, which, among other things, determines the process for resolving the request, see <a href="implementation/services/processes">process</a>.</p>


</asp:Content>
