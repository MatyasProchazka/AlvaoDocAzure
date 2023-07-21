<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Datová analýza(sešit aplikace Excel)</h1>

    <p>V aplikaci ALVAO Service Desk je možné provádět analýzy v programu MS Excel. K dispozici jsou soubory &quot;Service Desk Analysis enu.xlsm&quot; v anglickém jazyce a &quot;Service Desk Analysis csy.xlsm&quot; v českém jazyce, kde jsou připraveny kontingenční tabulky a skript pro připojení k databázi. Na prvním listu těchto sešitů najdete návod k použití.</p>
    <p>Sešity si můžete stáhnout ze stránek <a href="https://www.alvao.com/download">ALVAO Download</a>.</p>

    <p>
        Pro analýzu dat doporučujeme použít <a href="../../alvao-asset-management/implementation/analytic-database">analytickou databázi</a>   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Po aktualizaci na novou verzi programu Alvao se kopie sešitu neaktualizuje, takže některé listy mohou přestat fungovat. V takovém případě soubor smažte a vytvořte nový    </div>


    <h2>Použití v prostředí MS Azure</h2>
    <p>Pokud připojujete sešit k databázi Azure SQL, budete k připojení potřebovat <a href="https://docs.microsoft.com/en-us/sql/connect/oledb/download-oledb-driver-for-sql-server">ovladač Microsoft OLE DB Driver for SQL Server</a> nainstalovaný v počítači.</p>

</asp:Content>
