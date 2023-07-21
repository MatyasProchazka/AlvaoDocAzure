<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Upgrade z předchozích verzí</h1>

    <h2>Plánování</h2>

    <p>
        Před zahájením upgradu na novou verzi si pečlivě přečtěte části <a href="release-notes/important">Důležitá upozornění</a> a <a href="known-issues">Známé problémy</a>   </p>
    <p>Přečtěte si také důležitá upozornění pro všechny verze následující po verzi, ze které aktualizujete:</p>
    <ul>
        <li><a href="https://doc.alvao.com/en/11.0/release-notes/important">ALVAO 11.0</a></li>
        <li><a href="https://doc.alvao.com/en/10.4/release_notes/important.aspx">ALVAO 10.4</a></li>
        <li><a href="https://doc.alvao.com/support/doc/en/alvao_10_3/release_notes/important.aspx">ALVAO 10.3</a></li>
        <li><a href="https://doc.alvao.com/support/doc/en/alvao_10_2/release_notes/important.aspx">ALVAO 10.2</a></li>
        <li><a href="https://doc.alvao.com/support/doc/en/alvao_10_1/release_notes.aspx#important">ALVAO 10.1</a></li>
    </ul>

    <p>Před upgradem produkčního prostředí doporučujeme nejprve otestovat samotný upgrade a všechny funkce důležité pro produkci v samostatném <a href="upgrade/test-environment">testovacím prostředí</a>.</p>
    <p>Pokud máte trvalou licenci a plánujete <a href="upgrade/upgrade-server-manual">ruční upgrade</a>, ujistěte se, že se na danou verzi vztahuje vaše licence, tj. že verze byla vydána do 1 roku od vydání licence.</p>
   <a name="prep"></a>
    <h2>Příprava upgradu</h2>

    <ol>
        <li>Před upgradem systému informujte uživatele.</li>
        <li>Přepněte databázi na serveru SQL Server do režimu RESTRICTED_USER. Při použití nástroje SQL Server Management Studio proveďte následující kroky     <ul>
            <li>Klikněte pravým tlačítkem myši na databázi Alvao a vyberte možnost <strong>Vlastnosti</strong>.</li>
            <li>Přejděte na stránku <strong>Možnosti</strong>.</li>
            <li>V části <strong>Stav</strong> nastavte možnost <strong>Omezit přístup</strong> na hodnotu <strong>RESTRICTED_USER</strong>.</li>
        </ul>
        </li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">
            Upozornění:<br />
        </div>
        Nastavení režimu RESTRICTED_USER způsobí, že k DB budou mít přístup pouze uživatelé s oprávněním <em>sysadmin</em>,<em>dbcreator</em> nebo <em>db_owner</em>. Aktualizaci však může spustit pouze uživatel s právy <em>sysadmin</em> nebo <em>db_owner</em>   </div>


    <h2>Vstup dat</h2>

    <ol>
        <li>Zálohujte systémovou databázi nebo zkontrolujte, zda existuje aktuální záloha.</li>
        <li>Zálohujte složky na serveru, kde je Alvao nainstalováno, tj:<ul>
            <li>C:\Program Files (x86)\ALVAO</li>
            <li>C:\inetpub\wwwroot\složky webových aplikací</li>
        </ul>
        </li>
    </ol>


    <h2>Server ALVAO</h2>

    <p>
        Aplikace <strong>ALVAO Server Setup</strong> podporuje upgrade typické instalace serverových aplikací Alvao (tj. všechny serverové aplikace jsou na jednom serveru) z verze 10.3 SP1 a novější. Pokud provádíte upgrade ze starší verze nebo používáte netypickou instalaci, postupujte podle pokynů v části <a href="upgrade/upgrade-server-manual">ALVAO Server - ruční upgrade</a>   </p>

    <ol>
        <li>Ze stránek <a href="https://www.alvao.com/download/">ALVAO Downloads</a> stáhněte aplikaci <strong>ALVAO Server Setup</strong>.</li>
        <li>Na serveru spusťte instalační soubor <strong>AlvaoServerSetup.exe</strong> a postupujte podle jeho pokynů.</li>
    </ol>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">
            Upozornění:<br />
        </div>

        Pokud aktualizujete systém Alvao v testovacím prostředí pomocí nástroje ServerSetup, ujistěte se, že jste připojeni k testovací databázi. V instalačním programu ServerSetup nelze vybrat, která databáze se má upgradovat. Instalační program tuto informaci přebírá z parametru <i>ConnectionString</i> v konfiguračním souboru služby Alvao a sběrače Alvao. 
    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při aktualizaci databáze se aktuální aktivační klíč ověřuje přes internet. 
    </div>


    <h2>Klientské aplikace</h2>
    <ol>
        <li>Pomocí zásad skupiny (nebo jiné technologie) zajistěte, aby byly klientské aplikace a agenti nainstalováni na klientských počítačích. V případě typické instalace se jedná o následující balíčky:<ul>
            <li>ALVAO Asset Management          <ul>
                    <li>AlvaoAssetConsole.msi</li>
                </ul>
            </li>
        </ul>
        </li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        ALVAO Asset Management Agent se aktualizuje automaticky podle nainstalované verze ALVAO Serveru. 
    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Nejnovější verzi instalačního balíčku si můžete stáhnout také z <strong>webové aplikace ALVAO - Uživatelské menu - Nastavení - <a href="list-of-windows/alvao-webapp/settings/install-applications">Instalace aplikací</a></strong>   </div>


    <h2>Dokončení aktualizace</h2>
    <ol>
        <li>Pokud jste před upgradem Alvao provedli také upgrade SQL Serveru, zvyšte <a href="https://docs.microsoft.com/en-us/sql/relational-databases/databases/view-or-change-the-compatibility-level-of-a-database">úroveň kompatibility</a> databáze na nejvyšší dostupnou.</li>
        <li>Přepněte databázi zpět do režimu <strong>MULTI_USER</strong>, postup naleznete v části <a href="#prep">Příprava upgradu</a>.</li>
        <li>U serverových aplikací<a href="alvao-service-desk/implementation/installation/webapp-settings">(WebApp</a>, <a href="alvao-service-desk/implementation/installation/alvao-service-settings">Alvao Service</a>, <a href="alvao-asset-management/implementation/installation/installation-server-manual#restapi">REST API</a>, CA, SD a AM Web Services) v případě, že máte v konfiguračním souboru<i>(Web.config)</i> nějaká vlastní nastavení, přesuňte tato nastavení do nového <i>Web.config</i> ručně ze záložního souboru<i>(Web-backup-{datetime}.config)</i>.</li>
        <li>Případně proveďte další konfigurační kroky podle pokynů v dokumentech <a href="release-notes">Poznámky k vydání</a> všech verzí následujících po verzi, ze které aktualizujete.</li>
        <li>Restartujte server IIS.</li>
    </ol>

</asp:Content>
