<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>System Architecture</h1>
    <div class="wide">
        <img src="architecture/img/am-architecture.png" alt="System Architecture" /></div>
    <ol>
        <li><strong>Database</strong> - all recorded data is stored in a database. If multiple users use the system, they all work with a common shared database. MS SQL Server<em> </em>and its <em>Express edition</em> can be used as the database system.</li>
        <li><strong>Asset Management Console (AM Console)</strong> - is the basic application for working with the system. The user connects to the <i>Asset Management WebService</i> or directly to the database via the AM Console. It is a Win32 application.</li>
        <li><strong>ALVAO WebApp (WebApp, WA)</strong> - The system includes an intranet interface that allows you to view and change data in the database using a web browser. Accessing the database via the intranet (or the Internet) does not allow all operations to be performed like the AM Console. Its main purpose is to provide ICT staff with access to the database when solving technical problems away from their workplace.</li>
        <li><strong>Asset Management Collector (AM Collector, Collector)</strong>
            - Win32 application that performs remote hardware and software detections of computers on a network. Data is detected based on a request issued by an IT staff member to the AM Console. The request is stored in the database. AM Collector handles the issued requests and writes the detection results back to the database, where they are accessible to the user in AM Console. AM Collector can be run as an interactive application or as a system service, e.g. on a server. Data can be detected in 4 ways, see points (5) to (8).</li>
        <li><strong>Asset Management WebService (AM WebService)</strong> -
	used for communication with autonomous agents and also for remote connection to the Asset Management Console. The agents are queried via the web service to perform a detection and after performing the detection, they send it to the server via the web service.</li>
        <li><strong>Detection by Autonomous Agent</strong> - An Agent is installed on the station that autonomously performs the detection and sends it to the server. The communication is done via HTTP/HTTPS protocol and the station can be anywhere on the Internet.</li>
        <li><strong>Detection without Agent</strong> - AM Collector can detect data from Windows 11/10/8.1/8/2000/XP/Vista computers without having <em>&nbsp;</em>Agent installed on them. Detection is done via DCOM, WMI and Remote Registry.</li>
        <li><strong>Detection with Agent over TCP/IP</strong> - On stations with Windows 95/98/Me and NT/2000/XP/Vista/7 operating systems, detection can be performed using <em>Agent</em>. On Windows NT/2000/XP/Vista/ and 7 the Agent is implemented as a system service. On Windows 95/98/Me, it is a hidden application that runs at Windows startup. AM Collector communicates with the Agent using TCP/IP protocol.</li>
        <li><strong>Detecting the Agent through a shared folder</strong> - The Agent can also communicate with AM Collector through a shared folder on the server. This option is retained for compatibility with older versions of the system. When using <em>Agent</em>, we recommend choosing to communicate via TCP/IP.</li>
    </ol>
</asp:Content>
