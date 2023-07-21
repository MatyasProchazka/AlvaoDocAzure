<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Analytická databáze</h1>

    <p>Protože provádění analýz dat a vytváření sestav nad produkční databází za běžného provozu může zpomalit odezvu aplikace, doporučujeme tyto analýzy a sestavy vytvářet nad samostatnou <em>analytickou databází</em>.</p>
    <p>Na serveru SQL Server vytvořte analytickou databázi (např. s názvem ALVAO_ANALYSIS) z aktuální zálohy produkční databáze a uzamkněte ji proti zápisu (pouze pro čtení), abyste zvýšili výkon. Analytickou databázi doporučujeme aktualizovat denně z poslední denní zálohy produkční databáze, např. pomocí naplánované úlohy. Naplánovaná úloha může spouštět např. skript cmd, který vytvoříte pomocí <a href="renew_analysis.zip">šablony skriptu</a>, a upravit v něm cesty k diskovým souborům a názvy serverů a databází.</p>
    <p>Ve <strong>WebApp - Administration - Settings - </strong><a href="../../list-of-windows/alvao-webapp/administration/settings/analysis-db">Data Analysis</a> pak nastavte připojení k analytické databázi.</p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Analytická databáze je určena pouze pro analýzy a reporty. Nepracujte s ní přímo v aplikacích Alvao!    </div>


</asp:Content>
