<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Hardware and software detection</h1>
    <p>Hardware and software discovery of computers on the network is performed by the administrator first issuing hardware and software discovery requests for selected computers in the AM Console. The requests are stored in a database. AM Collector handles the requests and stores the results of the detections back into the database where they are available for viewing in AM Console.</p>

    <h2>Detection methods</h2>

    <p>Hardware and software of computers on the network can be detected automatically remotely <strong>without installing Agents</strong> on individual computers, or by installing Agents, see <a href="detection/detection-way">Detection methods</a>. The &quot;Agentless&quot; method requires an administrator (or other authorized user) to have remote access to the following services on the computers:</p>
    <ol>
        <li>WMI</li>
        <li>remote registry</li>
        <li>administrative access to hard drives (<strong>computer name</strong>)</li>
    </ol>

    <p>
        In a standard Windows Network Domain environment, to meet this condition, all you need to do is enable the &quot;RemoteAdmin&quot; service in bulk on computers using Group Policy in the firewall.<br />
        If detection without Agents is not possible, we recommend installing Agents in bulk on computers using Group Policy (instructions e.g. <a href="installation/gp-distribution">here</a>)
    </p>
    <div id="detection-options">
        <h2>Detection Settings</h2>

        <p>Each computer may use a different <a href="detection/detection-way">detection method</a>. Which detection path is used for which computer is determined by the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles">detection profile</a> assigned to the computer. By default, all computers use the <em>Default</em> detection profile. You can change the settings of this profile, or you can create your own detection profiles and assign them to computers, for example in the object tree on a computer type object using the local menu command - <strong>Set Detection</strong>.</p>
        <div class="tip">
            <div class="icon"></div>
            <div class="title">Tip:</div>
            If you want the computer to be <strong>undetectable</strong> for some reason (e.g. it is running on Linux, Apple operating systems), check <a href="../../list-of-windows/alvao-asset-management-console/edit/detection/detection-way">Detection way</a> for both hardware detection and software detection. Setting up detection in this way will then ensure that bulk requests do not generate detection requests for the machine.
        </div>
    </div>
    <div id="detection-request">
        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            The detection profile to use when creating detection requests. Changing the profile later will not affect requests already created.
        </div>
        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            For each computer, you can define <em>custom detection settings</em> to be used instead of a detection profile. This option will be removed in future versions of Alvao and is no longer recommended.
        </div>
        <h2>Creating Detection Requests</h2>

        <p>To create multiple computer discovery requests:</p>
        <ol>
            <li>In the object tree, select the organizational folder in which you want to detect the software.</li>
            <li>In <a href="../../list-of-windows/alvao-asset-management-console">main window</a> in the top right, select the <strong>Objects</strong> and the Computers view.</li>
            <li>Select the computers you want to detect. (To select the entire list, press <span class="key">Ctrl</span>+
 <span class="key">A</span>.) Then right-click and select the command - <strong>Detect</strong> from the menu.</li>
            <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/detection/general">New Detection - Basic</a>, where you can specify the scope and method of detection. By default, you can leave the <strong>option enabled.
  Use saved settings</strong> and continue with the <strong>OK</strong>.</li>
            <li>You can monitor the processing progress of the created requests in the main window on the <strong>Detection</strong> in the <strong>Status</strong> column. The tab shows all requests related to all computers in the organizational folder that is currently selected in the tree.</li>
        </ol>
        <div class="tip">
            <div class="icon"></div>
            <div class="title">Tip:</div>
            You can also use the <em>Detect </em>command in the object tree on a specific computer.
        </div>

        <h3>Creating a request for immediate detection of HW and SW</h3>

        <p>To perform an immediate HW or SW detection, use the following procedure:</p>
        <ol>
            <li>In the object tree in the AM Console, select <strong>computer</strong>.</li>
            <li>From the local menu, select <strong>Detect</strong>.</li>
            <li>The <strong>New Detection</strong> window will appear, where you turn on the <strong>Detect and evaluate immediately</strong>.<br />
                Note: When a single PC is selected, the option is automatically enabled.</li>
            <li>Finish the detection settings and select <strong>OK</strong>.</li>
            <li>Now a new detection request will be created on the <strong>Detection</strong> tab, which Collector will try to execute and evaluate as quickly as possible. If the computer already had a pending request (for example, scheduled automatically), this request will be replaced with the newly created one.<br />
            </li>
        </ol>
        <div class="tip">
            <div class="icon"></div>
            <div class="title">Tip:</div>
            You can also select an entire <strong>organizational unit</strong> and on the <strong>Objects</strong> tab, multiple computers at the same time.
        </div>
        <div class="tip">
            <div class="icon"></div>
            <div class="title">Tip:</div>
            Instant detection can only be guaranteed for the <em>No Agent</em>, <em>Agent over TCP/IP</em> and <em>automatic</em> detection methods. If you need to detect immediately with the <em>Autonomous Agent</em> method,
  you need to abbreviate <a href="detection/agent">Agent's polling interval to the WebService</a>.
        </div>
        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            Requests entered in this way are executed starting from the oldest. If the computer is powered off, detection is deferred according to the settings in <em>WebApp - Manage - Asset Management - Servers - Edit</em> - the settings in the <em>Detection</em> block.
        </div>

        <h3>Create a request for immediate detection evaluation</h3>

        <p>If you want to evaluate the detection immediately, use the following procedure:</p>
        <ol>
            <li>In the tree, select a specific <strong>computer</strong> or <strong>organizational unit</strong> and go to the <strong>Detection</strong> tab.</li>
            <li>Select the desired detections and from the local menu select the <strong>Evaluate Now</strong>.</li>
            <li>Detection status will change to &quot;Waiting for detection evaluation&quot;.</li>
            <li>Collector will now attempt to process the request as quickly as possible even outside of the detection evaluation schedule.</li>
        </ol>

        <h3>Display instant detection requests</h3>

        <ol>
            <li>In the <strong>AM Console</strong>, select the desired <strong>organization</strong> in the object tree.</li>
            <li>Go to the <strong>Detection</strong> tab.</li>
            <li>View the <strong>Immediately</strong> column, which determines whether the request should be processed immediately (if manually entered, select <em>Detect and Evaluate Immediately</em>).</li>
            <li>If you <strong>sort</strong> the list of requests by the <strong>Immediately</strong> column, you can easily find all requests for immediate detection.</li>
        </ol>
    </div>


    <h2 id="#detection-repeat">Automatic detection scheduling</h2>
    <p>We recommend that computers be detected periodically using automatic detection scheduling. Depending on how up-to-date you want the information to be, specify a period (number of days) after which a new detection and evaluation should be automatically performed. When the system finds a detection older than the number of days you specify, it creates a request for a new detection. The default period is set in <strong>WebApp - Administration - Asset Management - Detect Profiles - Edit</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Automatic Detection Scheduling Period</a>.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Once a new detection is created and evaluated, it is recommended to invalidate the older detection. This can be set in <strong>WebApp</strong> - <strong>Management</strong> - <strong>Asset Management</strong> - <strong>Asset Management</strong>
        Settings</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Detection</a>
        by enabling the <strong>Maintain only one valid detection per computer</strong> option.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When detections will be performed and their evaluation can be specified in the server settings:<strong>
	Alvao WebApp</strong> - <strong>Message</strong> - <strong>Message</strong>
        Asset Management</strong> - <strong>Servers</strong> - <strong>Edit</strong>- block <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">Scheduling</a>.
    </div>

    <h2 id="HW_det">Hardware detection</h2>

    <p>When a new computer is inserted into the registry, only the Assembly - Computer object pair is created. After the hardware detection is completed, additional objects representing the detected parts of the assembly or computer components appear in the assembly and computer.</p>
    <p>When you redetect the computer hardware later, the default setting removes all computer components and replaces them with the currently detected ones. Objects that are automatically updated in this way according to the hardware detection are marked with a yellow triangle in the tree. Assembly components are not updated. Only new objects are created if, for example, you connect a printer, etc.</p>
    <p>
        For each object in a computer report, you can set whether or not it should be automatically updated. In the object tree, right-click on the object, then in appeared menu click on Edit option. A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/object/general">Object - General</a>, where you can turn on or off the <strong>Automatically update based on detection</strong>.
    </p>
    <div>
        <img src="detection/sample_pc39.png" width="301" height="179" /></div>
    <p>The image shows the default settings that govern the object template settings. All components inside the computer are automatically updated. The components of the assembly do not change.</p>
    <p>
        Objects that do not update automatically must be updated manually. If you right-click on the computer in the tree and select <strong>Hardware - Details</strong> from the menu,
 a window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/hardware">Hardware Detection Detail</a> with a detailed view of the last hardware detection taken, which you can follow.
    </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Because updating is done by removing existing objects and creating new ones, do not write any notes to objects that are automatically updated, create document links, etc. You would lose this information at the next hardware detection. If you want to keep a component, such as a hard disk, as a separate asset with notes and documents, first disable automatic updating for it.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If you have two or more hard drives on your computer and you turn off automatic updating for one of them, the remaining hard drives will not be updated. This is because the system cannot accurately match detected drives to drives in the registry and does not know which to update and which not to update.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Objects in the tree are automatically updated according to the hardware detection performed only if the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Update objects in the tree</a> option is enabled in the detection profile.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        If key identifying components of a computer happen to contain duplicate and meaningless values in the serial number (e.g. multiple motherboards with serial number: 000000), it is possible to add these values to the so-called <a href="detection/blacklist-hw">HW blacklist</a>.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The values of the following properties are automatically updated according to the hardware detection if they are contained in an object of type computer:
        <ul>
            <li>Total hard drive capacity (GB)</li>
            <li>Case type</li>
            <li>Graphic card</li>
            <li>Host computer</li>
            <li>IP addresses</li>
            <li>MAC addresses</li>
            <li>Model</li>
            <li>Last logged in user (username)</li>
            <li>Operating system</li>
            <li>Number of physical CPU cores</li>
            <li>Number of logical CPU cores</li>
            <li>Number of hard disks</li>
            <li>Number of processors</li>
            <li>Description</li>
            <li>Processor</li>
            <li>BIOS serial number</li>
            <li>Part of a domain</li>
            <li>RAM size (GB)</li>
            <li>Manufacturer</li>
        </ul>

    </div>

    <h2 id="SW_det">Software Detection</h2>

    <p>
        If the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Update installation log</a> option is enabled in the detection profile for software detection, the detection result is automatically evaluated against the library of software products and entered into the <a href="../software-management/software-detection#installation-log">installation log</a>, records of product installs or uninstalls are automatically entered so that the recorded status matches the detected status. The logs are created with the detection processing date.
    </p>
    <p>
        When you disable the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Update installation records</a> option,
 You can manually update the installation records by right-clicking on the relevant software detection in the main window on the <strong>Detection</strong> tab and selecting <strong>Software - Compare with installation status</strong> from the menu. The screen will display a <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/compare/compare-install-vs-detection">Installation logging vs. software detection</a>, which displays the entries that need to be created in the installation log. You can select only certain entries in the list and have them created at your discretion.
    </p>
    <p>To properly evaluate software detection, it is therefore advisable to load the current software product library with <strong>Software - Software Product Library - Load Current Library</strong> before submitting a detection request to the database. When you execute this command after the software has been detected, all computers are re-evaluated for the last detections made against the updated library and the installation records are updated if necessary.</p>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the system does not detect some programs and the <strong>Software</strong> tab you see unrecognized records, select the unrecognized records and use the <strong>Send SW to identify...</strong> command from the local menu. A wizard will be displayed where you can enter advanced information for the unrecognized records, and once this wizard is complete, a request will be created and sent by Collector to our specialists. They will add the unrecognized products to the standard library. Once the new library is downloaded, the records will be recognized.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Details of the last computer detection <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">To view the software detection detail</a>, right-click on the computer in the tree and select <strong>from the menu
  Software - Details</strong>.
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

