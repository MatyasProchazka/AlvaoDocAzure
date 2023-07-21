<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Upgrade from previous versions</h1>

    <h2>Planning</h2>

    <p>
        Before you start upgrading to a new version, please read carefully the <a href="release-notes/important">Important notices</a> and <a href="known-issues">Known Issues</a> sections.
    </p>
    <p>Also read the important notices for all releases following the version you are upgrading from:</p>
    <ul>
        <li><a href="https://doc.alvao.com/en/11.0/release-notes/important">ALVAO 11.0</a></li>
        <li><a href="https://doc.alvao.com/en/10.4/release_notes/important.aspx">ALVAO 10.4</a></li>
        <li><a href="https://doc.alvao.com/support/doc/en/alvao_10_3/release_notes/important.aspx">ALVAO 10.3</a></li>
        <li><a href="https://doc.alvao.com/support/doc/en/alvao_10_2/release_notes/important.aspx">ALVAO 10.2</a></li>
        <li><a href="https://doc.alvao.com/support/doc/en/alvao_10_1/release_notes.aspx#important">ALVAO 10.1</a></li>
    </ul>

    <p>Before upgrading the production environment, we recommend that you first test the upgrade itself and all production-critical features in a separate <a href="upgrade/test-environment">test environment</a>.</p>
    <p>If you have a perpetual license and are planning a <a href="upgrade/upgrade-server-manual">manual upgrade</a>, make sure that the version is covered by your license, i.e. that the version has been released within 1 year of the license being issued.</p>
    <a name="prep"></a>
    <h2>Upgrade Preparation</h2>

    <ol>
        <li>Inform the user before upgrading the system.</li>
        <li>Switch the database on SQL Server to RESTRICTED_USER mode. When using SQL Server Management Studio, perform the following steps.
        <ul>
            <li>Right-click the Alvao database and select <strong>Properties</strong>.</li>
            <li>Go to the <strong>Options</strong> page.</li>
            <li>In the <strong>State</strong> section, set the <strong>Restrict Access</strong> option to <strong>RESTRICTED_USER</strong>.</li>
        </ul>
        </li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">
            Caution:<br />
        </div>
        Setting RESTRICTED_USER mode will cause only users with <em>sysadmin</em> privileges to access the DB,
	<em>dbcreator</em> or <em>db_owner</em>. However, only a user with <em>sysadmin</em> or <em>db_owner</em> privileges can run the upgrade.
    </div>


    <h2>Data input</h2>

    <ol>
        <li>Backup the system database or check that there is a current backup.</li>
        <li>Backup the folders on the server where Alvao is installed, i.e.:<ul>
            <li>C:\Program Files (x86)\ALVAO</li>
            <li>C:\inetpub\wwwroot\web application folders</li>
        </ul>
        </li>
    </ol>


    <h2>ALVAO Server</h2>

    <p>
        The <strong>ALVAO Server Setup</strong> application supports upgrading a typical Alvao server application installation (i.e. all server applications are on one server) from version 10.3 SP1 and later. If you are upgrading from an older version or using a non-typical installation, follow the <a href="upgrade/upgrade-server-manual">ALVAO Server - Manual Upgrade</a> instructions.
    </p>

    <ol>
        <li>From <a href="https://www.alvao.com/download/">ALVAO Downloads</a>, download the <strong>ALVAO Server Setup</strong> application.</li>
        <li>On the server, run the <strong>AlvaoServerSetup.exe</strong> installation file and follow its instructions.</li>
    </ol>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">
            Caution:<br />
        </div>

        If you are upgrading Alvao in a test environment using ServerSetup, make sure you are connected to the test database. You cannot select which database to upgrade in the ServerSetup installer. The installer takes this information from the <i>ConnectionString</i> parameter of the Alvao Service and Alvao Collector configuration file. 
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When upgrading the database, the current activation key is verified over the internet. 
    </div>


    <h2>Client applications</h2>
    <ol>
        <li>Use Group Policy (or other technology) to ensure that client applications and agents are installed on client computers. For a typical installation, these are the following packages:<ul>
            <li>ALVAO Asset Management
                <ul>
                    <li>AlvaoAssetConsole.msi</li>
                </ul>
            </li>
        </ul>
        </li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        ALVAO Asset Management Agent is updated automatically according to the installed version of ALVAO Server. 
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also download the latest version of the installation package from <strong>ALVAO WebApp - User Menu - Settings - <a href="list-of-windows/alvao-webapp/settings/install-applications">Install Applications</a></strong>.
    </div>


    <h2>Completing the upgrade</h2>
    <ol>
        <li>If you also upgraded SQL Server before upgrading Alvao, increase the <a href="https://docs.microsoft.com/en-us/sql/relational-databases/databases/view-or-change-the-compatibility-level-of-a-database">compatibility level</a> of the database to the highest available.</li>
        <li>Switch the database back to <strong>MULTI_USER</strong> mode, see the <a href="#prep">Upgrade Preparation</a> section for the procedure.</li>
        <li>For server applications (<a href="alvao-service-desk/implementation/installation/webapp-settings">WebApp</a>, <a href="alvao-service-desk/implementation/installation/alvao-service-settings">Alvao Service</a>, <a href="alvao-asset-management/implementation/installation/installation-server-manual#restapi">REST API</a>, CA, SD, and AM Web Services), in case you have some custom settings in configuration file (<i>Web.config</i>), move the settings to the new <i>Web.config</i> manually from the backup file (<i>Web-backup-{datetime}.config</i>).</li>
        <li>Optionally perform additional configuration steps as instructed in the <a href="release-notes">Release Notes</a> documents of all versions following after the version you are upgrading from.</li>
        <li>Restart the IIS server.</li>
    </ol>

</asp:Content>
