<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Optimalizace výkonu databáze</h1>

    <h2>Automatická údržba</h2>

    <p>Pro udržení rychlé odezvy aplikací Alvao se každou neděli mezi 3:00 a 3:55 automaticky provádí optimalizace výkonu databáze.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka: Automatická údržba se spustí pouze v případě, že od poslední optimalizace uplynulo více než 5 dní.</div>

    </div>
    <h2>Ruční údržba</h2>

    <p>
        Pokud potřebujete provést optimalizaci výkonu okamžitě, použijte příkaz <strong>WebApp</strong> - <strong>Management</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/database-maintenance"><strong>Database Maintenance</strong></a> - <strong>Optimize Performance</strong>   </p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se vám podaří provést optimalizaci, můžete použít příkaz Optimalizace optimalizace optimalizace:</div>
        Pokud upgradujete SQL Server na vyšší verzi nebo přesunete databázi na jiný SQL Server s vyšší verzí, zvyšte také <a href="https://docs.microsoft.com/en-us/sql/relational-databases/databases/view-or-change-the-compatibility-level-of-a-database">úroveň kompatibility</a> databáze na nejvyšší dostupnou. Tím se zlepší výkon databáze. 
    </div>
</asp:Content>

