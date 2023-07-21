<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Asset Management Custom Apps</h1>
    <p>This module allows you to create custom software extensions on top of the ALVAO Asset Management product.</p>

    <h2>Technical requirements</h2>
    <ul>
        <li translate="no">ALVAO Asset Management</li>
    </ul>

    <h2>Module activation</h2>

    <p>The module must be activated with an activation key, which you can obtain from your Alvao system supplier. In the <strong>ALVAO WebApp - Administration - Licenses</strong>, select the <strong>Insert Activation Key</strong> command and enter the activation key.</p>

    <h2>Module installation</h2>
    <p>After activating the module on the server, run <a href="../alvao-asset-management/implementation/installation">ALVAO Server Setup</a>, which will install the necessary components.</p>

    <h3>Manual installation</h3>
    <p>Install <em translate="no">ALVAO Custom Apps WebService</em> on the server:</p>
    <ol>
        <li>Make sure the machine where you want to run <span translate="no">ALVAO Custom Apps WebService</span> has an IIS intranet server installed with a version that meets the <a href="../alvao-asset-management/implementation/requirements">technical requirements</a>.</li>
        <li>We recommend creating a custom application pool on IIS <a href="../alvao-asset-management/implementation/installation/own-iis-apppool" translate="no">ALVAO AppPool .NET 4.0</a> This step is not strictly necessary to run the application, but it significantly affects the loading speed of the WebApp.</li>
        <li>Before installation, make sure you have ASP .NET v4.7.2 or higher installed.</li>
        <li>(Optional) Before installation, setting up the Windows Integrated Authentication is strongly recommended:</li>
            <ol>
        <li>In IIS Manager, click on the application <strong>AlvaoWebApp</strong> and then click <strong>Authentication</strong>.</li>
        <li>Make sure <strong>Windows Authentication</strong> is enabled (and all others are disabled).
       <div class="caution">
         <div class="icon"></div>
         <div class="title">Caution:</div>
         Authentication must also be enabled on the website where the application is installed.
          </div>
        </li>
        <li>Open the <strong>web.config</strong> file located in the ALVAO WebApp folder in a text editor.</li>
        <li>Make sure that in the <strong>configuration/system.web</strong> attribute is <strong>authentication mode</strong> is set to <span class="console">Windows</span>.</li>
        <li>In the IIS root, set <strong>Feature delegation</strong>
            (Feature Delegation) - enable <span class="console">read or write</span> in the following authentication modes: <span class="console">Anonymous</span>
            and <span class="console">Windows</span>.</li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        This authentication method cannot be used to authenticate users who are not imported from Active Directory.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        For this authentication method to work properly, you need to have <a href="../../../alvao-service-desk/implementation/installation/webservice-settings">Alvao server address on the intranet</a>.
    </div>



        <li>Log in as administrator and run the AlvaoCustomAppsWebService.msi installation package. If you have a problem with UAC, run the installation from the command line using <span class="console">msiexec -i AlvaoCustomAppsWebService.msi.<br />
        </span></li>
        <li>When installing, select the <b translate="no">ALVAO AppPool .NET 4.0</b> application pool. If you did not create this AppPool in step 2, select .NET v4.5.</li>
        <li>The installer creates a folder on disk (&lt;InetPub&gt;\wwwroot\AlvaoCustomAppsWebService) and also a virtual directory in IIS (AlvaoCustomAppsWebService).</li>
        <li>After installation, you must configure the <i>web.config</i> file in the <b translate="no">ALVAO Custom Apps WebService</b> folder (open the file in Notepad).</li>
        <li>In the line:<br />
            <span class="console" translate="no">&lt;connectionStrings&gt;<br />
                &nbsp;&nbsp;&lt;add name=&quot;Db&quot; connectionString=&quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech;TrustServerCertificate=True&quot;&nbsp; providerName=&quot;Microsoft.Data.SqlClient&quot; /&gt;<br />
                &lt;/connectionStrings&gt;</span><br />
            set the connection to the database. The connection string has the same format as in the <i>web.config</i> file in the ALVAO WebApp settings.
        </li>
        <li>In the database, set the application pool identity with the <strong>public, db_datareader, db_datawriter, db_ddladmin, db_executor</strong> permissions.</li>
        <li>In <strong>ALVAO WebApp - Administration - Settings - </strong><a href="../list-of-windows/alvao-webapp/administration/settings/web-services">Web services</a><strong> - <span translate="no">Custom Apps WebService (URL)</span></strong> enter the path to the <em translate="no">ALVAO Custom Apps WebService</em> folder. For example: <span class="console" translate="no">http://server/AlvaoCustomAppsWebService</span>.
        </li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <span translate="no">ALVAO Custom Apps WebService</span> has <em>Windows authentication</em> set up.
    </div>


</asp:Content>
