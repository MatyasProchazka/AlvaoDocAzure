<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>System Architecture</h1>
    <div class="wide">
        <img src="architecture/img/sd-architecture.png" alt="System Architecture" /></div>

    <ol>
        <li><strong>Database</strong> - all data is stored in a common database. Azure SQL Database or MS SQL Server is used as the database system.</li>
        <li><strong translate="no">ALVAO WebApp (WA, WebApp)</strong> - is a web-based interface through which applicants, operators and solvers can interact with the system. The WebApp is implemented on the MS IIS/ASP.NET platform. Users can use any web client to access the WebApp, e.g. Microsoft Edge, Internet Explorer, Mozilla Firefox, Opera, etc. Similarly, users can use any e-mail client to receive information messages. It is also used for system administration.</li>
        <li><strong translate="no">ALVAO Service</strong> - a server component that provides automatic retrieval of requests and follow-up e-mail communication to the ALVAO Service Desk system. Messages are retrieved using IMAP or EWS (Exchange WebService) protocol. The system uses any SMTP Server to automatically send e-mail messages to both applicants and solvers. It also includes a utility for retrieving users from <span translate="no">Active Directory</span>.</li>
        <li><strong translate="no">Custom Apps WebService</strong> - a service used by the <a href="../../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a> module.</li>
        <li><strong translate="no">REST API Service</strong> - REST API interface used by <span translate="no">ALVAO Outlook Add-in</span>, Teams Add-in and other applications. It can be also used by custom applications, see <a href="../../modules/alvao-sd-enterprise-api" translate="no">ALVAO Service Desk Enterprise API</a>.</li>
    </ol>

</asp:Content>