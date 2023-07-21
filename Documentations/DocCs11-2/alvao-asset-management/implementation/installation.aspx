<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Instalace</h1>
    <p>
        Tato kapitola popisuje počáteční instalaci systému. Pokud chcete systém upgradovat ze starší verze, postupujte podle kapitoly <a href="../../upgrade">Upgrade z předchozích verzí</a>   </p>

    <h2>Server ALVAO</h2>
    <p>
        Instalační program <strong>ALVAO Server Setup</strong> poskytuje standardní instalaci komponent serveru Alvao na jeden server. V případě netypické instalace na více serverů postupujte podle <a href="installation/installation-server-manual">manuální instalace</a>   </p>

    <ol>
        <li>Ujistěte se, že jsou splněny <a href="requirements">technické požadavky na</a> server.</li>
        <li>Zkontrolujte, zda jste na serveru SQL nastavili potřebná oprávnění pro procesy IIS. Doporučené uživatelské role pro čtení, úpravy dat a databázových schémat a spouštění procedur a funkcí jsou <strong>db_datareader</strong>, <strong>db_datawriter</strong>, <strong>db_ddladmin</strong>.</li>
        <li>Nastavte oprávnění pro uživatele, který spouští nástroj <strong>ALVAO Server Setup</strong>. Doporučené role jsou <strong>db_datareader</strong>, <strong>db_datawriter</strong>, <strong>db_ddladmin</strong>, <strong>db_executor</strong>. Pro nastavení posledního potřebného oprávnění použijte příkaz <strong>GRANT ALTER ANY USER TO [login uživatele]</strong> SQL. </li>
        <li>Ze stránek <a href="https://www.alvao.com/download">ALVAO Downloads</a> stáhněte aplikaci <strong>ALVAO Server Setup</strong>.</li>
        <li>Na serveru spusťte instalační soubor <strong>AlvaoServerSetup.exe</strong> a postupujte podle jeho pokynů.</li>
        <li>Restartujte server IIS.</li>
        <li>Ve výchozím nastavení po instalaci aplikace zobrazuje uživatelům čas v časovém pásmu koordinovaného světového času (UTC). V případě potřeby změňte výchozí časové pásmo v nabídce <strong>WebApp - Administration (Správa) - Settings (Nastavení) - </strong><a href="../../list-of-windows/alvao-webapp/administration/settings/language-and-time-zone">Languages and Time Zone (Jazyky a časové pásmo</a>).</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Role se nastavují v aplikaci SQL Server Management Studio (Express) ve složce <strong>Security - Logins</strong>.<br />
        Role <strong>sysadmin</strong> zajistí nastavení všech potřebných oprávnění uživatelů bez nutnosti nastavovat další role    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Zadaný aktivační klíč se ověřuje přes internet. 
    </div>



    <h2>ALVAO Asset Management Console</h2>

    <h3>Instalace</h3>
    <ol>
        <li>V počítači uživatele systému spusťte instalační balíček <strong>AlvaoAssetConsole.msi</strong> a postupujte podle jeho pokynů.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Nejnovější verzi instalačního balíčku si můžete stáhnout také z <strong>webové aplikace ALVAO - Uživatelská nabídka - Nastavení - </strong><a href="../../list-of-windows/alvao-webapp/settings/install-applications">Instalace aplikací</a>   </div>

    <h3>Připojení k existující databázi</h3>
    <ol>
        <li>Po instalaci spusťte aplikaci z nabídky <strong>Start - ALVAO - Asset Management Console</strong>.</li>
        <li>V otevřeném okně <a href="../../list-of-windows/alvao-asset-management-console/file/db-manager">Správce databází</a> stiskněte <strong>tlačítko Přidat,</strong>vytvořte připojení k databázi Alvao, kterou nakonec otevřete tlačítkem <strong>Otevřít</strong>.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Tento balíček obsahuje volitelné komponenty Collector a Agent. Ve standardní produkční instalaci není třeba tyto součásti instalovat spolu s AM Console, protože Collector je standardně nainstalován na serveru a Agent se v případě potřeby instaluje na počítače pomocí zásad skupiny. 
    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud AM Console přestane po spuštění fungovat, zkontrolujte, zda antivirový program na koncovém bodě neovlivňuje její běh, a případně přidejte výjimku pro AM Console.</div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Doporučení:</div>
        Pokud s&nbsp; AM Console pracuje více uživatelů, doporučujeme ji do jejich počítačů nainstalovat hromadně pomocí zásad skupiny. Případně můžete AM Console nainstalovat na sdílenou jednotku na serveru a povolit oprávněným uživatelům její spuštění ze sdílené jednotky, ale u serverové instalace nelze zaručit správnou funkčnost (zejména pokud se počítače stále uspávají). Doporučeným scénářem je místní instalace.</div>


</asp:Content>
