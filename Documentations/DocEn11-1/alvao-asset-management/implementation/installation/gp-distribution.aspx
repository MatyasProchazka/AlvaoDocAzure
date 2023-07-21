<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Distributing msi package via Group Policy</h1>

    <h2>Summary</h2>

    <p>Use this guide to create a rule in Group Policy that installs the selected .msi package on a computer/group of computers.</p>

    <h2>Designed for products</h2>

    <ul>
        <li>ALVAO Asset Management</li>
        <li>ALVAO Service Desk</li>
    </ul>

    <h2>Starting Conditions</h2>

    <p>
        &nbsp;&nbsp;&nbsp;- Active Directory must be used on the network<br />
        &nbsp;&nbsp;&nbsp;- Windows Server 2000 and later<br />
        &nbsp;&nbsp;&nbsp;- Client stations must be running Windows 2000 and later<br />
        &nbsp;&nbsp;&nbsp;- save the installation packages to \&lt;server name&gt;\netlogon. Here, create a folder for these msi packages.
    </p>

    <h2>Progress</h2>
    <p>Create a rule to install the ALVAO Asset Management Agent service.</p>
    <ol>
        <li>Connect to the server.</li>
        <li>Start&nbsp;Group Policy Management.</li>
        <li>Create a new object (Group Policy Object), name it "ALVAO Asset Management Agent".</li>
        <li>Right click on the object created and select Edit.</li>
        <li>Select Computer Configuration - Policies - Software Settings -
  Software installation.</li>
        <li>Right-click and select New - Package
  Package).</li>
        <li>Select the AlvaoAssetAgent.msi package and confirm the selection.</li>
        <li>Select Assigned and confirm.  </li>
        <li>The package is now created.  </li>
        <li>To add multiple msi packages in&nbsp;one GPO, repeat steps 6 through 9.</li>
        <li>Close the Group Policy Management Editor.</li>
        <li>Select the computers/group to which this GPO will apply.  </li>
        <li>Finished.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The AM Agent then updates itself automatically according to the installed version of the ALVAO Server.
    </div>


</asp:Content>
