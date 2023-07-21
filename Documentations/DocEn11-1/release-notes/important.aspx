<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 id="important">Important notices</h1>
    <h1>ALVAO 11.1</h1>

    <p>This page provides warnings about changes in the new version of the product that may cause problems when upgrading from the previous version or when running the new version. Please read this information carefully before upgrading to the new version.</p>
    <p>It is also recommended that you read the list of subsequently identified issues in the released versions and their solutions, see <a href="../known-issues">Known issues</a>.</p>

    <h2 id="common">Core features</h2>
    <ul>
        <li>Connections to the Alvao database are encrypted by default now. Ensure you have properly 
            <a href="https://learn.microsoft.com/en-us/sql/database-engine/configure-windows/enable-encrypted-connections-to-the-database-engine?view=sql-server-ver16">installed a trusted certificate</a> on your server. 
            If you don't want to use encrypted connections, add the "TrustServerCertificate=True" parameter to your connection strings.</li>
        <li>The <b>ALVAO MailboxReader</b> server component has been renamed to <em>Alvao Service</em>. (T116318ALVAO)
            <ul>
                <li><a href="../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a>, 
                    <a href="../alvao-service-desk/implementation/users/import-portraits-files">ImportPortraitsFiles</a>, 
                    <a href="../alvao-service-desk/implementation/users/import-portraits-sharepoint">ImportPortraitsSharepoint</a>, 
                    <a href="../alvao-asset-management/implementation/users/authentication/alvao/import-users-csv">ImportUsersCsv</a>
                    – after the upgrade, check the settings of existing scheduled tasks executing these utilities.
                    These utilities are newly installed into the "%ProgramFiles%\ALVAO\AlvaoService\utilities" folder.
                </li>
            </ul>
        </li>
        <li>Security logs - the security log records are no longer stored in the <a href="http://localhost:44375/en/11.0/alvao-asset-management/implementation/audit-log">ALVAO Audit</a> Windows Event Log but in two separate new logs: <em>AlvaoUserLogin </em>and <em>AlvaoSecurityChanges</em>. For more information see the <a href="../alvao-asset-management/implementation/audit-log">Settings change log</a>. (T130085ALVAO)</li>
        <li><a href="../alvao-service-desk/implementation/users/inactive-accounts">Disabled user accounts</a> don’t receive any request e-mail notifications and any e-mail alerts (on SLA deadlines, News, SAM issues, etc.) anymore. (T35075ALVAO)</li>
        <li>People with <a href="../alvao-service-desk/implementation/users/inactive-accounts">disabled user accounts</a> can’t be searched and don’t show on the <a href="../list-of-windows/alvao-webapp/my-team">My team</a> page anymore. (T46819ALVAO)</li>
    </ul>
    <h2 id="am" translate="no">ALVAO Asset Management</h2>
    <ul>
        <li>AM Console – direct connection to the Alvao database is no longer supported. Use connection through <em>Web service</em> instead. (T124285ALVAO)</li>
        <li>The core <strong>ALVAO Collector</strong> functions are performed by the new <em>Alvao Service</em>. The <em>AM Collector</em> is not installed by default anymore. The detection methods “without Agent” and “agent over TCP/IP” are deprecated and will be removed in the next version of ALVAO products. To use these methods, manually install the <em>AM Collector </em>and enable the detection settings in <em>Administration – Asset Management </em>– <a href="../list-of-windows/alvao-webapp/administration/asset-management/servers">Servers (deprecated)</a>. In a SaaS environment, only detections with agents are supported. (T128616ALVAO)</li>
        <li>Hardware detection does not create nor update computer components (except monitors). (T128269ALVAO)</li>
        <li>The system object kind <strong>Loaded objects</strong> has been renamed to <i>Imported objects</i>. (T128357ALVAO)</li>
        <li>The system property definition <strong>Total hard disk capacity (GB)</strong> has been renamed to <i>Total storage capacity (GB)</i>. (T128357ALVAO)</li>
        <li>The WinPrefetchView utility has been removed from the AM Agent installer. This is because the utility was causing false reports from some antivirus software. 
            If you monitor software usage on your computers using Alvao, you need to ensure that when you upgrade Agents to a new version, the WinPrefetchView utility 
            is also distributed to the Agent installation folder. For more information see <a href="../alvao-asset-management/software-management/usage">Software usage</a>. (T135975ALVAO)</li>
        <li>AM Console - 
            <a href="../alvao-asset-management/import-export-data/export-util">ExportUtil</a>, 
            <a href="../alvao-asset-management/implementation/users/authentication/ad/import-ad">ImportAD</a>, 
            <a href="../alvao-service-desk/implementation/users/import-portraits-files">ImportPortraitsFiles</a>, 
            <a href="../modules/alvao-configuration-management/visio">GenerateNodeRelationshipDiagram</a>
            - Utilities have been moved to the ImportUtilities folder. (T138988ALVAO)</li>
    </ul>


    <h2 id="sd" translate="no">ALVAO Service Desk</h2>
    <ul>
        <li>Administration – Service Desk – Services – SLA – the option to <strong>deny users access </strong>to an 
            <a href="../alvao-service-desk/implementation/services/sla">SLA</a> has been removed. 
            All records denying an SLA access in service settings will be ignored after the upgrade. 
            Before upgrading, check the use of the retired option with the 
            <a href="Denied_SLAs_T116209ALVAO.sql">SQL script</a>. (T116209ALVAO)</li>
        <li>Administration – Processes – Process – <a href="../list-of-windows/alvao-webapp/administration/service-desk/process/detail/request-items">Request items</a> – Add – the option <a href="../list-of-windows/alvao-webapp/administration/service-desk/process/detail/request-item">On the New Request Form (for main solvers), place the item into the Other Items section</a> was removed. All items that are not explicitly placed on a <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">New Request Form</a> are shown in the Other items section. (T101472ALVAO)</li>
    </ul>

    <div id="extension_modules"></div>

    <h2 translate="no">ALVAO Outlook Add-in</h2>
    <ul>
        <li>Variable name used for bulk installation using the <em>Active Directory Group Policy </em>has changed, see <a href="../modules/alvao-outlook-addin/installation">Installation</a>. (T124394ALVAO)</li>
        <li>In case you <a href="../upgrade/upgrade-server-manual">manually upgrade</a> from the previous versions, don’t upgrade <strong>ALVAO REST API</strong> (AlvaoRestApi.msi) but first uninstall the old version and then <a href="../alvao-asset-management/implementation/installation/installation-server-manual#restapi">install</a> the new version for the correct setup of the new <em>AlvaoRestApiWinAuth</em> application in IIS. (T124399ALVAO).</li>
        <li>Settings – the field <em>Service Desk Web Service URL</em> is replaced by the field <em>Alvao domain name (or REST API url)</em>. The current SD WS URL is automatically transformed into a REST API url. In case of any problems please check <em>ALVAO Outlook Add-in</em> - <a href="../modules/alvao-outlook-addin/installation">Installation</a>. (T130399ALVAO)</li>
    </ul>

</asp:Content>
