<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Blacklist HW</h1>
    <div>
        If it happens that nonsensical values are detected during the HW detection, it is possible to remove them during the detection processing. The table in the <strong>tblWbemObjectProcess</strong> database is used for this purpose. The table already contains some system values by default.<h2>Description of the table</h2>
        Table columns:<ul>
            <li><strong>txtCASS</strong> - the abbreviated part of the WMI class name of the detected object - usual values:<ul>
                <li><strong>DesktopMonitor</strong> - monitor</li>
                <li><strong>BaseBoard</strong> - motherboard</li>
                <li><strong>PhysicalMedia</strong> - hard disk drive (HDD serial number)</li>
                <li><strong>NetworkAdapter</strong> - network card</li>
            </ul>

                <li><strong>txtPropName</strong> - Name of the property in WMI - e.g. SerialNumber, Caption, etc.</li>
                <li><strong>txtPropValue</strong> - A nonsense value that is detected, e.g. 000000, etc.</li>
                <li><strong>bolSetObjectAsVirtual</strong> - If the value here is True, the object will be marked as "virtual" - the corresponding object will not be created in the object tree after detection, but will be visible in the HW detection details. It is useful e.g. for marking virtual CDROMs etc.</li>
                <li><strong>bolClearObjectProp</strong> - if the value here is True, the detected (nonsense) value will be replaced with an empty value during processing.</li>
        </ul>

        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            <p>In the <strong>bolSetObjectAsVirtual</strong> and <strong>bolClearObjectProp</strong> columns, only one value must always be <strong>True</strong> and the other must always be <strong>False</strong>.</p>
        </div>


        <h2>Supervisor: we bought a PC where the serial number of the motherboard has the same value</h2>
        The value in the motherboard serial number is the same for all computers: 00000000. After detection, a HW collision is reported (the detected components are in another PC).
        <h3>Procedure to fix the problem</h3>
        <ol>
            <li>Modify the <strong>tblWbemObjectProcess</strong> table, e.g. using Microsoft SQL Server Management Studio.</li>
            <li>Insert a new row where:</li>
            <ul>
                <li><strong>txtCLASS</strong> - insert value: BaseBoard</li>
                <li><strong>txtPropName</strong> - insert value: SerialNumber</li>
                <li><strong>txtPropValue</strong> - insert value: 00000000</li>
                <li><strong>bolSetObjectAsVirtual</strong> - insert value: False</li>
                <li><strong>bolClearObjectProp</strong> - insert value: True</li>
            </ul>
            <li>Save the change in the table.</li>
            <li>Re-evaluate all HW detections of computers that had a collision during detection due to the same motherboard serial number (00000000).</li>
        </ol>

    </div>

</asp:Content>
