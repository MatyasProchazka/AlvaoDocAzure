<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nastavení Správce konfigurace</h1>

    <h2>Inventář hardware</h2>

    <p>
        Některé vlastnosti některých tříd mohou ovlivnit spárování importovaného skenu SCCM a existujícího počítače v AM (v závislosti na nastavení v ALVAO WebApp - Administration - Asset Management - Settings - Computer Identification). Je důležité tyto vlastnosti alespoň sledovat i v SCCM (v tabulce jsou tyto třídy označeny hvězdičkou). Pro úplnost informací o počítačích v AM však doporučujeme sledovat všechny potřebné třídy a vlastnosti, které jsou uvedeny níže    </p>

    <p>Nastavení tříd a jejich vlastností:</p>
    <ol>
        <li>V systému SCCM přejděte do nabídky <strong>Správa - Nastavení klienta</strong>.</li>
        <li>Vyberte používaný profil a v místní nabídce vyberte položku <strong>Vlastnosti</strong>.</li>
        <li>Vyberte kartu <strong>Hardware Inventory</strong> a klikněte na tlačítko <strong>Set Classes....</strong>.</li>
        <li>Vyberte alespoň následující třídy a jejich vlastnosti          <table>
                <thead>
                    <tr>
                        <th align="left"><strong>Název třídy (název třídy WMI</strong>)<span class="style1"><br />Seznam vlastností</span>, ...</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="font-weight: bold">1394 Controller (Win32_1394Controller)</td>
                    </tr>
                    <tr>
                        <td>Nadpis, Popis, Název, Výrobce</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*BaseBoard (Win32_BaseBoard)</td>
                    </tr>
                    <tr>
                        <td>Caption (Titulek), Description (Popis), Name (Název), Manufacturer (Výrobce), Product (Produkt), Version (Verze), SerialNumber (Sériové číslo)</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">BitLocker (Win32_EncryptableVolume)</td>
                    </tr>
                    <tr>
                        <td>DeviceID, Drive Letter, Protection Status</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Sběrnice (Win32_Bus)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, DeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Jednotka CDROM (Win32_CDROMDrive)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Drive, Manufacturer (popis, název, jednotka, výrobce)</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Počítačový systém (Win32_ComputerSystem)</td>
                    </tr>
                    <tr>
                        <td>Name, Manufacturer, Domain, Caption, Model, Description, SystemType, WakeUpType, UserName, DomainRole, TotalPhysicalMemory</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Diskové jednotky (Win32_DiskDrive)</td>
                    </tr>
                    <tr>
                        <td>Caption, Size, InterfaceType, MediaType, Description, Manufacturer, DeviceID, Index</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Diskové oddíly (Win32_DiskPartition)</td>
                    </tr>
                    <tr>
                        <td>Caption, Size, Description, DiskIndex</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Disketový řadič (Win32_FloppyController)</td>
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
                        <td style="font-weight: bold">Nainstalované aplikace - (Win32Reg_AddRemovePrograms)</td>
                    </tr>
                    <tr>
                        <td>ID produktu, Zobrazovaný název, Datum instalace, Vydavatel, Verze</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Nainstalovaný software - Asset Intelligence (SMS_InstalledSoftware)</td>
                    </tr>
                    <tr>
                        <td>PackageCode, ProductName, InstallDate, InstalledLocation, InstallSource, Language, ProductID, ProductVersion, Publisher, UninstallString, VersionMajor, VersionMinor</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Klávesnice (Win32_Keyboard)</td>
                    </tr>
                    <tr>
                        <td>Caption, PNPDeviceID, Description, Name</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Přihlášený uživatel (Win32_LoggedOnUser)</td>
                    </tr>
                    <tr>
                        <td>Antecedent, Depoendent</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Logický disk (Win32_LogicalDisk)</td>
                    </tr>
                    <tr>
                        <td>Caption, FileSystem, VolumeSerialNumber, Size, FreeSpace, Compressed, Description, DriveType</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Přihlašovací relace (Win32_LogonSession)</td>
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
                        <td style="font-weight: bold">*Síťový adaptér (Win32_NetworkAdapter)</td>
                    </tr>
                    <tr>
                        <td>Caption, Name, MACAddress, AdapterType, DeviceID, Description, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Konfigurace síťového adaptéru (Win32_NetworkAdapterConfiguration)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, IPAddress, IPSubnet, IPEnabled, DNSServerSearchOrder, DHCPEnabled, Index, ServiceName</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Operační systém (Win32_OperatingSystem)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, CSDVersion, Version, Organization, RegisteredUser, InstallDate, Manufacturer, SystemDirectory, SerialNumber, OSLanguage</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Paralelní port (Win32_ParallelPort)</td>
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
                        <td style="font-weight: bold">*Fyzické médium (Win32_PhysicalMedia)</td>
                    </tr>
                    <tr>
                        <td>Caption, Name, Description, SerialNumber, Tag</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Fyzická paměť (Win32_PhysicalMemory)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Version, Manufacturer, Capacity, DeviceLocator, SerialNumber, DataWidth, Speed, FormFactor, MemoryType, TypeDetail</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Pole fyzické paměti (Win32_PhysicalMemoryArray)</td>
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
                        <td style="font-weight: bold">Ukazovací zařízení (Win32_PointingDevice)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Zařízení tiskárny (Win32_Printer)</td>
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
                        <td style="font-weight: bold">Sériové porty (Win32_SerialPort)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Zvuková zařízení (Win32_SoundDevice)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Systémová skříň (Win32_SystemEnclosure)</td>
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
                        <td style="font-weight: bold">Řadič USB (Win32_USBController)</td>
                    </tr>
                    <tr>
                        <td>Caption, Description, Name, Manufacturer, PNPDeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*Řadič videa (Win32_VideoController)</td>
                    </tr>
                    <tr>
                        <td>Caption, AdapterRAM, VideoModeDescription, CurrentRefreshRate, MaxRefreshRate, Monochrome, Description, PNPDeviceID</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">Hlasitost (Win32_Volume)</td>
                    </tr>
                    <tr>
                        <td>DeviceID, Capacity, Caption, Compressed, Description, DriveLetter, DriveType, FileSystem, FreeSpace, Name, SerialNumber</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*WmiMonitorId (WmiMonitorId)</td>
                    </tr>
                    <tr>
                        <td>Active, UserFriendlyNameLength, UserFriendlyName, ManufacturerName, InstanceName, SerialNumberID<br />
                            Poznámka: Třída je umístěna v oboru názvů &quot;root\wmi&quot;.</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold">*WmiMonitorBasicDisplayParams (WmiMonitorBasicDisplayParams)</td>
                    </tr>
                    <tr>
                        <td>Active, InstanceName, MaxHorizontalImageSize, MaxVerticalImageSize<br />
                            Poznámka: Třída je umístěna ve jmenném prostoru &quot;root\wmi&quot;.</td>
                    </tr>


                </tbody>
            </table>
        </li>
    </ol>

    <p>Pokud se některá z uvedených tříd v seznamu neobjeví, pravděpodobně ji nemáte přidanou v profilu <strong>Default Client Settings</strong>. Chcete-li do seznamu přidat novou třídu, použijte následující postup:</p>
    <ol>
        <li>V <strong>Nastavení klienta</strong> vyberte profil <strong>Výchozí nastavení klienta</strong> a opět přejděte do <strong>Vlastnosti-</strong> <strong>Soupis hardware</strong> - <strong>Nastavit třídy....</strong>.</li>
        <li>Vyberte možnost <strong>Přidat..</strong>. a poté <strong>Připojit.</strong>..</li>
        <li>Zadejte <strong>název počítače</strong> a <strong>jmenný prostor WMI,</strong> ve kterém chcete vyhledávat třídy.<div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Všechny výše uvedené třídy lze nalézt v oboru názvů "root\cimv2", pokud není u třídy uvedeno jinak     </div>
        </li>
        <li>Zapněte možnost <strong>Rekurzivní</strong> a vyberte možnost <strong>Připojit</strong>.</li>
        <li>Po chvíli se zobrazí seznam tříd nalezených ve jmenném prostoru, kde můžete vyhledat požadovanou třídu, zapnout ji a vybrat <strong>OK</strong>.</li>
        <li>Nyní můžete upravit používaný profil a zapnout přidanou třídu a její vlastnosti.</li>
    </ol>

    <h2>Soupis softwaru</h2>

    <p>Chcete-li sledovat software v počítačích SCCM, je třeba nastavit sledování souborů exe na discích uživatelů.</p>

    <p>
        Toto nastavení proveďte v části:<ol>
            <li>V systému SCCM přejděte do nabídky <strong>Správa - Nastavení klienta</strong>.</li>
            <li>Vyberte používané nastavení a v místní nabídce vyberte položku <strong>Vlastnosti</strong>.</li>
            <li>Vyberte kartu <strong>Soupis softwaru</strong> a klikněte na tlačítko <strong>Nastavit typy</strong>.</li>
            <li>Pokud v seznamu ještě nemáte <strong>*.exe</strong>, přidejte jej. Vyberte umístění, které se má prohledávat, a zda se mají prohledávat i podsložky. Volitelně můžete nastavit sledování komprimovaných souborů a souborů ve složce <strong>Windows</strong>.</li>
        </ol>
    </p>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 { font-size: x-small; } .style2 { font-family: "Courier New", Courier, monospace; } </style>

</asp:Content>
