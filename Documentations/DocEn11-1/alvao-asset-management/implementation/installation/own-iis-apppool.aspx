<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Configuring IIS server and creating application pool</h1>
    <h2>Configuring IIS Server</h2>
    <h3>Process</h3>
    <ol>
        <li>In the <strong>Add Roles and Features Wizard</strong> step, select <strong>Role Services</strong> and leave checked or unchecked:
 <ul>
     <li>Web Server<ul>
         <li>Common HTTP Features<ul>
             <li>Default Document</li>
             <li>Directory Browsing</li>
             <li>HTTP Errors</li>
             <li>Static Content</li>
             <li>HTTP Redirection</li>
         </ul>
         </li>
         <li>Health and Diagnostics<ul>
             <li>HTTP Logging</li>
         </ul>
         </li>
         <li>Performance<ul>
             <li>Static Content Compression</li>
         </ul>
         </li>
         <li>Security<ul>
             <li>Request Filtering</li>
             <li>Basic Authentication</li>
             <li>Windows Authentication</li>
         </ul>
         </li>
         <li>Application Development<ul>
             <li>.NET Extensibility 4.6</li>
             <li>ASP</li>
             <li>ASP.NET 4.6</li>
             <li>ISAPI Extensions</li>
             <li>ISAPI Filters</li>
         </ul>
         </li>
         <li>Management Tools<ul>
             <li>IIS Management Console</li>
             <li>IIS 6 Management Compatibility<ul>
                 <li>IIS 6 Metabase Compatibility</li>
                 <li>IIS 6 Management Console</li>
                 <li>IIS 6 Scripting Tools</li>
                 <li>IIS 6 WMI Compatibility</li>
             </ul>
             </li>
         </ul>
         </li>
     </ul>
     </li>
     <li>Features<ul>
         <li>.NET Framework 4.6 Features (2 of 7 installed)<ul>
             <li>.NET Framework 4.6 (Installed)</li>
             <li>WCF Services (1 of 5 installed)<ul>
                 <li>TCP Port Sharing (Installed)</li>
             </ul>
             </li>
         </ul>
         </li>
     </ul>
     </li>


 </ul>
    </ol>

    <a name="fund"></a>
    <h2>Creating an application pool</h2>
    <h3>Pre-requisites</h3>
    <ul>
        <li>Microsoft Windows Server</li>
        <li>Microsoft Internet Information Services Server (IIS)</li>
        <li>Microsoft .NET Framework</li>
    </ul>
    <p>For required versions of the above systems, see <a href="../requirements">technical requirements</a>.</p>

    <h3>Progress</h3>

    <ol>
        <li>Open the <b>Internet Information Services Report</b>
            (Internet Information Services (IIS) Manager).</li>
        <li>Select <b>Application Pools</b> and right-click in the right pane and select <b>Add Application Pool...</b>.</li>
        <li>In the window that opens, enter <b>ALVAO AppPool .NET 4.0</b> as the name of the application pool, and select the .Net Framework version
            <nobr>
                <b>.NET CLR Version v4.0.30319</b>,</nobr>
            the managed channel mode select <b>Integrated</b> and click <b>OK</b>.</li>
        <li>Then right-click on the newly created application pool and select <b>Advanced settings...</b></li>
        <li>First, change the value in the <b>Reqular Time Interval (minutes)</b> property.
  to <b>43200</b> (minutes), i.e. 30 days.<br />
            Second, change the <b>Recular property</b> to <b>Idle Time-out (minutes)</b> to <b>43199</b> (minutes).</li>
        <li>You also need to change the <b>Identity</b> from the <b>ApplicationPoolIdentity</b> value.<br />
            Click on the <b>Identity</b> property value and select <b>NetworkService</b> in the window that opens and confirm the selection.</li>
        <li>Now you need to change the settings for specific web applications. Select the desired web application from the list and select
            <nobr><b>Basic Settings...</b>.</nobr></li>
        <li>In the window that opens, click the <b>Select...</b> button and select the application pool you created.</li>
        <li>Confirm your changes and close the window.</li>
        <li>Change the application pool for all Alvao web solutions.</li>
        <li>Done.</li>
    </ol>

    <h3>Further information</h3>
    <ul>
        <li><a href="http://technet.microsoft.com/en-us/library/cc771170(WS.10)">Specify an Identity for an Application Pool (IIS 7)</a></li>
        <li><a href="https://docs.microsoft.com/en-us/iis/manage/configuring-security/application-pool-identities">Application Pool Identities</a></li>
    </ul>

</asp:Content>

