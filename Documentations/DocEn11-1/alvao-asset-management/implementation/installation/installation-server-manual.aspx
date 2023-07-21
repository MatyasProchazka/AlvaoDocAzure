<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ALVAO Server - manual installation</h1>

    <a name="admin"></a>
    <h2>Create a new database</h2>
    <ol>
        <li>From the <a href="https://www.alvao.com/download/">ALVAO downloads</a> page, download the <strong>DatabaseDeploy.zip</strong> file.</li>
        <li>Extract the ZIP package to any folder on the disk.</li>
        <li>Check that you have permission to create a new database on the target SQL Server.</li>
        <li>Use the <a href="database-deploy">DatabaseDeploy</a> utility to create a new database.</li>


    </ol>
    <h2>ALVAO Asset Management Collector</h2>

    <h3>Service Installation Guide</h3>

    <ol>
        <li>On the server where you want to run the Collector service, run the <strong>AlvaoAssetCollector.msi</strong> installation package.</li>
        <li>The installer will automatically install Collector as a service and start it.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        In order to run ALVAO Asset Management Collector as an application, you must first stop its service.
    </div>

    <h3>Settings</h3>

    <ol>
        <li>Stop the ALVAO Asset Management Collector service.</li>
        <li>Release AMCollector.exe from the installed folder.</li>
        <li>Use the <strong>Action - Settings</strong> command to set up the database connection.</li>
        <li>It is recommended to enable logging to the file and set the level to &quot;status and errors&quot;.</li>
        <li>Set the ALVAO Asset Management Collector service to run under an account with administrator privileges. The services in Windows run by default with the permission &quot;Local system account&quot;. In order to be able to detect stations on the network without using agents, the ALVAO Asset Management Collector service must run with administrator privileges.</li>
        <li>Enable the selected account to access the Alvao database and assign it the <a href="#database-roles">required database roles</a>.</li>
        <li>In <strong>WebApp - Administration - Asset Management - Servers</strong>, enable the server with the <strong>Enable</strong> command.</li>
        <li>Run the ALVAO Asset Management Collector service again.</li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Other Collector settings are done in <strong>Management</strong> in ALVAO WebApp in the <strong>Asset Management - Servers</strong> section.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If you set the log detail in the file to the <strong>Detailed</strong>, the Collector will generate a large amount of data in the LOG file and the detection rate will be very slow. Therefore, setting it to <strong>Detailed</strong> is only recommended for troubleshooting and is not recommended for normal operation. 
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you only want to run Collector as an application and have installed it with AM Console, you can run Collector from the <strong>Start - ALVAO - Asset Management Collector</strong> (in this case there is no need to install AlvaoAssetCollector.msi).
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        After a new installation, automatic retrieval of detections from the %ProgramData%\ALC\ALVAO Asset Management Collector\Detections folder is enabled by default.
    </div>

    <a name="webapp"></a>
    <h2>ALVAO WebApp</h2>

    <h3>Installation Guide</h3>

    <ol>
        <li>Make sure that the following components are installed on the server:<ul>
            <li>Internet Information Server (IIS) of version meeting the <a href="../requirements">technical requirements</a>.</li>
            <li>ASP .NET v4.7.2 or higher;</li>
        </ul>
        </li>
        <li>We recommend creating a custom application pool <a href="own-iis-apppool">ALVAO AppPool .NET 4.0</a> on IIS. This step is not strictly necessary to run the application, but it significantly affects the loading speed of the WebApp.</li>
        <li>Log in as administrator and run the installation package <strong>AlvaoWebApp.msi</strong>. If you have a problem with UAC, run the installation from the command line using <span class="console">msiexec -i AlvaoWebApp.msi</span>.</li>
        <li>When installing, select the <b>ALVAO AppPool .NET 4.0</b> application pool.
 If you did not create this AppPool in step 2, select <strong>.NET v4.5</strong>. For the Alvao WebApp, select pipeline: <em>integrated</em>.</li>
        <li>The installer will create a folder on disk (<strong>&lt;InetPub&gt;\wwwrootAlvao</strong>)
 and also a virtual directory in IIS (Alvao).</li>
        <li>Give the <strong>NT AUTHORITY\NETWORK SERVICE</strong> account access to the Alvao database and assign it the <a href="#database-roles">required database roles</a>. If you did not create a custom application pool in step 2, assign access and roles to the <em>IIS APPPOOL\.NET v4.5</em> account.</li>
        <li>Go to <strong>ALVAO WebApp</strong> (<a href="http://localhost/Alvao">http://localhost/Alvao</a>) and in <strong>Administration</strong> under <a href="../../../list-of-windows/alvao-webapp/administration/licenses">License</a>, enter the activation key. <strong>Activation Key</strong>
            You can obtain a key from the Alvao system vendor. You can also request a temporary activation key to test the system at <a href="info@alvao.com">info@alvao.com</a>.
  After entering the activation key, press <strong>Save</strong>.
            <div class="note">
                <div class="icon">
                </div>
                <div class="title">
                    Note:
                </div>
                When the database is activated, the activation key entered is verified over the Internet.
            </div>
        </li>
        <li>More in Administration - Settings:<ul>
            <li>In the <a href="../../../list-of-windows/alvao-webapp/administration/settings/messaging">Messaging</a> section, enter the SMTP server address, login credentials, and email address for sending messages from the Alvao system.</li>
            <li>In the <a href="../../../list-of-windows/alvao-webapp/administration/settings/activedirectory">Active Directory</a> section, set the Active Directory server address and default domain.</li>
        </ul>
        </li>
        <li>In the <strong>ALVAO WebApp</strong>, edit the settings in <strong>Administration - Settings - WebApp</strong>.</li>
        <li>Fill in the <strong>WebApp (URL)</strong> path to the <em>ALVAO WebApp</em> folder. For example: <span class="console">.
 http://server/alvao</span>.</li>
        <li>By default, after installation, the application displays time data in the Coordinated Universal Time (UTC) time zone to users.
  If necessary, change the default time zone in <strong>WebApp - Administration - Settings - </strong><a href="../../../list-of-windows/alvao-webapp/administration/settings/language-and-time-zone">Languages and Time Zone</a>.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        We recommend installing the ALVAO WebApp in a folder on IIS (e.g. intepub\wwwroot\Alvao) and not placing it directly in the root. 
    </div>

    <h3>Settings</h3>
    <p>
        For proper functionality of <strong>ALVAO WebApp</strong>
        it is necessary to configure the user authentication method in IIS.<br />
    </p>
    <p>Available authentication methods:</p>
    <ul>
        <li><strong>Form Authentication</strong><ul>

            <li>Authentication by entering username and password. For a permanent login without the need to enter a username and password, you can use the <strong>Permanently log in</strong>.</li>
            <li>This method of authentication should be used if the WebApp is accessible from the Internet.</li>
        </ul>
        </li>
        <li><strong>Windows Integrated Authentication</strong><ul>
            <li>Authentication without the need to enter a username and password (in case of successful integrated authentication).</li>
            <li>This authentication method is appropriate to use when both the solution teams and requesters are from Active Directory and working in a domain.</li>
        </ul>
        </li>
        <li><strong>Integrated Windows and Forms Authentication (simultaneously)</strong><ul>
            <li>WebApp first tries to authenticate the user using Windows. When this authentication fails (or is revoked by the user),
  the user is allowed to log in using a form.</li>
            <li>This authentication method may not work properly due to technical limitations (see below).</li>
        </ul>
        </li>
    </ul>

    <h4>Form Authentication</h4>
    <p>If you want to set up forms authentication:</p>
    <ol>
        <li>In IIS Manager, click on the application <strong>Alvao</strong> and then click <strong>Authentication</strong>.</li>
        <li>Make sure that <strong>Anonymous Authentication</strong>
            is enabled, <strong>Forms Authentication</strong>
            is enabled, and <strong>Windows Authentication</strong>
            is disabled.</li>
        <li>Open the <strong>Web.config</strong> file located in the ALVAO WebApp folder in a text editor.</li>
        <li>Make sure that the <strong>authentication attribute mode</strong> is set to <span class="console">Forms</span> and the <strong>loginUrl</strong> parameter
 is set to <span class="console">~/Account/Login</span>.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        For this authentication method, the options <strong>Logout</strong> and <strong>Change Password</strong> are available to the users.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If users are logging in with a password from Active Directory, the path to the AD server must be set in the <strong>ALVAO WebApp</strong> -
 <strong>Management</strong> - <strong>Settings</strong>
        - <strong>Active Directory</strong>.  
    </div>



    <h4>Windows Integrated Authentication</h4>
    <p>To set up Windows Integrated Authentication:</p>
    <ol>
        <li>In IIS Manager, click on the application <strong>AlvaoWebApp</strong> and then click <strong>Authentication</strong>.</li>
        <li>Make sure <strong>Windows Authentication</strong> is enabled (and all others are disabled).
 <div class="caution">
     <div class="icon"></div>
     <div class="title">Caution:</div>
     Authentication must also be enabled on the website where the application is installed.
 </div>
        </li>
        <li>Open the <strong>Web.config</strong> file located in the ALVAO WebApp folder in a text editor.</li>
        <li>Make sure that the <strong>authentication attribute mode</strong> is set to <span class="console">Windows</span>.</li>
        <li>In the IIS root, set <strong>Feature delegation</strong>
            (Feature Delegation) - enable <span class="console">read or write</span> in the following authentication modes: <span class="console">Anonymous</span>
            and <span class="console">Windows</span>.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        There are no options available for this authentication method <strong>Logout</strong> and <strong>Change Password</strong>.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        This authentication method cannot be used to authenticate users who are not imported from Active Directory.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        For this authentication method to work properly, you need to have Alvao server address on the intranet.
    </div>


    <h4>Windows and Forms Integrated Authentication (simultaneously)</h4>


    <p>If you want to use Windows integrated authentication for some computers and forms-based logon for other computers:</p>
    <ol>
        <li>In IIS Manager, click on the application <strong>Alvao</strong> and then click <strong>Authentication</strong>.</li>
        <li>Make sure that <strong>Anonymous Authentication</strong>
            is enabled, <strong>Forms Authentication</strong>
            is enabled, and <strong>Windows Authentication</strong>
            is enabled.
            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                Authentication must also be enabled on the website where the application is installed.
            </div>
        </li>
        <li>Open the <strong>Web.config</strong> file located in the ALVAO WebApp folder in a text editor.</li>
        <li>Make sure that the <strong>authentication attribute mode</strong> is set to <span class="console">Forms</span> and the <strong>loginUrl</strong> parameter
 is set to <span class="console">~/Account/MixedModeLogin</span>.</li>
        <li>Set <strong>Feature Delegation</strong> in the IIS root.
 - enable <span class="console">read or write</span> in the following authentication modes: <span class="console">Anonymous</span>, <span class="console">Forms</span>, <span class="console">Windows</span>.</li>
        <li>In <strong>WebApp- Administration - Settings -
 Integrated Authentication</strong>
            enter the IP address ranges of the computers on the internal corporate network for which integrated authentication is to be applied. For all other computers, forms-based authentication will be used.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If Windows authentication is successful, the <strong>Logout</strong> and <strong>Change Password</strong> options are not available.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        For computers that will be authenticated in an integrated manner, the same restrictions and assumptions apply as for Windows integrated authentication, see the caveats in the previous section.
    </div>


    <h4>Database connection</h4>
    <p>
        Open the <strong>IIS Manager</strong> and select the <strong>ALVAO WebApp</strong> (Alvao). In the settings, click on the <strong>Connection Strings</strong>, click the string &quot;Db&quot; and set the correct path to the SQL server and database you created during installation (the default is <strong>localhost</strong> and the <strong>Alvao</strong> database). For example, you can use <strong>localhost</strong> for the SQL server and <strong>Alvao</strong> for the database. The connection string then looks like this:<br />
        <span class="console">Data Source=localhost\SQLEXPRESS;Initial Catalog=Alvao; Max Pool Size=2000; Integrated Security=True;TrustServerCertificate=True</span>
    </p>

    <p>The WebApp configuration is stored in the Web.config file in the ALVAO WebApp folder. It can also be edited manually by editing this file.</p>



    <a name="assetwebservice"></a>
    <h2>ALVAO Asset Management WebService</h2>
    <p>ALVAO Asset Management WebService is part of the ALVAO Asset Management product. It is used to communicate with autonomous agents and also to remotely connect to the Asset Management Console.</p>

    <h3>Installation Guide</h3>
    <ol>
        <li>Make sure that the following components are installed on the server:<ul>
            <li>Internet Information Server (IIS);</li>
            <li>For IIS version 7 install also <em>IIS Management Compatibility 6</em> feature.</li>
            <li>ASP.NET v4.7.2 or higher;</li>
            <li><a href="https://docs.microsoft.com/en-us/sql/connect/oledb/download-oledb-driver-for-sql-server">Microsoft OLE DB Driver</a></li>
        </ul>
        </li>
        <li>We recommend creating a custom application pool <a href="own-iis-apppool">ALVAO AppPool .NET 4.0</a> on IIS. This step is not strictly necessary for the application to run, but it significantly affects the responsiveness of the application.</li>
        <li>Log in as administrator and run the installation package <strong>AlvaoAssetWebService.msi</strong>.</li>
        <li>Select the <b>ALVAO AppPool .NET 4.0</b> application pool during installation.
 If you did not create this AppPool in step 3, select <strong>.NET v4.5</strong>.</li>
        <li>The installer creates a folder on disk (&lt;InetPub&gt\wwwroot\AssetWebService)
 and also a virtual directory in IIS (AssetWebService).</li>
        <li>After installation, configure the <b>web.config</b> file,
 which you open in a text editor.</li>
        <li>In the line:
            <br />
            <span class="console">&lt;connectionStrings&gt;<br />
                &nbsp;&nbsp;&lt;add name=&quot;Db&quot; connectionString=&quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech;TrustServerCertificate=True&quot;&nbsp; providerName=&quot;Microsoft.Data.SqlClient&quot; /&gt;<br />
                &lt;/connectionStrings&gt;</span><br />
            set the connection to the database. The connection string has the same format as in the Web.config file in the ALVAO WebApp settings.</li>
        <li>Give the <strong>NT AUTHORITY\NETWORK SERVICE</strong> account access to the Alvao database and assign it the <a href="#database-roles">required database roles</a>. If you did not create a custom application pool in step 3, assign access and roles to the <em>IIS APPPOOL\.NET v4.5</em> account.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">
            Note: To test the correct web-service setup, temporarily enable WSDL by commenting out the following section in the web.config file: <span class="console">&lt;remove name="Documentation"/&gt;</span>.. Then enter the AssetWebService path (URL) in your web browser all the way to the &quot;AssetWebService.asmx&quot; file.
 For example: <span class="console">https://server/AssetWebService/AssetWebService.asmx</span>.
 If set correctly, a list of operations is displayed. For security reasons, disable WSDL when the testing is finished.
        </div>
    </div>

    <h2>ALVAO Service</h2>
    <p>ALVAO Service is an application that, among other things, automatically notifies users of missing licenses.</p>

    <h3>Installation Guide</h3>
    <ol>
        <li>Run the installation package <b>AlvaoService.msi</b>.</li>
        <li>The installer will install the service in the <b>%Program Files%\ALVAO\AlvaoService</b> folder.</li>
        <li>In the <b>appsettings.json</b> file in the line:
            <br />
            <span class="console">&quot;ConnectionString&quot;: {<br />
                &nbsp;&nbsp;&nbsp;&quot;Db&quot;: &quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech&quot;<br />
                },</span><br />
            set the connection to the database. The connection string has the same format as in the Web.config file for the ALVAO WebApp.
        </li>
        <li>In the Alvao database, enable access for the <b>NT AUTHORITY\NETWORK SERVICE</b> account and <a href="#database-roles">set the database roles</a>.</li>
        <li>Set the <b>ALVAO Service</b> system service to run under the <b>NT AUTHORITY\NETWORK SERVICE</b> account.</li>
        <li>Start the system service.</li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        To verify functionality, you can run <i>AlvaoService.exe</i> on your desktop or from the command line. Then exit the application.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you need to change the <i>appsettings.json</i> configuration file,
 you need to stop the <i>ALVAO Service</i> service before making the change and start the service again after saving the configuration changes. 
    </div>

    <a name="restapi"></a>
    <h2>ALVAO REST API</h2>
    <p>ALVAO REST API is used to communicate the <a href="../../../modules/alvao-teams-addin">ALVAO Teams Add-in</a> and ALVAO Outlook Web Add-in with the ALVAO system.</p>

    <h3>Installation Guide</h3>
    <ol>
        <li>Make sure the machine where you want to run the ALVAO REST API has an IIS intranet server installed with a version that meets the <a href="../requirements">technical requirements</a>.</li>
        <li>We recommend creating a custom application pool <a href="own-iis-apppool">ALVAO AppPool .NET 4.0</a> on IIS. This step is not strictly necessary to run the application, but it significantly affects the loading speed of the WebApp.</li>
        <li>Before installation, make sure you have ASP .NET v4.7.2 or higher installed. </li>
        <li>Log in as administrator and run the <strong>AlvaoRestApi.msi</strong> installation package. If you have a problem with UAC, run the installation from the command line using <span class="console">msiexec -i AlvaoRestApi.msi</span>.</li>
        <li>When installing, select the <strong>ALVAO AppPool .NET 4.0</strong> application pool. If you did not create this AppPool in step 2, select <strong>.NET v4.5.</strong></li>
        <li>The installer creates a folder on disk (<strong>inetpub\wwwroot\AlvaoRestApi</strong>) and also two virtual directories in IIS (AlvaoRestApi and AlvaoRestApiWinAuth).</li>
        <li>After installation, you need to configure the <em>web.config</em> file in the <strong>ALVAO REST API</strong> folder (open the file in Notepad).</li>
        <li>In the line:
            <br />
            <span class="console">&lt;connectionStrings&gt;<br />
                &nbsp;&nbsp;&lt;add name=&quot;Db&quot; connectionString=&quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech;TrustServerCertificate=True&quot;&nbsp; providerName=&quot;Microsoft.Data.SqlClient&quot; /&gt;<br />
                &lt;/connectionStrings&gt;</span><br />
            set the connection to the database. The connection string has the same format as in the <em>web.config</em> file in the WebApp settings.</li>
        <li>Give the <strong>NT AUTHORITY\NETWORK SERVICE</strong> account access to the Alvao database and assign it the <a href="#database-roles">required database roles</a>. If you did not create a custom application pool in step 2, assign access and roles to the <em>IIS APPPOOL\.NET v4.5</em> account.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        AlvaoRestApi is set to <em>Anonymous Authentication</em> and AlvaoRestApiWinAuth is set to <em>Windows Authentication</em>. Both these settings must be stored in ApplicationHost.config file. Do not set authentication mode for these applications via IIS Manager. 
 
    </div>

    <a name="database-roles"></a>
    <h2>Assign database roles to application accounts</h2>

    <p>
        In <strong>SQL Server Management Studio</strong> on SQL Server, create the necessary user accounts under which the installed applications run so that they can access the database. Then, in the <strong>Security - Logins</strong> folder, use the following table to allow access to the individual application accounts and assign them database roles.
    </p>

    <table>
        <thead>
            <tr>
                <th>Applications</th>
                <th>Recommended account</th>
                <th>Assigned database roles</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ALVAO Asset Management Collector</td>
                <td>NT AUTHORITY\SYSTEM</td>
                <td>public, db_datareader, db_datawriter, db_ddladmin, db_executor</td>
            </tr>
            <tr>
                <td>ALVAO WebApp</td>
                <td rowspan="3">NT AUTHORITY\NETWORK SERVICE (possibly IIS APPPOOL\.NET v4.5)</td>
                <td rowspan="3">public, db_datareader, db_datawriter, db_ddladmin, db_executor</td>
            </tr>
            <tr>
                <td>ALVAO Asset WebService</td>
            </tr>
            <tr>
                <td>ALVAO REST API</td>
            </tr>
            <tr>
                <td>ALVAO Service</td>
                <td>NT AUTHORITY\NETWORK SERVICE</td>
                <td>db_owner</td>
            </tr>
        </tbody>
    </table>
</asp:Content>
