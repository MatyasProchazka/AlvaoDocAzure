<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Collector</h1>
    <p>Detection requests are handled by a separate Collector program that periodically scans the database and if it finds a new pending request, it tries to resolve it. If a computer cannot be detected, e.g. because it is currently powered off, the request is deferred and Collector will return to it later. It is possible to schedule and configure Collector to handle detection and evaluation requests so that it does not overload the SQL server or the computer network, e.g. during operating hours, but works at night when the SQL server and the network are underutilized.</p>
    <p>Collector can be run as a system service (recommended) or as an interactive application. A shortcut for running Collector interactively is added to the Start menu when the AM Console is installed.</p>
    <p>As a service, Collector is usually installed on a server, but you can also install it on a workstation this way. The advantage of installing a service is that Collector automatically starts when the computer is turned on and runs even when no interactive user is logged on.</p>
    <p>Collector can also run on multiple computers on the network simultaneously. The individual Collector instances then share the specified discovery requests and handle them together.</p>
    <p>
        Another feature of Collector is the ability to <em>Automatically update the software product library (SwLib)</em>.
  The Collector, according to <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">settings</a>, checks the availability of a new library on the Internet, or loads the library from a set folder on the server disk.
    </p>
    <p>
        Collector also allows you to search for new computers on the network using <em>Network Search</em>. This feature is used to search for new computers connected to the corporate network. Newly found computers are created in a special folder - Found Computers Folder in the Asset Tree. The network search configuration can be changed in the WebApp in <strong>Management - Asset Management</strong><strong> - Servers</strong> using the <strong>Edit</strong> command in the <strong>Network Search</strong> section. It is possible to configure multiple Collectors to each scan only a specific part of the computer network, thereby speeding up periodic scanning of a large enterprise network. The scan period for each configured range can be individually changed. The set time determines after how long the Collector will rescan that part of the network.
    </p>
    <p>Collector also includes the <em>Automatic loading of manual discovery files</em> feature. This automatically loads the manual detection files (*.CXM) from a preset folder on the hard disk. The loaded detections are either moved to the &quot;Processed&quot; subfolder or deleted from the hard disk. This behavior can be selected in the <strong>Read Files</strong> setting.</p>
    <p>Collector also sends requests with unrecognized software and requests to add a new product to the library (if this feature is enabled) and requires an internet connection to function properly.</p>

    <h3>Settings</h3>

    <p>
        <strong>ALVAO - Asset Management Collector</strong>)
  using the command Action -
  <a href="../../../list-of-windows/alvao-asset-management-collector/actions/hidd-optgeneralpp">Settings</a>.
    </p>
    <p>
        Further Collector settings are done in
  <strong>ALVAO WebApp</strong> in <strong>Management - Asset Management</strong> -
  <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/servers">Servers</a>.
    </p>

    <h3>Configuration file AMCollector.config</h3>
    <p>
        The configuration file stores all local configuration from <a href="../../../list-of-windows/alvao-asset-management-collector/actions/hidd-optgeneralpp">Collector settings</a>:
    </p>
    <ul>
        <li>Database connection string</li>
        <li>Start automatically after system boot</li>
        <li>Configure logging to <em>AlvaoCollector</em> event log</li>
    </ul>
    <p>Collector can therefore be configured without restarting the service by editing this configuration file.</p>
    <h4>Configuration file elements</h4>
    <table class="wide">
        <tr>
            <th>Element</th>
            <th>Description</th>
            <th>Acceptable values</th>
            <th>Default value</th>

        </tr>
        <tr>
            <td>database\connectionTimeout</td>
            <td>Timeout of connection to DB in [s].</td>
            <td>INT number</td>
            <td>300</td>
        </tr>
        <tr>
            <td>database\connectionStrings\add[@name=&quot;Collector&quot;]</td>
            <td>The DB connection string set through the Collector settings.</td>
            <td>connection string</td>
            <td>-</td>
        </tr>
        <tr>
            <td>ui\autoStart</td>
            <td>Automatically start the application after OS startup.</td>
            <td>0 = no,<br />
                1 = yes</td>
            <td>0</td>
        </tr>
        <tr>
            <td>log[@active]</td>
            <td>Enable/disable event logging.</td>
            <td>0 = off,<br />
                1 = on</td>
            <td>0</td>
        </tr>
        <tr>
            <td>log\detailLevel</td>
            <td>Level of logging detail.</td>
            <td>0 = status and errors,<br />
                1 = normal,<br />
                2 = detailed</td>
            <td>0</td>
        </tr>
        <tr>
            <td>log\writeProcessAliveHours</td>
            <td>Logging period of the live status (heartbeat) of the detection and scanning process (in hours).</td>
            <td>INT number</td>
            <td>12</td>
        </tr>
    </table>


    <h3>Interactive Collector launch</h3>
    <p>
        Collector is launched as an interactive application by <strong>Start - ALVAO - Asset Management Collector</strong>. A status icon
        <img src="collector_icon.png" />
        appears in the bottom right of the Windows Taskbar.
	Double-clicking on the status icon opens the Collector main window with a list of messages about the detections performed, including any error messages.
    </p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        When the Collector has handled all requests in the database, it goes into a quiescent state where it checks the database every 2 minutes to see if a new request has been made. You can skip the wait with the
        <img src="go.jpg" />
        button.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        When the Collector has finished scanning all of the network ranges that are configured for the machine, the &quot;NetScan&quot; function will go into an idle state until the next range scan is scheduled. You can skip the wait by clicking
        <img src="GoNetScan.jpg" />.
    </div>
    <p>In order for Collector to be able to detect data from computers running Windows 2000/XP/Vista/7 operating systems without using the Agent, it must be run on a user account with administrator privileges on the detected computers, i.e. the user running Collector must be the administrator of the detected computers. The second option is to run Collector under a different user by right-clicking on the -Collector command in the Start menu with the <span class="key">Shift</span> key pressed, selecting -Run As from the local menu, and entering the login name and password of the appropriate user.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you want to detect IBM AIX operating system hardware via SSH, you must have the login credentials of a user in the account list who has permission to run commands on the remote machine via SSH.
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

