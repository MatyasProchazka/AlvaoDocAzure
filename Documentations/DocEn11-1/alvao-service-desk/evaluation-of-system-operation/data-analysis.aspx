<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Data analysis (Excel workbook)</h1>

    <p>In ALVAO Service Desk it is possible to perform analyses in MS Excel. The files &quot;Service Desk Analysis enu.xlsm&quot; in English language and &quot;Service Desk Analysis csy.xlsm&quot; in Czech language, where contingency tables and script for database connection are prepared. On the first sheet of these workbooks you will find instructions for use.</p>
    <p>Download the workbooks from <a href="https://www.alvao.com/download">ALVAO Download</a>.</p>

    <p>
        For data analysis, we recommend using <a href="../../alvao-asset-management/implementation/analytic-database">analytic database</a>.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        After upgrading to the new version of Alvao, the copy of the workbook is not upgraded, so some sheets may stop working. In this case, delete the file and create it.
    </div>


    <h2>Use in MS Azure</h2>
    <p>If you are connecting the workbook to Azure SQL Database, you will need the <a href="https://docs.microsoft.com/en-us/sql/connect/oledb/download-oledb-driver-for-sql-server">Microsoft OLE DB Driver for SQL Server</a> installed on your computer to connect.</p>

</asp:Content>
