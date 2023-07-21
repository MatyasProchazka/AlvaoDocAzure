<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Multitenant Mode</h1>
    <p>
        In multitenant mode, one installation of ALVAO Server serves several customers (tenants).
    </p>

    <h2>Creating a tenant database</h2>

    <p>
        Create a tenant database on SQL Server by running a script (e.g. from SQL Server Management Studio):
    </p>
    <font face="Consolas" size="2" color="#0000ff">create database</font><font face="Consolas" size="2"> AlvaoTenants</font><font face="Consolas" size="2" color="#0000ff"><br />
        go<br />
        use </font><font face="Consolas" size="2">AlvaoTenants</font><font face="Consolas" size="2" color="#0000ff"><br />
            go<br />
            create table </font><font face="Consolas" size="2">Tenant</font><font face="Consolas" size="2" color="#0000ff"> </font></font><font face="Consolas" size="2" color="#808080">(</font>
    <font face="Consolas" size="2" color="#808080"></font><font face="Consolas" size="2">
        <br />
        &nbsp;&nbsp; id</font><font face="Consolas" size="2" color="#0000ff"> int</font><font face="Consolas" size="2">
        </font><font face="Consolas" size="2" color="#0000ff">identity</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">1</font><font face="Consolas" size="2" color="#808080">,</font><font face="Consolas" size="2">1</font><font face="Consolas" size="2" color="#808080">)</font><font face="Consolas" size="2">
        </font><font face="Consolas" size="2" color="#0000ff">constraint</font><font face="Consolas" size="2">
PK_Tenant_id </font><font face="Consolas" size="2" color="#0000ff">primary</font><font face="Consolas" size="2">
</font><font face="Consolas" size="2" color="#0000ff">key</font><font face="Consolas" size="2">
</font><font face="Consolas" size="2" color="#0000ff">clustered</font><font face="Consolas" size="2" color="#808080">,</font><font face="Consolas" size="2"><br />
    &nbsp;&nbsp; Organization</font>
    <font face="Consolas" size="2" color="#0000ff">nvarchar</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">255</font><font face="Consolas" size="2" color="#808080">),</font><font face="Consolas" size="2"><br />
        &nbsp;&nbsp; Domain</font><font face="Consolas" size="2" color="#0000ff">
nvarchar</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">255</font><font face="Consolas" size="2" color="#808080">),</font>
    <font face="Consolas" size="2">
        <br />
        &nbsp;&nbsp; ConnectionString </font>
    <font face="Consolas" size="2" color="#ff00ff">nvarchar</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#ff00ff">max</font><font face="Consolas" size="2" color="#80808080">),</font>
    <font face="Consolas" size="2">
        <br />
        &nbsp;&nbsp;&nbsp;IsProvider</font>
    <font face="Consolas" size="2" color="#0000ff">bit</font>
    <font face="Consolas" size="2">not null</font>
    <font face="Consolas" size="2" color="#0000ff">default</font>
    <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">0</font><font face="Consolas" size="2" color="#808080">))</font>
    <br />

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        It is executed only once. 
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">
            Note: On Azure SQL Server, run the script in two separate steps:<ol>
                <li>Create tenant database (<font face="Consolas" size="2" color="#0000ff">create database </font><font face="Consolas" size="2">AlvaoTenants</font>).</li>
                <li>Connect to the new database and create a table of tenants (<font face="Consolas" size="2" color="#0000ff">create table</font><font face="Consolas" size="2"> Tenant (...)</font>).</li>
            </ol>
        </div>
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note: On SQL Server, set the necessary permissions for IIS processes. For the tenant database, you need to enable the <strong>db_datareader</strong> user role.</div>

    </div>

    <h2>Setting multitenant mode</h2>
    <h3 translate="no">Asset Management WebService</h3>
    <ol>
        <li>Edit the <strong>web.config</strong> file, e.g. using <em>Notepad</em>.</li>
        <li>Find the <strong></strong>section
 <strong>configuration/connectionStrings</strong>.</li>
        <li>In this section, replace the existing connection with the new one. Replace it with a connection named <em>AlvaoTenants</em> that contains a connection string to the tenants database.<br />
            Example:<br />
            <pre translate="no" style="font-family: consolas; font-size: 13px; color: black; background: white;" class="style2"><span style="color:blue;">&lt;</span><span style="color:#a31515;">add</span><span style="color:blue;">&nbsp;</span><span style="color:red;">name</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">AlvaoTenants</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">connectionString</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Data&nbsp;Source=server1;Initial&nbsp;Catalog=AlvaoTenants;&nbsp;Max&nbsp;Pool&nbsp;Size=2000;&nbsp;Integrated&nbsp;Security=True</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">providerName</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Microsoft.Data.SqlClient</span>&quot;<span style="color:blue;">/&gt;</span></pre>
        </li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If AM WS is running in&nbsp;multitenant mode, it saves the files received by detection in the folder by default:<br />
        <em>c:\ProgramData\ALC\ALVAO Asset Management Collector\Detections\&lt;tenant organization name&gt;</em>
    </div>

    <h3>Asset Management Collector</h3>
    <p>For multitenant mode, first prepare a ZIP package to install service instances for each tenant:</p>
    <ol>
        <li>Install the MSI package <em>AlvaoAssetCollector.msi</em>
	using the &quot;admin&quot; installation:<br />
            <em>msiexec /a AlvaoAssetCollector.msi</em><br />
  Note: Run the command line "as administrator".</li>
        <li>In the folder where you installed the package (where the EXE and DLL libraries of the application are), extract the contents of the package <em>
            <a href="CollectorServiceControlScripts.zip">CollectorServiceControlScripts.zip</a></em></li>
        <li>Then &quot;zip all the files&quot; and create one ZIP archive, e.g.: <em>.
	AMCollector.zip</em></li>
    </ol>

    <h3 translate="no">Alvao Service</h3>
    <ol>
        <li>Edit the <b>appsettings.json</b> file, e.g. using <i>Notepad</i>.</li>
        <li>Find the <b>ConnectionString</b> section.</li>
        <li>In this section, replace the existing connection with the new one. Replace it with a connection named <i>AlvaoTenants</i> that contains a connection string to the tenants database.<br />
            Example:<br />
            <pre translate="no" style="font-family: consolas; font-size: 13px; color: black; background: white;" class="style2">
&quot;AlvaoTenants&quot;: &quot;Data Source=localhost;Initial Catalog=AlvaoTenants; Max Pool Size=2000; Integrated Security=True; MultipleActiveResultSets=True&quot;
            </pre>
        </li>
    </ol>

    <h3 translate="no">WebApp</h3>
    <ol>
        <li>Edit the <strong>Web.config</strong> file, e.g. using <em>Notepad</em>.</li>
        <li>Find the <strong></strong>section
 <strong>connectionStrings</strong>.</li>
        <li>In this section, replace the existing connection with the new one. Replace it with a connection named <em>AlvaoTenants</em> that contains a connection string to the tenants database.<br />
            Example.:<br />
            <pre translate="no" style="font-family: Consolas; font-size: 13px; color: black; background: white;" class="style2"><span style="color:blue;">&lt;</span><span style="color:#a31515;">add</span><span style="color:blue;">&nbsp;</span><span style="color:red;">name</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">AlvaoTenants</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">connectionString</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Data&nbsp;Source=server1;Initial&nbsp;Catalog=AlvaoTenants;&nbsp;Max&nbsp;Pool&nbsp;Size=2000;&nbsp;Integrated&nbsp;Security=True</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">providerName</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Microsoft.Data.SqlClient</span>&quot;<span style="color:blue;">/&gt;</span></pre>
        </li>
    </ol>
    <h3 translate="no">Custom Apps WebService</h3>
    <p>This component is installed only for tenants who have purchased the <a href="../../../modules/alvao-am-custom-apps" translate="no">ALVAO Asset Management Custom Apps</a> or <a href="../../../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a> module.</p>
    <p>For multitenant mode, first prepare a ZIP package to install service instances for each tenant:</p>
    <ol>
        <li>Install the MSI package AlvaoCustomAppsWebService.msi using the "admin" installation:<br />
            <i>msiexec /a AlvaoCustomAppsWebService.msi</i><br />
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Run the command line "as administrator".
            </div>
        </li>
        <li>2. "Zip" the folder from IIS where the application was installed (e.g. <i>C:\inetpub\wwwroot\AlvaoCustomAppsWebService)</i> and create a single ZIP archive, e.g. <i>CustomAppsWebService.zip</i></li>
    </ol>


    <h2>Adding a new tenant</h2>
    <ol>
        <li>For a new customer, register a new (sub)domain in <strong>DNS</strong> (e.g. <em>zakaznik1.alvao.com</em>) that points to the IP address of the server with the Alvao web applications installed.</li>
        <li>On SQL Server, use the <a href="database-deploy">DatabaseDeploy</a> utility to create a <a href="database-deploy">DatabaseDeploy</a> for customer <strong>.
 new database</strong> in&nbsp;the appropriate language (according to the customer's requirement). Activate the database.
            <br />

            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                <ul>
                    <li>The name of the database is recorded as case sensitive text, so be sure to observe case when transcribing.</li>
                    <li>When a new database is created, a strong authentication code is automatically generated for AM Agents. The code can be changed in <a href="../../../list-of-windows/alvao-asset-management-console/edit/detection/scope">global detection settings</a>.</li>

                </ul>
            </div>

             <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                    On SQL Server, set the necessary permissions for IIS processes. The settings for the tenant database are the same as for the database in single tenant mode. The recommended user roles are <strong>db_datareader</strong>, <strong>db_datawriter</strong>, <strong>db_ddladmin</strong> and <strong>db_executor</strong>.</div>


        </li>
        <li>Go to the <strong>AlvaoTenants</strong> database, e.g. using SQL Server Management Studio, edit the <em>Tenant</em> table and insert the corresponding values into it.<br />
            Ex:
 <ul>
     <li>Organization = Customer 1</li>
     <li>Domain = zakaznik1.alvao.com</li>
     <li>ConnectionString = Data Source=server1;Initial Catalog=Zakaznik1; Max Pool Size=2000; Integrated Security=True;TrustServerCertificate=True</li>
 </ul>
        </li>
    </ol>

    <h3>Provider Alvao</h3>
    <p>
        One of the tenants can be designated as an Alvao provider.<br />
        The provider has the right to create <a href="../../../alvao-service-desk/news">Current News</a> for other tenants as well.<br />
        To designate a provider, set the <em>IsProvider</em> column in its row in the tenant database to 1.
    </p>




    <h3 translate="no">Asset Management Collector</h3>
    <ol>
        <li>Create a new folder with the name of the tenant in <em>C:\Program Files (x86)\ALVAO\ Asset Management Collector\</em>
            <br />
            E.g.: <em>Customer 1</em>
        </li>
        <li>Extract the ZIP package with the <em>AMCollector.zip</em> files (see Multitenant Mode Settings) into this folder.</li>
        <li>Edit the <strong><em>AMCollector.config</em></strong> file and set the connection string to the tenant database in the <em>configuration/database/connectionStrings</em> section.</li>
        <li>Run the <strong><em>CreateService.cmd</em></strong> script ("as administrator") to create the AM Collector service for the tenant. The script will start the service directly.<br />
            <div class="note">
                <div class="icon">
                </div>
                <div class="title">
                    Note:
                </div>
                For the proper functioning of the service, we recommend creating a service account to which you assign <a href="installation-server-manual#database-roles">sufficient rights to manage the database</a>. The tenant can then be easily identified in the services.
            </div>
             <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                For proper functioning of the service, we recommend creating a service account to which you assign sufficient rights to manage the database (i.e. the right <em>db_ddladmin, db_datawriter, db_datareader and db_executor)</em>. Then run all Collector services under this account. Be sure to also allow this account access to the folders from where it will perform file retrieval. This is the <em>"C:\Windows\Temp"</em> folder and the hidden <em>"C:\ProgramData\ALC"</em> folder.
            </div>
        </li>
        <li>Go to the tenant's Alvao WebApp and in <em>Management - Asset Management - Servers</em> create settings for the specific server.<br />
            <ul>
                <li>Enter the name on the network of the server running Alvao services.</li>
                <li>In the <em>File Loading</em> section, enable automatic loading of CXM files from the folder:<br />
                    <em>c:\ProgramData\Alvao Asset Management Collector\Detections\&lt;tenant organization name&gt;</em>
                </li>
            </ul>
        </li>
    </ol>

    <h3 translate="no">Custom Apps WebService</h3>
    <ol>
        <li>On IIS, create a new folder named <i>AlvaoCustomAppsWebService_&lt;tenant name without hooks, commas, spaces and other special characters&gt;</i>, e.g.:<br />
            <em>C:\inetpub\wwwroot\AlvaoCustomAppsWebService_Zakaznik1</em></li>
        <li>Extract the ZIP package <em>CustomAppsWebService.zip (see Multitenant Mode Settings)</em> into this folder.</li>
        <li>Edit the <b>web.config</b> file, e.g. using Notepad. Find the section configuration/connectionStrings and set the connection string to the tenant database.</li>
        <li>Create an application pool specifically for this tenant's <span translate="no">Custom Apps WebService</span> with <a href="../../implementation/installation/own-iis-apppool">the same settings</a>,
  as the other Alvao apps. Leave the pool identity at <b>ApplicationPoolIdentity</b>.</li>
        <li>On SQL Server, set the <b>IIS APPPOOL</b> account with <b>db_datareader</b>, <b>db_datawriter</b>, and <b>db_executor</b> permissions for the tenant database only.</li>
        <li>In the <b>IIS Manager</b>, select the newly created folder and select <b>Convert to Application</b> from the context menu. Select the application pool created in the previous steps and confirm the dialog by pressing OK.</li>
        <li>Enter the correct service address in the following SQL script and run the script on the new tenant's database:
            <br />
            <pre translate="no" style="font-family: Consolas; font-size: 13px; color: black; background: white;" class="style2"><span style="color:blue;">exec</span>&nbsp;<span style="color:black;">spUpdateInsertProperty</span>&nbsp;<span style="color:red;">'CustomAppsWebService.Url'</span><span style="color:black;">, </span><span style="color:red;">'https://&lt;server&gt;/CustomAppsWebService_Zakaznik1'</span></pre>
        </li>
    </ol>
    <h2>Distribution of AM Agents</h2>
    <p>Install AM Agents on computers in your organization with the following command line parameters:</p>
    <ul>
        <li>WSURL=&lt;address of the AM WS with a specific tenant (sub)domain&gt;, e.g.:
 <em>https://<strong>zakaznik1</strong>.alvao.com/AssetWebService/AssetWebService.asmx</em></li>
        <li>AUTHCODE=&lt;authentication code&gt;
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                The Agent Authentication Code was generated automatically when the DB was created. You can find it in <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">global detection settings</a>.
            </div>
        </li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Agents can also be extended using GPOs with preset parameters - see <a href="../detection/agent">Installation via GPO</a>, or other tools. 
    </div>

    <h2>Tenant Upgrade</h2>
    <p>All tenants on a particular server must be upgraded at the same time because they share common server applications. If you need to upgrade only some tenants, you must first move them to another server.</p>
    <h3>Upgrade Database</h3>
    <p>If you need to upgrade the database (installing SP1 or a new "big" version), use the <a href="database-deploy">DatabaseDeploy</a> utility to upgrade all tenants' databases to the new version.</p>

    <h3 translate="no">Asset Management WebService</h3>
    <ol>
        <li>Install the new version of AM WS.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        AM WS is <strong>common</strong> for all tenants on a given server.
    </div>
    <h3 translate="no">Asset Management Collector</h3>
    <ol>
        <li>Re-create the ZIP package for the current version of Alvao, see above.</li>
        <li>In <strong>Windows - Computer Management - Services and Applications - Services</strong>, stop the <em>AM Collector</em> services for all tenants.<br />
            Note: That is, all <em>AM Collector</em> services that have the organization name in parentheses at the end of the service name.</li>
        <li>Extract the prepared ZIP package <strong>without the AMCollector.config</strong> file into the folders of all tenants one by one, so as not to overwrite the instance settings.</li>
        <li>Start all services again.</li>
    </ol>

    <h3 translate="no">Alvao Service</h3>
    <ol>
        <li>Install a new version of Alvao Service.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Alvao Service is <b>common</b> for all tenants on a given server.
    </div>

    <h3 translate="no">WebApp</h3>
    <ol>
        <li>Install a new version of WebApp.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        WebApp is <strong>common</strong> for all tenants on a given server.
    </div>

    <h3 translate="no">Custom Apps WebService</h3>
    <ol>
        <li>Re-create the ZIP package for the current version of Alvao, see above.</li>
        <li>Extract the prepared ZIP package <b>without the web.config file</b> into the tenants folders one by one, so that the instance settings are not overwritten.</li>
    </ol>
    <h2>Removing a tenant</h2>

    <ol>
        <li>Go to the <strong>AlvaoTenants</strong> tenant database and edit the <strong>Tenant</strong> table, find the correct tenant and delete the entire row.</li>
        <li>On the SQL server, delete the Alvao database for the tenant.</li>
    </ol>

    <h3 translate="no">Asset Management Collector</h3>
    <ol>
        <li>Go to <em>C:\Program Files (x86)\ALVAO\Asset Management Collector\</em> and find the subfolder of the specific tenant.</li>
        <li>In the folder, run the script <strong>RemoveService.cmd</strong> ("as administrator").</li>
        <li>Remove the entire tenant folder.</li>
    </ol>

    <h3 translate="no">Custom Apps WebService</h3>
    <ol>
        <li>In the <b>IIS Manager</b>, delete the tenant application using the <b>Remove</b> command in the local menu.</li>
        <li>Remove the application pool for the <span translate="no">Custom Apps WebService</span> of this tenant.</li>
        <li>In the <em>C:\inetpub\wwwroot</em> folder, delete the instance folder for this tenant.</li>
    </ol>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 {
            margin-top: 0px;
        }

        .style2 {
            margin-top: 0px;
        }
    </style>

</asp:Content>

