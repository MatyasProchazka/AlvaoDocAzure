<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Datová analýza(sešit aplikace Excel)</h1>
    <p>
        V aplikaci ALVAO Asset Management je možné provádět analýzy v programu MS Excel. Analýzu otevřete v <strong>konzole Asset Management</strong> pomocí nástroje <strong>Analýza dat</strong>, který je k dispozici v hlavní nabídce v části <strong>Nástroje</strong>. Tento příkaz otevře sešit MS Excel s analýzou, který je uložen ve složce <em>&quot;C:\Users\{user}\Documents\ALVAO\&quot;</em>. Pokud se sešit s analýzou v této složce nenachází, automaticky se vytvoří nový. Na prvním listu sešitu najdete pokyny k použití    </p>
    <p>
        Uživatel je automaticky přihlášen k analýze pomocí vestavěného ověřování systému Windows. Ve stromu objektů jsou zobrazena pouze data, která má uživatel právo vidět podle své <a href="../../alvao-service-desk/implementation/services/service-roles">role</a> nebo <a href="../objects-and-properties/object-access-rights">nastavení práv</a>   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Příkaz <strong>Analýza dat</strong> pracuje se sešitem podle preferovaného jazyka. Pokud používáte jiný preferovaný jazyk než angličtinu nebo češtinu, příkaz otevře sešit v angličtině    </div>

    <p>
        Pro analýzu dat doporučujeme používat <a href="../implementation/analytic-database">analytickou databázi</a>   </p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se vám podařilo získat data z analytických databází, můžete si vybrat, zda je chcete použít:</div>
        Pokud chcete obnovit původní sešit, jednoduše odstraňte aktuální soubor ze složky <em>&quot;Dokumenty&quot;</em>. Po opětovném použití příkazu <strong>Analýza dat</strong> se sešit obnoví z instalačního adresáře    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při upgradu na novou verzi Alvao se kopie sešitu neupgraduje, takže některé listy mohou přestat fungovat. V takovém případě soubor přejmenujte nebo odstraňte ze složky <em>&quot;Documents\ALVAO\quot;</em> a vytvořte nový pomocí nástroje <strong>Analýza dat</strong>.<strong></strong></div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Po instalaci jsou vzorové soubory <em>Asset Management Analysis enu.xlsm</em> a <em>Asset Management Analysis csy.xlsm</em> umístěny ve složce <em>&quot;instalační adresář}\ALVAO\Asset Management Console\&quot;</em>. Doporučujeme tyto soubory nepoužívat nebo přímo odstranit. V případě, že s nimi chcete pracovat, zkopírujte je a použijte zkopírované soubory    </div>

    <h2>Použití v prostředí MS Azure</h2>
    <p>Pokud připojujete sešit k databázi Azure SQL Database, budete k připojení potřebovat <a href="https://www.microsoft.com/en-us/download/details?id=56730">ovladač Microsoft OLE DB Driver for SQL Server</a> nainstalovaný v počítači.</p>

</asp:Content>


