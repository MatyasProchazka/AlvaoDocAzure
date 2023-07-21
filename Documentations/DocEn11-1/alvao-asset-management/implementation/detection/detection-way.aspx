<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Detection method selection</h1>

    <p>Collector is able to process requests in several ways. The choice of detection method depends primarily on the capabilities of the operating system of the detected computer. The following table lists the possible detection methods.</p>

    <table>
        <thead>
            <tr>
                <th>Detection method</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>automatically (default)</td>
                <td>This option is a combination of the Autonomous Agent, MS SCCM, Agent over TCP/IP (deprecated), and No Agent options. 
                    Autonomous Agent is the preferred method of discovery.
                    The other detection methods are tried only when the Autonomous Agent has not contacted the AM WebService for 7 days. 
                    If the Microsoft Endpoint manager Connector module is available, the PC tries the MS SCCM method of detection first. 
                    If this fails, it tries the connection by pinging the remote PC. 
                    If the PC is active, Collector tries to detect the PC using the Agent over TCP/IP (deprecated). 
                    If there is no Agent on the remote computer, Collector attempts to perform discovery without an Agent.</td>
            </tr>
            <tr>
                <td>Autonomous Agent</td>

                <td>The agent periodically asks the AM WebService whether to perform discovery and whether to detect HW or SW. By default, the Agent polls every 2 hours. If the WebService requests a detection, the Agent creates a detection (CXM file) and sends it to the WebService. If the detection fails to be sent, the Agent tries again (by default every 15 minutes).<br />
                    <br />
                    If using the Agent, we recommend using this detection method.<br />
                    <br />
                    Advantages/disadvantages:<br />

                    + Detected stations can be anywhere outside the corporate network, communication is via the Internet.<br />
                    + Low network traffic - data sent is compressed.<br />
                    + No need to enable the port in the station's firewall -
 communication is via the standard HTTP/HTTPS protocol.<br />
                    + Eliminated risk of bad computer detection due to outdated DNS records.<br />
                    + Detections are performed in parallel.<br />
                    - Immediate detection cannot be performed (Agent contacts WebService at certain intervals)<br />
                    - Need to install Agents and distribute WebService address settings.</td>
            </tr>
            <tr>
                <td>without Agent (deprecated)</td>
                <td>This option comes from older versions of the system and is replaced by <em>automatically</em>.<br />
                    <br />
                    This detection method can only be used on computers running Windows 2000 and above. There is no need to install Agent on detected computers. Detection is performed using DCOM, WMI and remote registry access.<br />
                    <br />
                    Advantages/disadvantages:<br />
                    + No need to install Agents on detected stations.<br />
                    - Great network communication - data is not compressed during detection.<br />
                    - Risk of another machine being detected due to bad DNS entries.<br />
                    - Sometimes it is problematic to set up the detected computer so that agentless detection works.<br />
                    - Detections are sequential.</td>
            </tr>
            <tr>
                <td>Agent over TCP/IP (deprecated)</td>
                <td>This option comes from older versions of the system and is replaced by the <em>automatic</em> option.<br />
                    <br />
                    Collector first tries the connection by pinging the remote machine. An agent must be installed on the detected computers. Communication between Collector and Agent is via TCP/IP (deprecated).<br />
                    <br />
                    Advantages/disadvantages:<br />
                    + Low network traffic - detection data is sent compressed.<br />
                    + Instantaneous detection can be performed.<br />
                    - Risk of another computer being detected due to bad DNS entries.
                    <br />
                    - You need to enable a specific port in the station's firewall.<br />
                    - Detections are sequential.</td>
            </tr>
            <tr>
                <td>MS SCCM</td>
                <td>This option is only available after enabling the <a href="../../../modules/alvao-microsoft-endpoint-manager-connector">ALVAO Microsoft Endpoint Manager Connector</a> module.<br />
                    <br />
                    Collector reads hardware and software data on the computer using the set <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/ms-sccm-connections">connections</a> to SCCM. 
                    The computer searches through all connections one by one until it finds it. This eliminates the need to install agents on the target computers, nor is there a need to set user permissions to access WMI, the remote registry, and hard drives.<br />
                    <br />
                    Advantages/disadvantages:<br />
                    + HW/SW data is quickly retrieved from SSCM<br />
                    - Alvao cannot control how old the data is in SCCM.<br />
                    - Detections are sequential.</td>
            </tr>
            <tr>
                <td>manually</td>
                <td>Collector does not process requests with this detection method. You must perform the detection manually on the detected machine by running <em>AMAgent.exe</em>. The program will generate files with the <em>.cxm</em> extension, which you can then load into the AM Console using the <strong>Tools - <strong>Tool -
 Detection - Load from file</strong>.<br />
                Use this detection option even for computers that cannot be detected (Linux, Apple, etc.).
            </tr>

        </tbody>
    </table>

    <p>
        By default for all computers (in <a href="../detection#detection-options">global detection settings</a>) the detection method is set to <em>automatic</em>,
 which suits detection of Windows 95, 98, Me and NT operating systems using Agent over TCP/IP (deprecated) and Windows 2000 and higher without Agent (deprecated) or with Autonomous Agent or Agent over TCP/IP (deprecated). For computers that are not connected to the network and for undetectable computers, set the detection method <em>manually</em>.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If the detection in &quot;Agent over TCP/IP (deprecated)&quot; mode fails to establish a connection via computer name, try a connection via IP address.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        By default, Collector uses ping to test if the detected computer is on. For the &quot;Agent over TCP/IP (deprecated)&quot; detection mode, ping can be disabled by setting the AgentTcpipPing registry entry in the HKEY_LOCAL_MACHINE\Software\ALC\ALVAO Asset Management\Collector path to 0 (dword) or in the Collector settings.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        In &quot;Agentless&quot; mode, if computers are detected that are split by an internal firewall on the network and yet are in the same domain, the following ports need to be enabled on the firewall:<br />
        <ul>
            <li><strong>WMI</strong> - port 135 + &lt;a random port from the dynamic TCP range&gt;, this varies by OS:<br />
                - 1024-5000 (Windows 2000, Windows XP, and Windows Server 2003)<br />
                - 49152-65535 (Windows Vista and above, Windows Server 2008 and above)</li>
            <li>
                <strong>Remote registry</strong> - port 445 </li>
            <li>
                <strong>Administrative Disk Sharing</strong> - ports 135-139 and 445.</li>
        </ul>
        See more articles:<br />
        <a href="https://support.microsoft.com/en-in/help/832017/service-overview-and-network-port-requirements-for-windows">Windows Network Services Overview and Ports</a><br />
        <a href="https://docs.microsoft.com/en-in/windows/win32/wmisdk/setting-up-a-fixed-port-for-wmi">Setting up a fixed port for WMI</a>
    </div>

    <h3>Detection method by computer operating system</h3>

    <p>We recommend that computers that are connected to a computer network be detected as follows, depending on the operating system.</p>
    <ul>
        <li><strong>Windows 2000 and above - detection method: automatic</strong> - Collector can detect data using standard operating system components. There is no need to install Agent on the stations.
            <br />

            If you choose to install the Agent, you must be running Windows 7 or higher.</li>

        <li><strong>Other operating systems - detection method: manually</strong> - computers with other operating systems, such as Linux or Apple computers, cannot be automatically detected.  Select the detection method <em>manually</em> for these. The necessary data must be entered into the system manually, see <a href="../insert-computers#insert-computer-manually">Inserting computers that cannot be detected</a>.</li>
    </ul>

</asp:Content>
