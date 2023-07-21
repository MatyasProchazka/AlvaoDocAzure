<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import/export data</h1>
    <p>This chapter describes the various ways and means of importing and exporting data from Alvao.</p>
    <p>Objects in the object tree:</p>
    <ul>
        <li><a href="import-export-data/import-util">ImportUtil</a> - import objects</li>
        <li><a href="import-export-data/export-util">ExportUtil</a> - export objects</li>
    </ul>
    <p>
        Software licenses:
    </p>
    <ul>
        <li><a href="software-management/import-lic">ImportLic</a> - import software licenses</li>
    </ul>
    <p>
        Users:
    </p>
    <ul>
        <li><a href="implementation/users/authentication/ad/import-ad">ImportAD</a> - import users and groups into Administration and import objects (computers, users, organizational structure) into Asset Management.</li>
        <li><a href="implementation/users/authentication/alvao/import-users-csv">ImportUsersCSV</a> - import users into Asset Management from a CSV file.<br />
        </li>
        <li><a href="../alvao-service-desk/implementation/users/import-port-portraits-sharepoint">ImportPortraitsSharepoint</a> - import user portraits from SharePoint including Office365.</li>
    </ul>
    <p>
        Other:
    </p>
    <ul>
        <li><a href="../alvao-service-desk/implementation/services/processes/generating-process-diagram">GenerateProcessDiagram</a> - generate a diagram of a specific Service Desk process in Microsoft Visio.</li>
    </ul>

</asp:Content>
