<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Zálohování databáze</h1>

    <p>Pravidelně zálohujte databázi pomocí běžných prostředků pro zálohování databází na MS SQL Serveru. Doporučujeme zálohovat databázi každý den mimo špičku.</p>
    <h2>Plánování zálohování ze softwaru MS SQL Management Studio</h2>
    <ol>
        <li>Spusťte <strong>aplikaci Microsoft SQL Server Management Studio . </strong></li>
        <li>Připojte se k serveru SQL Server a v levém navigačním panelu vyberte složku <strong>Management - Maintenance Plans (Plány údržby) </strong>. Klepněte pravým tlačítkem myši na tuto složku a vyberte možnost <strong>New Maintenance Plan (Nový plán údržby) . </strong></li>
        <li>Podle průvodce vytvořte úlohu zálohování pro databázi Alvao. </li>
    </ol>
    <h2>Zálohování z příkazového řádku</h2>
    <p>Zálohování databáze můžete spustit také z příkazového řádku, např. jako součást naplánované úlohy na serveru.</p>
    <p>Příklad příkazového řádku:</p>
    <pre class="console" translate="no">sqlcmd -S <em>sql_server_name</em> -Q &quot;BACKUP DATABASE <em><tt>database_name</tt></em> TO DISK = 'C:\Zaloha\alvao.bak'&quot;</pre>

</asp:Content>
