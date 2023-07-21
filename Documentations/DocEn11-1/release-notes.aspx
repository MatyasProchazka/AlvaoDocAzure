<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1 translate="no">Release notes</h1>
    <h1>ALVAO 11.1</h1>

    <p>
        Before <a href="upgrade">upgrading to a new version</a>, read carefully the <a href="release-notes/important">Important notices</a> and <a href="known-issues">Known issues</a>. In <a href="release-notes/new">New features and changes</a>,
        you will find a list of new features and changes in the new version. For a list of released updates, see the <a href="release-notes/updates">Released updates</a> page.
    </p>

    <h3>Abbreviations used</h3>

    <table>
        <thead>
            <tr>
                <th>Abbreviation</th>
                <th>Meaning</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no">AM</td>
                <td><a href="alvao-asset-management" translate="no">ALVAO Asset Management</a> (product)</td>
            </tr>
            <tr>
                <td translate="no">AM Agent</td>
                <td><a href="alvao-asset-management/implementation/detection/agent" translate="no">Asset Management Agent</a> (client application)</td>
            </tr>
            <tr>
                <td translate="no">AM Collector, Collector</td>
                <td><a href="alvao-asset-management/implementation/detection/collector" translate="no">Asset Management Collector</a> (server application)</td>
            </tr>
            <tr>
                <td translate="no">AM Console, AMC</td>
                <td><a href="list-of-windows/alvao-asset-management-console" translate="no">Asset Management Console</a> (client application)</td>
            </tr>
            <tr>
                <td translate="no">AM WS</td>
                <td><a href="alvao-asset-management/implementation/installation/installation-server-manual" translate="no">Asset Management WebService</a> (server application)</td>
            </tr>
            <tr>
                <td translate="no">AS</td>
                <td><a href="alvao-asset-management/implementation/installation/installation-server-manual" translate="no">Alvao Service</a> (server application)</td>
            </tr>
            <tr>
                <td translate="no">CA WS</td>
                <td><a href="modules/alvao-am-custom-apps" translate="no">Custom Apps WebService</a> (server application)</td>
            </tr>
            <tr>
                <td translate="no">OA</td>
                <td><a href="modules/alvao-outlook-addin" translate="no">ALVAO Outlook Add-in</a> - the extension module and the corresponding add-in application for desktop</td>
            </tr>
            <tr>
                <td translate="no">REST API</td>
                <td><a href="modules/alvao-am-enterprise-api/specification">REST API interface</a></td>
            </tr>
            <tr>
                <td translate="no">SD</td>
                <td><a href="alvao-service-desk" translate="no">ALVAO Service Desk</a> (product)</td>
            </tr>
            <tr>
                <td translate="no">TA</td>
                <td><a href="modules/alvao-teams-addin" translate="no">MS Teams Add-in</a> (extension module)</td>
            </tr>
            <tr>
                <td translate="no">WA, WebApp</td>
                <td><a href="list-of-windows/alvao-webapp" translate="no">ALVAO WebApp</a> (web application)</td>
            </tr>
        </tbody>
    </table>
    <br />
    <h3>Record naming conventions</h3>
    <p>The records on the <a href="release-notes/important">Important notices</a>, <a href="release-notes/new">New features and changes</a>, <a href="release-notes/fixed-bugs">Fixed issues</a>, and <a href="known-issues">Known issues</a> pages have the following format:</p>
    <p><em>&lt;product abbreviation&gt; &lt;application&gt; &lt;functionality&gt; &lt;description of issue or feature&gt; </em> </p>
    <p>
        In addition, the identifier of the fix or the change is usually included at the beginning or end of the record, e.g. <em>T11111ALVAO.</em>&nbsp;
    </p>
    <p>Example:</p>
    <ul>
        <li>SD WebApp - Requests - Assign - new field <em>Solver group </em>added.  (T11111ALVAO)</li>
        <li>Meaning: A new field <em>Solver group</em> was added to the form of the <em>Assign</em> command which is accessible on the <em>Requests</em> page of the <em>ALVAO WebApp</em> application which is a part of the <em>ALVAO Service Desk</em> product.</li>
    </ul>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>
