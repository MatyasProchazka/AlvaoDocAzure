<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Installation</h1>
    <h2>Technical requirements</h2>
    <ul>
        <li>ALVAO Service Desk</li>
        <li>Microsoft Outlook</li>
        <li>Microsoft .NET Framework 4.8</li>
        <li>Microsoft Edge WebView2 Runtime</li>
    </ul>

    <p>
        Unless otherwise noted, these are versions of products with valid extended support within the <a href="https://docs.microsoft.com/en-us/lifecycle/products/">Microsoft product lifecycle</a>
        at the time the Alvao version was released.
    </p>

    <h2>Activation</h2>
    <p>The module must be activated with an activation key, which you can obtain from your Alvao system supplier.</p>
    <ol>
        <li>Navigate to <strong>Administration - License</strong> - <a href="../../list-of-windows/alvao-webapp/administration/licenses/activation">Insert activation key</a>.</li>
        <li>Enter the activation key.</li>
    </ol>
    <h2>Installation on one computer</h2>
    <ol>
        <li>On your computer, run the installation package <strong>AlvaoOutlookAddIn.msi</strong> and follow the instructions in the wizard. </li>
        <li>Start or restart MS Outlook. </li>
        <li>In <strong>MS Outlook - File</strong> -
 <a href="../../list-of-windows/alvao-outlook-addin/options">ALVAO Add-in settings</a> enter the <strong>Alvao domain name</strong> and choose an authentication method.</li>
    </ol>

    <h2>Bulk installation on computers</h2>
    <p>
        The add-on can be installed in bulk on multiple computers using Active Directory -
  Group Policy or another that allows you to distribute MSI installation packages in bulk. The package must be distributed per user, not per computer.
    </p>
    <h3>Transforming an installation package</h3>
    <p>In order to avoid having to manually set the path to the Alvao REST API on each computer after installing the package, we recommend following the following procedure to first create an installation package transformation and apply it to the original installation package when distributing it.</p>
    <ol>
        <li>Install <strong>Orca</strong>, which is part of e.g. the Windows SDK (C:\Program Files (x86)\Microsoft SDKs\Windows\v7.0A\bin\Orca.Msi),
 or you can also find it separately on the Internet.</li>
        <li>In <strong>Orca</strong>, open the original add-on installation package.</li>
        <li>From the main menu, use the <strong>Transform - New Transform</strong> command.</li>
        <li>In the table view on the left side, select <strong>Property</strong>.</li>
        <li>In the property overview, use the local menu command <strong>Add Row</strong>, or use the keyboard shortcut <span class="key">Ctrl+R</span>.</li>
        <li>In the Property name, type the name of the property you want to set (e.g. APIURL), see the following table.</li>
        <li>Enter a value for the Value property.</li>
        <li>From the main menu, use the <strong>Transform - Generate Transform</strong> command.</li>
        <li>Save the file under the name &quot;AlvaoOutlookAddIn.mst&quot;.</li>
    </ol>
    <h3>Bulk installation on computers</h3>

    <table>
        <thead>
            <tr>
                <th>Property name</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>UseAadAuth</td>
                <td>Use Azure Active Directory authentication to access the REST API.
                    <p>Possible values: 1 - use, 0 - do not use.</p>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        The use of this property is mutually exclusive with the use of the <em>UseIntegratedAuth</em> property.
                    </div>
                </td>
            </tr>
            <tr>
                <td>UseIntegratedAuth</td>
                <td>Use integrated Windows authentication to access REST API.
                    <p>Values available: 1 - use, 0 - do not use.</p>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        The use of this property is mutually exclusive with the use of the <em>UseAadAuth</em> property.
                    </div>
                </td>
            </tr>
            <tr>
                <td>AutoHideTaskPane</td>
                <td>Show and hide the taskbar automatically.
                    <p>Possible values: 1 - on, 0 - off.</p>
                </td>
            </tr>
            <tr>
                <td>APIURL</td>
                <td>Path to REST API. E.g., &quot;https://contoso.onalvao.com/AlvaoRestApi&quot;.</td>
            </tr>


        </tbody>
    </table>

</asp:Content>
