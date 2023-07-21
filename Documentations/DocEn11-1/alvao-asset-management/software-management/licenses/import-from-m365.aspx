<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Import license assignments from Microsoft 365</h1>
    <p>
        Alvao supports the periodic import of license assignments from Microsoft 365 (M365). 
        The import is done using a PowerShell script that generates a CSV file which is then imported into Alvao using the <a href="../import-lic">ImportLic</a> utility.
    </p>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        License import matches licenses from M365 to existing software licenses in Alvao based on a unique license ID.
    </div>

    <h2>Configuration</h2>
    <ol>
        <li>Create a new (or use an existing) application in MS Azure Active Directory.</li>
        <li>The application must have the following permissions on Graph API:
            <ul>
                <li><i>User.Read.All</i></li>
                <li><i>Organization.Read.All</i></li>
            </ul>
        </li>
        <li>Edit PowerShell script <i>Export_M365_licences_to_CSV.ps1</i> (located in the AM Console installation folder) and enter your Azure AD identifiers into the variables at the beginning of the script:
            <ul>
                <li><i>$tenantId</i></li>
                <li><i>$clientId</i></li>
                <li><i>$clientSecret</i></li>
            </ul>
        </li>
        <li>Optionally, change the path and name of the generated output CSV file (<i>$csvOutput</i> variable).</li>
    </ol>

    <h2>Initial import</h2>
    <ol>
        <li>In AM Console – License registry, first create the licenses whose assignment you want to periodically import from M365. For example, 
            <i>Microsoft Office 365 Enterprise E3</i>. The <i>License model</i> field should be per user.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                It is not important to fill in the exact number of licenses and license items as they will be imported from M365 later.
            </div>
        </li>
        <li>
            Run the PowerShell script <i>Export_M365_licences_to_CSV.ps1</i> manually and wait for the CSV file to be created.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                The PS script uses the <i>Microsoft.Graph</i> module, which installs itself if necessary. If necessary, 
                onfirm the prompt to install this module and its dependencies.
            </div>
        </li>
        <li>
            Open the generated CSV file (e.g. in <i>Notepad</i>) and map all unique M365 license identifiers (<i>Uid</i> column in the CSV) to existing licenses in Alvao. 
            Enter these UIDs into the <i>License ID in the external system</i> field of the appropriate licenses.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                A map of Microsoft product names and their UIDs exists in the Microsoft 
                <a href="https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/licensing-service-plan-reference">documentation</a>.
            </div>
        </li>
        <li>
            Run the <a href="../import-lic">ImportLic</a> utility in UpdateItems mode. The licenses in Alvao that you have mapped using the UID to licenses from M365 will be automatically updated:
            <ul>
                <li><i>Count</i> field</li>
                <li>All license items</li>
            </ul>
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                If necessary, the <a href="../import-lic">ImportLic</a> utility will create new users in the Imported objects folder.
            </div>
        </li>
    </ol>

    <h2>Setting up a periodic import</h2>

    <ol>
        <li>Once the licenses in Alvao are paired with M365 licenses through the UID, you may repeatably run the PS script and the 
            <a href="../import-lic">ImportLic</a> to update the license assignment in Alvao. We recommend scheduling a task on a server to do this automatically.</li>
    </ol>

</asp:Content>
