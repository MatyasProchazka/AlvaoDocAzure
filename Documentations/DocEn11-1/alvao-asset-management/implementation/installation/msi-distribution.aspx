<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Distributing msi package via SCCM</h1>

    <h2>Summary</h2>

    <p>This guide is for creating a rule to distribute <em>.msi</em> package via SCCM and then convert it to the desired .<em>mst</em> format.</p>

    <h2>Designed for products</h2>

    <ul>
        <li>ALVAO Outlook Addin</li>
        <li>Asset Management Agent</li>
    </ul>

    <h2>Starting Conditions</h2>

    <p>
        - Microsoft Software Center Configuration Manager<br />
        - to transform <em>.msi</em> package to <em>.mst</em> you need to have Orca software installed
    </p>


    <h2>Progress</h2>

    <ol>
        <li>Connect to the <strong>server</strong> on which you have <strong>SCCM</strong> installed.</li>
        <li>Start <strong>Microsoft Endpoint Configuration Manager</strong>.</li>
        <li>Software Library - Application Management - Applications - Create Application.</li>
        <li>Use the <strong>Browse</strong> button to select the installation file (<em>*.msi</em>) you want to specify for deployment and continue with the wizard. 
            <div class="wide">
                <img src="app_wizard.png" alt="Create Application Wizard" /></div>
        </li>
        <li>On the <strong>General Information</strong> tab, in the <strong>Installation program</strong> field, enter the following string:
            <br />

            <ul>
                <li>For <strong>OA</strong>: <span class="console">&nbsp;msiexec /i "AlvaoOutlookAddIn.msi" /qn TRANSFORMS="AlvaoOutlookAddIn.mst"</span></li>
                <li>For <strong>AM Agent</strong>: <span class="console">&nbsp;msiexec /i "AlvaoAssetAgent.msi" /qn TRANSFORMS="AlvaoAssetAgent.mst"</span>
                </li>


            </ul>
            <br />
            Set <strong>Install behavior</strong> to <strong>Install for user</strong>.
        </li>

    </ol>
    <h3>Deploy applications</h3>

    <ol>
        <li>Right click on the created application - <strong>Deploy</strong>.</li>
        <li>Select the collection to which you want to apply the deploy.</li>
        <li>On the <strong>Content</strong> tab, select <strong>Distribution point</strong>.</li>
        <li>Set the <strong>Deployment Settings</strong>-<strong>Purpose</strong> tab to <strong>Required</strong>.</li>
        <li>On the <strong>User Experience</strong> tab, select <strong>Software Installation</strong>.</li>

    </ol>

    <h3>How to transform .msi package to .mst package for Asset Management Agent, Outlook Addin</h3>
    <p>If you are distributing ALVAO Asset Management Agent or ALVAO Outlook Addin on a client device, you need to modify the installation msi packages using <strong>Orca</strong> software and create a <em>*.mst package</em>. If you do not modify the installation files, the AM Agent and Outlook Addin will not work properly. If necessary, each user must then set up the applications manually.</p>
    <ol>
        <li>Select the installation package to which you want to create the transformation.</li>
        <li>From the local menu, use the <strong>Edit with Orca</strong> command.</li>
        <li>Use the <strong>Transform - New Transform</strong> command from the main menu.</li>
        <li>Select <strong>Property</strong> in the table view on the left side.</li>
        <li>Use the <strong>Add Row</strong> local menu command in the property overview, or use the Ctrl+R keyboard shortcut.<ul>
            <li>For <strong>OA</strong> see <a href="../../../modules/alvao-outlook-addin/installation">ALVAO Outlook Add-in - Installation</a>. </li>
            <li>For <strong>AM Agent</strong> - specify <strong>APIUrl</strong> as the property name (<em>Property</em>) and set the property value (<em>Value</em>) to the current <em>REST API</em> address. (for example, <span class="console">http://localhost/restapi/restapi.asmx</span>).
                <br />
                Then insert another line (Ctrl+R) and insert the name of the property (<em>Property</em>) <strong>AUTH_CODE</strong> and add the value of the property (<em>Value</em>) with the appropriate code.

            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                Caution: it is required that the property name be capitalized. 
            </div></li>
        </ul>
        </li>

        <li>Use the command from the main menu <strong>Transform - Generate Transform</strong>.</li>
        <li>A dialog will appear to save the file.</li>
        <li>Select the directory where the source installation package is located.</li>
        <li>Switch the file filter to <strong>All files (*.*)</strong>.</li>
        <li>Select the installation package.</li>
        <li>Switch the filter back to <strong>Windows installer transform (*.mst)</strong>.</li>
        <li>Press the <strong>Save</strong> button.</li>
        <li>Close the Orca editor window.</li>

    </ol>

</asp:Content>
