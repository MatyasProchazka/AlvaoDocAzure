<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Installation</h1>
    <p>
        This chapter describes how to initially install the system. If you want to upgrade the system from an older version, follow the <a href="../../upgrade">Upgrade from previous versions</a> section.
    </p>

    <h2>ALVAO Server</h2>
    <p>
        The <strong>ALVAO Server Setup</strong> installer
  provides a standard installation of Alvao server components on a single server. For non-typical installations on multiple servers, follow the <a href="installation/installation-server-manual">manual installation</a>.
    </p>

    <ol>
        <li>Make sure that the <a href="requirements">technical requirements</a> for the server are met.</li>
        <li>Check that you have set the necessary permissions on the SQL server for IIS processes. Recommended user roles for reading, modifying data and database schemas, and running procedures and functions are <strong>db_datareader</strong>, <strong>db_datawriter</strong>, <strong>db_ddladmin</strong>.</li>
        <li>Set the privileges for the user running <strong>ALVAO Server Setup</strong>.
 The recommended roles are <strong>db_datareader</strong>, <strong>db_datawriter</strong>, <strong>db_ddladmin</strong>, <strong>db_executor</strong>.
 Use the <strong>GRANT ALTER ANY USER TO [user login]</strong> SQL statement to set the last permission needed. </li>
        <li>From <a href="https://www.alvao.com/download">ALVAO Downloads</a>, download the <strong>ALVAO Server Setup</strong> application.</li>
        <li>On the server, run the <strong>AlvaoServerSetup.exe</strong> installation file and follow its instructions.</li>
        <li>Restart the IIS server.</li>
        <li>By default, after installation, the application displays the time in the Coordinated Universal Time (UTC) time zone for users.
 If necessary, change the default time zone in <strong>WebApp - Administration - Settings - </strong><a href="../../list-of-windows/alvao-webapp/administration/settings/language-and-time-zone">Languages and Time Zone</a>.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Roles are set in SQL Server Management Studio (Express) in the <strong>Security - Logins</strong> folder.<br />
        The <strong>sysadmin</strong> role will ensure that all necessary user permissions are set without the need to set other roles.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The activation key you enter is verified over the Internet. 
    </div>



    <h2>ALVAO Asset Management Console</h2>

    <h3>Installation Guide</h3>
    <ol>
        <li>On the system user's computer, run the installation package <strong>AlvaoAssetConsole.msi</strong> and follow its instructions.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also download the latest version of the installation package from <strong>ALVAO WebApp - User Menu - Settings - </strong><a href="../../list-of-windows/alvao-webapp/settings/install-applications">Install applications</a>.
    </div>

    <h3>Connecting to an existing database</h3>
    <ol>
        <li>After installation, run the application from the <strong>Start -
 ALVAO - Asset Management Console</strong>.</li>
        <li>In the opened <a href="../../list-of-windows/alvao-asset-management-console/file/db-manager">Database Manager</a> window, press the <strong>Add button,</strong>create a connection to the Alvao database, which is finally opened with the <strong>Open</strong> button.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        This package contains the optional components Collector and Agent. In a standard production installation, these components do not need to be installed with AM Console because Collector is installed on the server by default and Agents are installed on computers using Group Policy if necessary. 
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the AM Console stops working after starting, check that the antivirus program on the endpoint is not affecting its running and add an exception for the AM Console if necessary.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Recommendation:</div>
        If you have multiple users working with AM Console, we recommend using Group Policy to install it in bulk on their computers. Alternatively, you can install AM Console on a shared drive on a server and allow authorized users to run it from the shared drive, but proper functionality cannot be guaranteed with a server installation (especially if computers are still going to sleep). The recommended scenario is a local installation.
    </div>


</asp:Content>
