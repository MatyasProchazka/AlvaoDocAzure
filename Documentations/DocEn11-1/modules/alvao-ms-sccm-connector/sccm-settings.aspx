<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>MS SCCM settings</h1>

    <h2>Hardware Inventory</h2>

    <p>
        Some properties of some classes may affect the pairing of an imported SCCM scan and an existing computer in AM (depending on the settings in ALVAO WebApp - Administration -
Asset Management - Settings - Computer Identification). It is important to at least keep track of these properties in SCCM as well (in the table these classes are marked with an asterisk). However, for completeness of information about the computers in AM, it is recommended to keep track of all the necessary classes and properties, which are listed below.
    </p>

    <p>Set classes and their properties:</p>
    <ol>
        <li>In SCCM, go to <strong>Administration - Client Settings</strong>.</li>
        <li>Select the profile you are using and select <strong>Properties</strong> from the local menu.</li>
        <li>Select the <strong>Hardware Inventory</strong> tab and click <strong>Set Classes...</strong>.</li>
        <li>Select at least the following classes and their properties:
            <table>
                <thead>
                    <tr>
                        <th align="left"><strong>Class Name (WMI class name)</strong><span class="style1"><br />
                            List of properties, ...</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="font-weight: bold">1394 Controller (Win32_1394Controller)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*BaseBoard (Win32_BaseBoard)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer, Product, Version, SerialNumber</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">BitLocker (Win32_EncryptableVolume)</td>
                    </tr>
                    <tr>
                        <td>DeviceID, Drive Letter, Protection Status</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Bus (Win32_Bus)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, DeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">CDROM Drive (Win32_CDROMDrive)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Drive, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Computer System (Win32_ComputerSystem)</td>
                    </tr>
                    <tr>
                        <td>Name, Manufacturer, Domain, Caption, Model, Description, SystemType, WakeUpType, UserName, DomainRole, TotalPhysicalMemory</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Disk Drives (Win32_DiskDrive)</td>
                    </tr>
                    <tr>
                        <td>Caption, Size, InterfaceType, MediaType, Description, Manufacturer, DeviceID, Index</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Disk Partitions (Win32_DiskPartition)</td>
                    </tr>
                    <tr>
                        <td>Caption, Size, Description, DiskIndex</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Floppy Controller (Win32_FloppyController)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">IDE Controller (Win32_IDEController)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Installed Applications - (Win32Reg_AddRemovePrograms)</td>
                    </tr>
                    <tr>
                        <td>Product ID, Display Name, Install Date, Publisher, Version</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Installed Software - Asset Intelligence (SMS_InstalledSoftware)</td>
                    </tr>
                    <tr>
                        <td>PackageCode, ProductName, InstallDate, InstalledLocation, InstallSource, Language, ProductID, ProductVersion, Publisher, UninstallString, VersionMajor, VersionMinor</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Keyboard (Win32_Keyboard)</td>
                    </tr>
                    <tr>
                        <td>Caption, PNPDeviceID, Description, Name</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Logged On User (Win32_LoggedOnUser)</td>
                    </tr>
                    <tr>
                        <td>Antecedent, Depoendent</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Logical Disk (Win32_LogicalDisk)</td>
                    </tr>
                    <tr>
                        <td>Caption, FileSystem, VolumeSerialNumber, Size, FreeSpace, Compressed, Description, DriveType</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Logon Session (Win32_LogonSession)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, LogonId, LogonType, StartTime</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Modem (Win32_POTSModem)</td>
                    </tr>
                    <tr>
                        <td>Caption, PNPDeviceID, Description, Name, DeviceType, AttachedTo</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Network Adapter (Win32_NetworkAdapter)</td>
                    </tr>
                    <tr>
                        <td>Caption, Name, MACAddress, AdapterType, DeviceID, Description, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Network Adapter Configuration (Win32_NetworkAdapterConfiguration)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, IPAddress, IPSubnet, IPEnabled, DNSServerSearchOrder, DHCPEnabled, Index, ServiceName</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Operating System (Win32_OperatingSystem)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, CSDVersion, Version, Organization, RegisteredUser, InstallDate, Manufacturer, SystemDirectory, SerialNumber, OSLanguage</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Parallel Port (Win32_ParallelPort)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*PC BIOS (Win32_BIOS)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer, SMBIOSBIOSVersion, Version, SerialNumber</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">PCMCIA Controller (Win32_PCMCIAController)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Physical Media (Win32_PhysicalMedia)</td>
                    </tr>
                    <tr>
                        <td>Caption, Name, Description, SerialNumber, Tag</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Physical Memory (Win32_PhysicalMemory)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Version, Manufacturer, Capacity, DeviceLocator, SerialNumber, DataWidth, Speed, FormFactor, MemoryType, TypeDetail</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Physical Memory Array (Win32_PhysicalMemoryArray)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, MaxCapacity, MemoryDevices</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*PNP Device Driver (Win32_PnpEntity)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Manufacturer, PNPDeviceID, Service</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Pointing Device (Win32_PointingDevice)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Printer Device (Win32_Printer)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, PortName, PNPDeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Processor (SMS_Processor)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, MaxClockSpeed, ProcessorId, Version, SocketDesignation, Manufacturer, NumberOfLogicalProcessors, NumberOfCores</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">SCSI Controller (Win32_SCSIController)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Serial Ports (Win32_SerialPort)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Sound Devices (Win32_SoundDevice)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">System Enclosure (Win32_SystemEnclosure)</td>
                    </tr>
                    <tr>
                        <td>Caption, ChassisTypes, Description, Name</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Uninterruptible Power Supply (Win32_UninterruptiblePowerSupply)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, UPSPort</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">USB Controller (Win32_USBController)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer, PNPDeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Video Controller (Win32_VideoController)</td>
                    </tr>
                    <tr>
                        <td>Caption, AdapterRAM, VideoModeDescription, CurrentRefreshRate, MaxRefreshRate, Monochrome, Description, PNPDeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Volume (Win32_Volume)</td>
                    </tr>
                    <tr>
                        <td>DeviceID, Capacity, Caption, Compressed, Description, DriveLetter, DriveType, FileSystem, FreeSpace, Name, SerialNumber</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*WmiMonitorId (WmiMonitorId)</td>
                    </tr>
                    <tr>
                        <td>Active, UserFriendlyNameLength, UserFriendlyName, ManufacturerName, InstanceName, SerialNumberID<br />
                            Note: The class is located in the namespace &quot;root\wmi&quot;</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*WmiMonitorBasicDisplayParams (WmiMonitorBasicDisplayParams)</td>
                    </tr>
                    <tr>
                        <td>Active, InstanceName, MaxHorizontalImageSize, MaxVerticalImageSize<br />
                            Note: The class is located in the namespace &quot;root\wmi&quot;</td>
                    </tr>


                </tbody>
            </table>
        </li>
    </ol>

    <p>If one of the listed classes does not appear in the list, you probably do not have it added in the <strong>Default Client Settings</strong> profile. To add a new class to the list, use the following procedure:</p>
    <ol>
        <li>In <strong>Client Settings</strong>, select the <strong>Default Client Settings</strong> profile and again go to <strong>Properties</strong>- <strong>Hardware Inventory</strong> - <strong>Set Classes...</strong>.</li>
        <li>Select <strong>Add...</strong> followed by <strong>Connect...</strong></li>
        <li>Enter the <strong>computer name</strong> and <strong>WMI namespace</strong> where you want to search for the classes.<div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            All of the above classes can be found in the namespace "root\cimv2" unless otherwise noted for the class.
        </div>
        </li>
        <li>Turn on the <strong>Recursive</strong> option and select <strong>Connect</strong>.</li>
        <li>After a moment, a list of classes found in the namespace will be displayed, where you can search for the desired class, turn it on, and select <strong>OK</strong>.</li>
        <li>Now you can edit the profile you are using and turn on the added class and its properties.</li>
    </ol>

    <h2>Software Inventory</h2>

    <p>To keep track of software on SCCM computers, you need to set up exe file tracking on users' disks.</p>

    <p>
        Make this setting in:<ol>
            <li>In SCCM, go to <strong>Administration - Client Settings</strong>.</li>
            <li>Select the settings in use and select <strong>Properties</strong> from the local menu.</li>
            <li>Select the <strong>Software Inventory</strong> tab and click <strong>Set Types</strong>.</li>
            <li>If you don't already have <strong>*.exe</strong> in the list, add it. Select the location to be searched, and whether to search subfolders as well. Optionally, you can set to monitor compressed files, and files in the <strong>Windows</strong> folder.</li>
        </ol>
    </p>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 {
            font-size: x-small;
        }

        .style2 {
            font-family: "Courier New", Courier, monospace;
        }
    </style>

</asp:Content>
