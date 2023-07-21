<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Agent</h1>

    <h2>Installation</h2>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Before you start installing the Agent, study the <a href="detection-way">chapters Selecting a detection path</a>, which will tell you more about using the Agent.
    </div>
    <p>Installation can only be performed by a user with computer administrator privileges.</p>
    <ol>
        <li>On the stations on which you want to install the Agent, run the <em>AlvaoAssetAgent.msi</em>.</li>
        <li>The installation wizard will open on the screen. On the page <a href="../../../list-of-windows/alvao-asset-management-agent-setup/settings">Settings</a>, enter the installation parameters. Follow the instructions in the wizard.</li>
    </ol>
    <p>If the installation went correctly, there is a folder <em>C:\Program Files\ALVAO\Asset Management Agent</em> on the disk where the Agent executables are stored. A system service named <em>ALVAO Asset Management Agent X.X.X</em> must exist on the system.</p>

    <h3>Installation parameters</h3>
    <ul>
        <li><strong>WSURL</strong> - address of the ALVAO Asset Management web service, e.g. <span class="console">http://server/assetwebservice/assetwebservice.asmx</span>.</li>
        <li><strong>AUTHCODE</strong> - agent authentication code.</li>
        <li><strong>USETCP</strong> - enables agent connection via TCP/IP - possible parameter values are <span class="console">yes</span> or <span class="console">no</span>.</li>
        <li><strong>PORT</strong> - the number of the TCP/IP port on which the Agent is listening (port 760 by default). If you are connecting via TCP/IP.</li>
    </ul>
    <p>
        Example parameter settings in a silent installation - the agent authentication code is 1234 and the agent will use TCP/IP failover and the port on which the agent listens is 760:
        <br />
        msiexec /i AlvaoAssetAgent.msi /quiet <strong>WSURL</strong>=<em>&quot;https://app.company.com/assetwebservice/assetwebservice.asmx&quot;</em> <strong>AUTHCODE</strong>=<em>&quot;1234&quot;</em> <strong>USETCP</strong>=<em>&quot;yes&quot;</em> <strong>PORT</strong>=<em>&quot;760&quot;</em>
    </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        For successful installation, it is essential to run the script with administrator rights
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can also change the Agent settings additionally by running the Agent as an application (usually <em>C:\Program Files (x86)\ALVAO\Asset Management Agent\Agent.exe</em>) and using the <strong>Settings</strong> option.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you have any problems with the installed Agent, the log file that the Agent generates when it runs might help to solve them. Log generation is disabled by default. You can turn it on by running AMAgent.exe from the application directory. On the first page, select <strong>Settings</strong> and on the next page, check the <strong>Generate log file</strong> option. Set the log detail to Detailed. The service log will then be stored in the <em>agsvc.log</em> file.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If you set the log file detail to <strong>Detailed</strong>, the agent will generate a large amount of data to the log file and the detection rate will be very slowed down. Setting it to <strong>Detailed</strong> is therefore only recommended for troubleshooting and is not recommended for use in normal operation at all.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you want to use the Agent on Windows 95/98/ME operating systems, you need to install Agent version 5.0!!! - for more information, please refer to the manual for version 5.0 (ep.chm), which can be found in the installed Computer Records 5.0 application.<br />
        Also on Windows 2000 you must use Agent 5.10 and lower.<br />
        For Windows XP you must use Agent 10.0.
    </div>

    <h3>Installation via GPO</h3>
    <p>
        If you are installing Agent via GPO on a 32-bit OS and want to set up communication with AM WebService or via TCP/IP protocol, use the following <a href="AMAgent.admx">ADMX 32b file</a> and <a href="AMAgent.adml">ADML 32b file</a>. Place the ADML file in the localization files folder (for an EN Windows server, the <em>en-US</em> folder).
    </p>
    <p>
        If you are installing Agent via GPO on a 64-bit OS and want to set up communication with AM WebService or via TCP/IP protocol use the following <a href="AMAgent_64b.admx">ADMX 64b file</a> and <a href="AMAgent_64b.adml">ADML 64b file</a>. Place the ADML file in the localization files folder (for an EN Windows server, the <em>en-US</em> folder).
    </p>

    <h3>Automatic update</h3>
    <p>ALVAO Agent automatically updates itself when it detects a newer version when communicating with AM WebService. The agent detects the new version when it starts or restarts and then once a day.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When diagnosing potential auto-update problems in Agent, turn on <a href="../../../list-of-windows/alvao-asset-management-agent/settings/general">detailed log</a>.
	When updating, the Agent will first download a new installation package to the Update subfolder of the folder where the Agent is installed (usually C:\Program Files (x86)\ALVAO\Asset Management Agent).
	In the same folder after installation you will find the installation log <em>AMAgent_MSI_upgrade.log</em>.
    </div>

    <h2 id="settings">Setting up an autonomous agent</h2>
    <p>In the basic configuration, the agent contacts the Asset Management WebService every 2 hours to determine if it should perform a computer discovery. If the Agent fails to send a discovery, it tries again after 15 minutes. These values can be changed by creating values in the registry of the computer on which the Agent is installed:</p>
    <table>
        <tr>
            <th>Value name</th>
            <th>Type</th>
            <th>Default value</th>
        </tr>
        <tr>
            <td>ScheduleUpdateIntervalMinutes</td>
            <td>REG_DWORD</td>
            <td>120</td>
        </tr>
        <tr>
            <td>DetectionUploadRetryIntervalMinutes</td>
            <td>REG_DWORD</td>
            <td>15</td>
        </tr>
    </table>

    <ul>
        <li>32 bit OS:<pre class="console" translate="no">SOFTWARE\ALC\ALVAO Asset Management\Agent</pre>
        </li>
        <li>64 bit OS<pre class="console" translate="no">SOFTWARE\Wow6432Node\ALC\ALVAO Asset Management\Agent</pre>
        </li>
    </ul>


    <h2>Web Service Settings</h2>
    <p>
        Web service stores received detections in directory or Microsoft Azure blob storage configured in the 
        <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Administration – Asset Management – Settings – Detection – Loading files</a>.
    </p>
    
    <h2>Finding the reason why the Agent does not communicate with WS</h2>
    <p>Exception text or error code from the Agent will help in diagnosis. This can be found as follows:</p>
    <ol>
        <li>Run in the Agent directory installation file <em>AMAgent.exe </em>.</li>
        <li>A window will appear where you select the <strong>Settings</strong> option.
and press the <em>Next</em> button.</li>
        <li>On the <em>General</em> tab
 Enable the <strong>Write log to file</strong> option and select <em>Status and errors</em> for the detail.</li>
        <li>Confirm the setting change with <em>OK</em>.</li>
        <li>Restart the Agent service.  The Agent immediately tries to connect to the web service.</li>
        <li>In the Agent installation directory, locate the <em>agsvc.log</em>
            and open it, for example, in notepad.</li>
        <li>Look for the line in the log:
            <pre class="console" translate="no">[CheckDetectSchedule] calling WS end with error: ...</pre>
            <p>
                Either the exception text or the error code follows.
                <br />
                <br />
                Exception returned by webservice -
 e.g. authentication error, computer not in DB, etc.
                <br />
                <br />
                The error code may indicate a problem with secure communication. In this case there should be a numeric error code. Details of the error can then be found on the 
                <a href="https://learn.microsoft.com/en-us/windows/win32/debug/system-error-codes#system-error-codes">Microsoft learn site</a>.
                <br />
                If the error is in the communication then it will usually be a 12xxx code, which can be found on 
                <a href="https://learn.microsoft.com/en-us/windows/win32/wininet/wininet-errors">this page</a>.
            </p>
        </li>
    </ol>


    <h2>Command line</h2>
    <p>Agent allows you to run from the command line with the specified parameters. In this chapter you will find a detailed description of all command line parameters.</p>
    <p>Parameters:</p>
    <ul>
        <li><strong>/dd</strong> - instant detection of the device on the computer where the Agent is running. (works only together with the <span><strong>/df</strong></span> parameter)</li>
        <li><strong>/dsw</strong> - instant software detection on the computer where the Agent is running. With this switch, full detection is performed, including files on all hard drives without exceptions. (works only together with the <strong>/df</strong> parameter)</li>
        <li><strong>/dssw</strong> - instantly detect software on the computer where the Agent is running. With this switch, normal software detection is performed. (works only together with the <strong>/df</strong> parameter)</li>
        <li><strong>/df</strong> - performs selected types of detection (parameter <strong>/dd</strong>,<strong>/dsw</strong>,
  <strong>/dssw</strong>) and saves the resulting detection files to the directory from where the Agent is running or to the folder specified after the <strong>/f</strong>.</li>
        <li><strong>/f <em><span class="console">[path]</span></em></strong> - the path to the shared folder, or the path where the selected detections are saved (parameter <strong>/df</strong>).
Specifies the path to the shared folder where the detection requests are stored. If this parameter is not specified, the path specified in the Agent settings (the <strong>Settings</strong> option after starting the Agent from the - menu) is used.
Start). If neither this parameter nor the path is specified in the Agent settings, the <em><span class="console">server installation path</span> is used.
\Share</em>.</li>
        <li><strong>/l <em><span class="console">[file]</span></em></strong> - the agent will generate a log to the file specified after the parameter.</li>
        <li><strong>/v <em><span class="console">[number]</span></em></strong> -
logging detail will be set to the specified level (only works with the <strong>/l</strong> parameter).
  <em>Levels: 0 = Status and errors, 1 = Normal, 2 = Full</em>.</li>
        <li><strong>/s</strong> - the agent will start covertly, i.e. no information window will be displayed on the screen.</li>
        <li><strong>/h</strong> - a help window for command line parameters will be displayed.</li>
    </ul>
    <div class="tooltip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you want to do a full software detection and skip some disks or paths, you need to run the agent without the command line and set the software detection parameters correctly in the wizard.
    </div>

    <p><strong>Example 7. Agent - Device and Software Discovery Example</strong></p>
    <p>We want to run the Agent so that it immediately performs device detection and normal software detection and saves the detection files to the D:\Detection folder</p>
    <pre class="console" translate="no">AMAgent /dd /dssw /df /f D:\Detection</pre>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you use the Agent to create detection files, the file names will be automatically created by the computer name and by adding the suffix <em>_SW</em> for software detection and <em>_HW</em> for device detection.<p>
            For example: for a computer named <em>STANDAPC</em>, the Agent will create the files <em>STANDAPC_SW.cxm</em> and <em>STANDAPC_HW.cxm</em>.
        </p>
    </div>
</asp:Content>

