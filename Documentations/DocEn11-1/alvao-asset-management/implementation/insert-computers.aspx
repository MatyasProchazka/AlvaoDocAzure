<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Enrolment of computers</h1>
    <p>The following chapters describe the different ways of entering computers into the register.</p>

    <h2>Finding computers on the network</h2>
    <p>First, we let the system search for computers on the network and create objects representing computer assemblies in bulk.</p>
    <ol>
        <li>In the object tree, right-click on the root Organization object, or another Organization object into which you want to insert computers. Select the <strong>New Computer</strong> command from the menu.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computer">New Computer</a>, in which select <strong>Search for new computers on the network</strong> and press the <strong>Next</strong>.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computers">New computers</a>. Select the method that will be used to search for new computers on the network and press the <strong>Next</strong> button.
  <li>The program will search for computers and add them to the tree, which may take a few minutes. Before that, a <a href="../../list-of-windows/alvao-asset-management-console/date-time">window will appear
  Date and Time</a>, where you can enter the actual date the computers were put into service if you are entering them after the fact.<br />
      Note: The date and time query can be disabled. In this case, it will no longer appear when a new computer is added.</li>
            <li>Use the <strong>Cancel</strong> button to reject the query whether to detect the software and hardware data of the found computers. We will perform the detection later. You can also perform the detection immediately. In this case, the data will be detected according to <a href="detection#detection-options">global detection settings</a>.</li>
            <li>Move the created computer reports in the tree under the appropriate users.</li>
    </ol>

    <p>Each found computer is represented in the tree by a pair of objects Assembly (i.e. computer assembly) and Computer. For example, the ARTUR computer in the tree looks like this:</p>
    <img src="artur.jpg" />
    <p>The top object represents the computer assembly, and the bottom object represents the computer itself. The computer is part of the assembly. The assembly may also contain a monitor, printer, keyboard, mouse, etc. The Assembly object serves only as a folder that groups individual devices that are linked together. Since it is not a real object, it should not have any properties.</p>
    <p>Unless the computer hardware is detected, only these two basic objects will be visible in the tree. After the detection is done, other detected components of the assembly (monitor, printers, ...) and also computer components (processor, memory, hard drives, graphics card, ...) will appear.</p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Later, if you have the network computers searched in the same way, only new computers will be added to the tree. 
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The Collector service also includes a feature to automatically find computers on the network. To set up a network scan, use the <strong>WebApp - Administration - Asset Management - Servers</strong>, the feature is in the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/detail/scan-network">Network Scan</a> block.
    </div>
    <h2>Insert one computer</h2>
    <p>If you want to add only one specific computer to the inventory for which hardware and software can be detected, do the following:</p>
    <ol>
        <li>In the object tree, select the user under which you want to create the new computer, and from the local menu, select the <strong>New Computer</strong>.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computer">New Computer</a>, in which you select the <strong>Create Computer Manually</strong> option. Select the computer object kind and enter a name on the network for the new computer. Also select the <strong>Detect computer information over the network using saved settings</strong>.
  Finally, press <strong>Next</strong> .<br />
            Note: If the number series for the selected computer type is active, the network name cannot be manually entered, but will be generated automatically.</li>
        <li>The program adds the computer to the object tree. Before that, the window will appear<a href="../../list-of-windows/alvao-asset-management-console/date-time">
  Date and Time</a>, where you can enter the actual date the computer was put into service if you are adding it to the registry after the fact.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If the computer is not connected to the network, you can detect the hardware and software manually with Agent.exe and load the resulting files into the AM Console. In this case, on the computer in the tree, select <strong>Detection Settings...</strong> from the local menu, select <strong>Custom Detection Settings</strong> in the window, and on the <strong>Detection Method</strong> tab, select <em>Detection Method</strong>.
 manually</em>.
    </div>

    <h2>Automatic Computer Creation with Autonomous Agent</h2>
    <p>If you are using standalone agents to discover computers and you want new computers with the agent installed to be automatically added to the inventory, do the following:</p>
    <ul>
        <li>On the new computer, <a href="detection/agent">install and set up</a> the autonomous agent.</li>
        <li>In the <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Detection</a> settings, turn on the <strong>Automatically create new computers with Autonomous Agent</strong> option in the registry.</li>
        <li>The next time you contact WebService, the computer will automatically be added to the "Found Computers on Network" folder in the registry.</li>
        <li>If you want to automatically detect hw and sw of new computers, in the default <a href="detection">detection profile</a>
            set the automatic detection scheduling period and set the detection method to <em>Automatically</em> or <em>Autonomous Agent</em>.</li>
    </ul>

    <h2>Creating computers that cannot be detected</h2>
    <p>The system can only detect hardware and software on computers running Windows 95 and later. Computers with other operating systems ( e.g. Apple OSX, Linux, ...) can be entered into the registry as follows:</p>
    <ol>
        <li>In the object tree, select the user under which you want to create the new computer and select <strong>from the local menu.
  New Computer</strong>.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computer">New Computer</a>, in which you select the <strong>Create Computer Manually</strong> option. Select the computer object kind and enter a name on the network for the new computer. Do not select the <strong>Detect computer information over the network using saved settings</strong>.
  Finally, press <strong>Next</strong> .<br />
            Note: If the number series for the selected computer type is active, the network name cannot be manually entered, but will be generated automatically.</li>
        <li>The program adds the report to the object tree. Before that, the window will appear<a href="../../list-of-windows/alvao-asset-management-console/date-time">
  Date and Time</a>, where you can enter the actual date the computer was put into service if you are adding it to the log after the fact.</li>
        <li>Select the newly created computer in the object tree and use the <strong>Detection Settings...</strong> command from the local menu, selecting the <strong>Custom Detection Settings</strong> option in the window.
  and on the <strong>Detection Method</strong> tab, select <strong>Detection Settings</strong> manually.</li>
        <li>Create any computer components - use the <strong>New Object... command from the local menu in the object tree. </strong>and insert additional computer components. Finally, go through all the computer components and the computer and enter the values of the properties you want to record.</li>
        <li>If you want to register the software for the computer as well, go to the <strong>Software</strong> and use the <strong>Installation - Log installation...</strong> command to create a record of the software installed.</li>
    </ol>

    <h2>Virtual machine visibility</h2>

    <p class="MsoNormal">Virtual computers are recommended to be registered as objects of type <em>Computer/virtual</em>.</p>
    <p>The computer has a "Host Computer" property that lists the name of the physical computer that was last detected as the host of the virtual machine during hardware discovery. The value is informative. Physical computers have no value in this property. This property is automatically detected and cannot be manually changed.</p>
    <p>Using the "Host Computer" property:</p>
    <ol>
        <li>Information on which FPC the newly detected VPC is running. Accordingly, the VPC will be manually moved to the appropriate location in the tree.</li>
        <li>Check if the VPC is correctly registered.</li>
    </ol>
    <h3>First detection of virtual machines</h3>
    After the first detection of computers, we recommend to check if any computers have been detected as virtual and if so, change their object kind to <em>Computer/Virtual</em>. Do the following.
    <ol>
        <li><strong>Objects</strong> tab - set the filter to display virtual computers: Type = computer, Model = virtual.</li>
        <li>Select all computers that are patched virtual, select <strong>Edit</strong> from the local menu and change the object kind to <em>Modify</strong>.
Computer/Virtual</em>.</li>

    </ol>


    <h3>Virtual computers on one physical computer</h3>
    <img src="fpc1.png" />
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The virtual machine is placed in the tree in the assembly of the physical machine on which it was installed. The "Host computer" property shows the detected host computer, which should be the same as the parent physical computer. 
    </div>

    <h3>Virtual computers running in a physical computer farm</h3>
    <p>Example of a farm where VPCs can potentially move automatically between FPCs according to the current load:</p>

    <img src="farm1.png" />


    <h3>Evidence of server farms without VMs</h3>

    <img src="farm2.png" />


    <h3>Virtual machine visibility in the cloud</h3>

    <img src="cloud.png" />

</asp:Content>
