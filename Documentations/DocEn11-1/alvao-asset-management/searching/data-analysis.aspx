<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Data analysis (Excel workbook)</h1>
    <p>
        In ALVAO Asset Management it is possible to perform analyses in MS Excel. Open the analysis from the <strong>Asset Management Console</strong> with the <strong>Data Analysis</strong>, which is available in the main menu under <strong>Tools</strong>. This command opens the MS Excel workbook with the analysis, which is stored in the <em>&quot;C:\Users\{user}\Documents\ALVAO\&quot;</em> folder. If the analysis workbook is not in this folder, a new one is automatically created. On the first sheet of the workbook you will find instructions for use.
    </p>
    <p>
        The user is automatically logged in to the analysis using the built-in Windows authentication. Only the data that users has the right to see according to their <a href="../../alvao-service-desk/implementation/services/service-roles">role</a> or <a href="../objects-and-properties/object-access-rights">rights settings</a> in the object tree.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        The <strong>Data Analysis</strong> command works with the workbook according to your preferred language. If you are using a preferred language other than English or Czech, the command will open the English workbook.
    </div>

    <p>
        For data analysis we recommend using <a href="../implementation/analytic-database">analytic database</a>.
    </p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If you wish to restore the original workbook, simply delete the current file from the <em>&quot;Documents&quot;</em> folder. After using the <strong>Data Analysis</strong> command again
	the workbook will be restored from the installation directory.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        When upgrading to a new version of Alvao, the copy of the workbook is not upgraded, so some sheets may stop working. In this case, rename or delete the file from the <em>&quot;Documents\ALVAO\quot;</em> folder and create a new one with <strong>Data Analysis</strong>.<strong></strong>
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        After installation, the sample files <em>Asset Management Analysis enu.xlsm</em> and <em>Asset Management Analysis csy.xlsm</em> are located in the <em>&quot;installation directory}\ALVAO\Asset Management Console\&quot;</em> folder.
	We recommend that you do not use or delete these files directly. In case you want to work with them, copy them and use the copied files.
    </div>

    <h2>Use in MS Azure</h2>
    <p>If you are connecting the workbook to Azure SQL Database, you will need the <a href="https://www.microsoft.com/en-us/download/details?id=56730">Microsoft OLE DB Driver for SQL Server</a> installed on your computer to connect.</p>

</asp:Content>


