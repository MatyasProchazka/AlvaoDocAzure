<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Advanced Workflows</h1>
    <p>This extension module can automatically create linked (e.g. child) requests when a new request is created or when a request transitions to a certain status. Set up the functionality in <b>WebApp - Administration - Service Desk - Processes - Edit - Solving process - &lt;New/edit specific state&gt;</b> - <a href="../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">Behavior</a> -<b> Automatic Request Creation</b>.</p>
    <p>
        Next, in <b>WebApp - Administration - Service Desk - Processes - Edit - Solving process - &lt;New/edit specific state&gt;</b> - <a href="../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/behavior">Behavior</a> -
  <b>Assign request to a solver group during transition to this status</b>, you can set the request to be automatically forwarded to the preconfigured resolution group when the request enters that process status.
    </p>

    <h2>Technical requirements</h2>
    <ul>
        <li>ALVAO Service Desk</li>
    </ul>
    <h2>Module installation and activation</h2>
    <p>The module must be activated with an activation key, which you can obtain from your Alvao system supplier. In <b>WebApp - Administration</b> - <a href="../list-of-windows/alvao-webapp/administration/licenses">License</a>, select <b>Insert Activation Key</b> and enter the activation key.</p>
</asp:Content>
