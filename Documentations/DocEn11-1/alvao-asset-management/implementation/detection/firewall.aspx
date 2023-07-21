<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Firewall settings</h1>

    <h3>Setting up the Windows Firewall using the command line</h3>
    <p>
        When Windows XP SP2 and above is installed, the Windows Firewall is activated and by default does not allow remote access. The Netsh command is used to set up the Windows firewall. The Netsh command is a command-line scripting tool that interacts with other operating system components through dynamic-link library (DLL) files.
How to modify the configuration of firewall services using the Netsh command is explained below.
	<ul>
        <li><strong>No Agent</strong> - Enable remote administration. Remote Admin must be enabled for communication between the Collector and the detected computer, which is disabled by default on the Windows firewall. 
            <p>Procedure to enable remote admin via command line (Cmd.exe) on the local station</p>
            <pre class="console" translate="no">netsh firewall set service RemoteAdmin enable subnet</pre>
            <p>If you want to enable remote administration remotely, you can use the freeware utility PsExec and the Cmd.exe command line. Basic PsExec syntax:</p>
            <p>psexec [\\computer[,computer[,...]] [-u user] [-p pswd]] cmd</p>
            <p>Parameters:</p>
            <ul>
                <li><strong>\\computer</strong> - the computer on which cmd will run. If you use \\*, cmd will run on all computers in the current domain.</li>
                <li><strong>-u</strong> - the account under which the command will be executed.</li>
                <li><strong>-p</strong> - password for the above account.</li>
                <li><strong>cmd</strong> - the program to be run.</li>
            </ul>

            <p><strong>Example 2. PsExec - Example of enabling remote administration</strong></p>
            <p>We want to enable remote administration on a computer with the network name PCOFFICE. Remote administration will be enabled from the entire local network.</p>
            <pre class="console" translate="no">psexec\\pcoffice -u <em><span class="console">administrator_account_name</span></em>-p <em><span class="console">administrator_account_name</span></em>
netsh firewall set service remoteadmin enable subnet </pre>


            <p><strong>Example 3. PsExec - Example of enabling remote administration</strong></p>
            <p>We want to enable remote administration on all computers in the current domain. Remote administration will be enabled from the entire local network.</p>
            <pre class="console" translate="no">psexec\* -u <em><span class="console">domain_administrator_account_name</span></em>
-p <em><tt>domain_administrator_account_name</tt></em>
netsh firewall set service remoteadmin enable subnet </pre>


            <p><strong>Example 4. PsExec - Example of enabling remote administration</strong></p>
            <p>We want to enable remote administration on all computers in the current domain. The account from which PsExec was started is used. Remote administration will only be enabled from computer 192.168.10.21.</p>
            <pre class="console" translate="no">psexec \\* netsh firewall set service remoteadmin enable custom 192.168.10.21</pre>

        </li>
        <li><strong>Agent over TCP/IP - port enable</strong> - the agent needs to be allowed access through the Windows firewall port to communicate with the Collector. The default port for the Agent is port 760.
            <p><strong>Example 5. Example of opening a port</strong></p>
            <p>We want to enable port 760 through the command line (Cmd) on the local station. Remote administration will be enabled from the entire local network.</p>
            <pre class="console" translate="no">netsh firewall set porttopening TCP 760 ALC_EP enable subnet</pre>


            <p><strong>Example 6. PsExec - port opening example</strong></p>
            <p>Using the PsExec utility, we want to remotely enable port 760 on all computers in the current domain. Remote administration will be enabled from the entire local network.</p>
            <pre class="console" translate="no">psexec \* -u <em><tt>administrator_account_name</tt></em>-p <em><tt>administrator_account_name</tt></em>
netsh firewall set portopening TCP 760 ALC_EP enable subnet</pre>

        </li>
    </ul>

        <h3>Setting up the Winows Firewall by using Group Policy in Active Directory</h3>
        <p>When Windows XP SP2 and above is installed, the Windows firewall is activated and does not allow remote access by default. Group Policy is used to set up the Windows firewall.</p>
        <p>Setting up the Windows Firewall using Group Policy in Active Directory can only be done on networks with a Windows Server 2008 R2 or higher domain server.</p>
        <ul>
            <li><strong>No Agent - Enable Remote Management</strong> -
 procedure for enabling remote admin using Group Policy in Active Directory.<ol>
     <li>Open <strong>Start - Run - mmc</strong></li>
     <li>In the tree, select <em>Local Computer - -Policies - - Computer Configuration - - Administrative Templates - - Network - - Network Connections - - Windows Firewall - - Domain Profile</em></li>
     <li>From the list, select <em>Windows Firewall - -Enable remote management exceptions</em><strong></strong>
         Switch to the <strong>Enabled</strong> state. If you need more security, enter the <strong>Junk Message Sources Allowed</strong> field.
  the IP address or subnet from which messages will be allowed to be received.</li>
 </ol>
            </li>
            <li><strong>Agent over TCP/IP - Port Enable</strong> - The procedure to enable port 760 using Group Policy in Active Directory. Remote administration will be enabled from the entire local network.<ol>
                <li>Open <strong>Start - Run - mmc</strong></li>
                <li>In the tree, select <strong>Local Computer - -Policies- -
Computer Configuration- - Administrative Templates- - Network- - Network Connections- - Windows Firewall- - Domain Profile</strong></li>
                <li>From the list, select <em>Windows Firewall- -Set Port Exceptions</em> to switch to the <strong>Enabled</strong> state. This will activate the <strong>Show</strong> button, click on it. In the following window, click the <strong>Add</strong> button and enter the following value.
  &quot;760:TCP:Localsubnet:enabled:ALC_EP&quot; </em></li>
            </ol>
            </li>
        </ul>
        <div class="caution">
            <div class="icon"></div>
            <div class="title">Caution:</div>
            If you have made settings via Group Policy in Active Directory, you can no longer change these settings via the command line, but again only in Group Policy!
        </div>
</asp:Content>
