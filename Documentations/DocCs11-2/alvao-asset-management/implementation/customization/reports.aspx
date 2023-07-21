<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Tisk šablon zpráv</h1>
    <p>Šablony tiskových sestav definují vzhled tiskových sestav, jako jsou <a href="../../documents/transfer-protocols">převodní sestavy</a>, registrační karty atd.</p>
    <p>Šablona může mít jeden z následujících formátů:</p>
    <ul>
        <li><a href="reports/rep-modify">REP</a></li>
        <li><a href="reports/html">HTML</a></li>
    </ul>
    <p>Šablony uložené v databázi můžete spravovat v nabídce <strong>WebApp - Administration - Asset Management</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a>.</p>
    <p>Tiskové sestavy na základě šablon můžete generovat a tisknout v aplikaci <strong>WebApp - Objekty - Objekt</strong> - <a href="../../../list-of-windows/alvao-webapp/objects/object/print">Tisk</a> a <strong>AM Console - Soubor</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Tisk</a>.</p>
</asp:Content>


