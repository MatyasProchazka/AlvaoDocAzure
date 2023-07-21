<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Settings change log</h1>
    <p>Changes to the Alvao system settings are automatically logged to the event log on the server on which <i>ALVAO Server</i> is installed. You can view the contents of the log in the normal way in <b>Event Viewer - Application and Service Logs - ALVAO Audit</b>.</p>
    <p>The following changes are written to the log:</p>
    <ul>
        <li>User logins and logouts to/from applications</li>
        <li>Changes to user information</li>
        <li>Assigning users and groups to groups</li>
        <li>Permissions to SD services</li>
        <li>Assigning SLAs to SD service requesters</li>
        <li>Authorizations on AM objects</li>
        <li>Permissions on AM object properties</li>
    </ul>

</asp:Content>
