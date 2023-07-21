<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Import/export dat</h1>
    <p>Tato kapitola popisuje různé způsoby a prostředky importu a exportu dat z Alvao.</p>
    <p>Objekty ve stromu objektů:</p>
    <ul>
        <li><a href="import-export-data/import-util">ImportUtil</a> - import objektů</li>
        <li><a href="import-export-data/export-util">ExportUtil</a> - export objektů</li>
    </ul>
    <p>
        Softwarové licence    </p>
    <ul>
        <li><a href="software-management/import-lic">ImportLic</a> - import softwarových licencí</li>
    </ul>
    <p>
        Uživatelé    </p>
    <ul>
        <li><a href="implementation/users/authentication/ad/import-ad">ImportAD</a> - import uživatelů a skupin do správy a import objektů (počítačů, uživatelů, organizační struktury) do správy majetku.</li>
        <li><a href="implementation/users/authentication/alvao/import-users-csv">ImportUsersCSV</a> - import uživatelů do Asset Managementu ze souboru CSV.<br />
        </li>
        <li><a href="../alvao-service-desk/implementation/users/import-port-portraits-sharepoint">ImportPortraitsSharepoint</a> - import portrétů uživatelů ze služby SharePoint včetně Office365.</li>
    </ul>
    <p>
        Další    </p>
    <ul>
        <li><a href="../alvao-service-desk/implementation/services/processes/generating-process-diagram">GenerateProcessDiagram</a> - vygeneruje diagram konkrétního procesu Service Desk v aplikaci Microsoft Visio.</li>
    </ul>

</asp:Content>
