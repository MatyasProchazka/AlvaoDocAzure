<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Azure DevOps Connector</h1>

    <p>This module connects ALVAO Service Desk and Azure DevOps. 
        For example, a user submits a request to ALVAO Service Desk to modify the ERP system. 
        After the request is approved and a detailed specification of the modification is developed, or immediately after the request is created, 
        a work item is automatically created in Azure DevOps to implement the modification. 
        After the modification is executed and the work item in Azure DevOps goes to defined status, 
        the original request in Alvao goes to a defined status, e.g. "Synchronization to DevOps".</p>

    <h2>Technical requirements</h2>
    <ul>
        <li translate="no">Azure DevOps</li>
        <li translate="no">ALVAO Service Desk</li>
        <li><span translate="no">ALVAO Service Desk Custom Apps</span> module</li>
        <li><span translate="no">ALVAO Service Desk Enterprise API</span> module</li>
    </ul>

    <h2>Module activation</h2>
    <p>The module must be activated with an activation key, which you can obtain from your Alvao system supplier. In <b>WebApp - Administration -</b> <a href="../list-of-windows/alvao-webapp/administration/licenses">License</a>, select <b>Insert Activation Key</b> and enter the activation key.  </p>

    <h2>Installation</h2>
    <ol>
        <li>In the <b>WebApp - Administration - Service Desk -</b> <a href="../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a> tree, select the folder where you want to import the sample service to connect to Azure DevOps, and use the <b>Import</b> command to load the <b>AzureDevOpsConnectorService</b>&lt;Enu/Csy&gt;<b>.xml</b> file, which is included in the <b>AlvaoAzureDevOpsConnector.zip</b> installation package.
        </li>
        <li>In <b>WebApp - Administration -</b> <a href="../list-of-windows/alvao-webapp/administration/applications">Applications</a>, use the <b>Import</b> command to load the <b>AzureDevOpsConnectorApp.xml</b> file.
        </li>
    </ol>

    <h2>Azure DevOps Personal Access Token</h2>
    <ol>
        <li>In Azure DevOps, create a <a href="https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=preview-page">Personal Access Token</a> (PAT) with <b>Work Items - Read & Write</b> permissions.</li>
        <li>In <b>WebApp - Administration -</b> <a href="../list-of-windows/alvao-webapp/administration/applications">Applications</a>, select the <b>ALVAO Azure DevOps Connector</b> application and insert the created PAT into the <b>Settings.cs</b> script at the location indicated by the appropriate comments.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Alternatively, you can use multiple access tokens, e.g. if you need to integrate Azure DevOps from different organizations into Alvao.
    </div>

    <h2>Setting up Azure DevOps</h2>
    <ol>
        <li>In <b>Azure DevOps</b> in a given project, use <b>Project Settings - Service hooks - Create subscription</b>.</li>
        <li>Select <b>Web Hooks</b> as the service type and press <b>Next</b>.</li>
        <li>Under <b>Trigger on this type of event</b>, select <b>Work item updated</b>.</li>
        <li>In <b>Field</b>, select the State option. Press the <b>Next</b> button.</li>
        <li>In the <b>URL</b> entry, enter the URL of the AlvaoRestApi application, followed by the path "/Connectors/DevOpsCallback", e.g.: <a href="https://contoso.alvao.com/AlvaoWebApi/Connectors/DevOpsCallback">https://contoso.alvao.com/AlvaoWebApi/Connectors/DevOpsCallback</a></li>
        <li>Select <b>None</b> under <b>Messages to send</b>.</li>
        <li>In Detailed <b>messages</b> to send, also select <b>None</b> and press <b>Finish</b>.</li>
    </ol>

    <h2>Setting up a service in Alvao</h2>
    <ol>
        <li>In <b>WebApp - Administration - Service Desk</b> - <a href="../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a>, select the service you want to connect to Azure DevOps and use <b>Edit - Properties</b>.</li>
        <li>In the <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/other">Other</a> section, specify the value of the <b>External Application - Connector Settings</b> custom field. The following settings are written in JSON notation:</li>
        <ol>
            <li><b>ConnectorType</b> - enter the text <b>AzureDevOps</b>.</li>
            <li><b>URL</b> - enter the URL of the Azure DevOps project in the form <a href="https://dev.azure.com/{organization}/{project}">https://dev.azure.com/{organization}/{project}</a> <br /> 
                Example: <a href="https://dev.azure.com/Alvao/Alvaoproject">https://dev.azure.com/Alvao/Alvaoproject</a></li>
            <li><b>AccessToken</b> - enter the Personal Access Token (PAT) number that you first saved in the <i>Settings.cs</i> script.<br />
                Example: 0</li>
            <li><b>AttributeMap</b> - specify the mapping of the request items, see below for the format of the settings.</li>
            <li><b>BeginState</b>- specify the name of the request status in Alvao in which the request will be transferred to Azure DevOps.<br />
                Example: Synchronization to DevOps</li>
            <li><b>EndState</b>- specify the name of the request status to which the request should transition when the corresponding work item is closed in Azure DevOps.<br />
                Example: Return from DevOps</li>
            <li><strong>WorkItemEndState</strong> – specify the name of the state in Azure DevOps in which should the request change its state in Alvao.<br />
                Example: Closed
            </li>
        </ol>
        <p>Example of the entire setup:</p>
        <p>
            {<br />
            "ConnectorType": "AzureDevOps",<br />
            "URL": "https://dev.azure.com/Alvao/Alvaoproject",<br />
            "AccessToken": "0",<br />
            "AttributeMap":"{"System.Title":"[$TicketTitle$]",<br />
            "System.Description":"[$LatestImportantMessage$]",<br />
            "System.WorkItemType": "Task"},<br />
            "BeginState": "Synchronization to DevOps",<br />
            "EndState": "Return from DevOps",<br />
            "WorkItemEndState": "Closed"<br />
            }
        </p>
    </ol>
    <h2>Attribute Map</h2>
    <p>
        The attribute map for setting up <b>AttributeMap</b> is written in JSON format as a list of properties, where the property name is the name of the <a href="https://docs.microsoft.com/en-us/azure/devops/boards/work-items/guidance/work-item-field?view=azure-devops">item in Azure DevOps</a>.
  and the value is a string constant. You can use variables in the values, see below. e.g.:
    </p>
    <p>{"System.Title":"[$TicketTitle$]", "System.Description":"[$LatestImportantMessage$]",<br />
        "System.WorkItemType": "Task"}</p>
    <p>
        Each item in Azure DevOps is assigned a value that is written as static text containing variables. You can use the same variables as in the status change notification template to the requester, see <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/message-template">Message template</a>.
    </p>
</asp:Content>
