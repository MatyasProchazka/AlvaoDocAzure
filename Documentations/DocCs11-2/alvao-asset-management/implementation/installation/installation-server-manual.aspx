<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Server ALVAO - ruční instalace</h1>

   <a name="admin"></a>
    <h2>Vytvoření nové databáze</h2>
    <ol>
        <li>Ze stránky <a href="https://www.alvao.com/download/">ALVAO ke stažení</a> stáhněte soubor <strong>DatabaseDeploy.zip.</strong> </li>
        <li>Rozbalte balíček ZIP do libovolné složky na disku.</li>
        <li>Zkontrolujte, zda máte oprávnění k vytvoření nové databáze na cílovém serveru SQL Server.</li>
        <li>Pomocí nástroje <a href="database-deploy">DatabaseDeploy</a> vytvořte novou databázi.</li>


    </ol>
    <h2>ALVAO Asset Management Collector</h2>

    <h3>Instalace</h3>

    <ol>
        <li>Na serveru, kde chcete spustit službu Collector, spusťte instalační balíček <strong>AlvaoAssetCollector.msi.</strong> </li>
        <li>Instalační program automaticky nainstaluje Collector jako službu a spustí ji.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Chcete-li spustit Collector ALVAO Asset Management jako aplikaci, musíte nejprve zastavit jeho službu    </div>

    <h3>Nastavení</h3>

    <ol>
        <li>Zastavte službu ALVAO Asset Management Collector.</li>
        <li>Uvolněte soubor AMCollector.exe z nainstalované složky.</li>
        <li>Pomocí příkazu <strong>Action - Settings</strong> nastavte připojení k databázi.</li>
        <li>Doporučujeme povolit protokolování do souboru a nastavit úroveň na &quot;stav a chyby&quot;.</li>
        <li>Nastavte službu ALVAO Asset Management Collector tak, aby byla spuštěna pod účtem s právy správce. Služby v systému Windows se standardně spouštějí s oprávněním &quot;Místní systémový účet&quot;. Aby bylo možné detekovat stanice v síti bez použití agentů, musí být služba ALVAO Asset Management Collector spuštěna s právy správce.</li>
        <li>Povolte vybranému účtu přístup k databázi Alvao a přiřaďte mu <a href="#database-roles">požadované role databáze</a>.</li>
        <li>V okně <strong>WebApp - Administration - Asset Management - Servers</strong> povolte server příkazem <strong>Enable</strong>.</li>
        <li>Znovu spusťte službu ALVAO Asset Management Collector.</li>
    </ol>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Další nastavení Collectoru se provádí v aplikaci <strong>Správa</strong> v aplikaci ALVAO WebApp v sekci <strong>Asset Management - Servery</strong>   </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud nastavíte detail protokolu v souboru na hodnotu <strong>Detailní</strong>, bude Collector generovat velké množství dat v LOG souboru a rychlost detekce bude velmi pomalá. Proto se nastavení na hodnotu <strong>Podrobné</strong> doporučuje pouze pro řešení problémů a nedoporučuje se pro běžný provoz. 
    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Pokud chcete Collector spustit pouze jako aplikaci a nainstalovali jste jej pomocí AM Console, můžete jej spustit z nabídky <strong>Start - ALVAO - Asset Management Collector</strong> (v tomto případě není třeba instalovat soubor AlvaoAssetCollector.msi)    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Po nové instalaci je ve výchozím nastavení povoleno automatické načítání detekcí ze složky %ProgramData%\ALC\ALVAO Asset Management Collector\Detections    </div>

   <a name="webapp"></a>
    <h2>Webová aplikace ALVAO</h2>

    <h3>Instalace</h3>

    <ol>
        <li>Ujistěte se, že jsou na serveru nainstalovány následující komponenty:<ul>
            <li>Internet Information Server (IIS) verze splňující <a href="../requirements">technické požadavky</a>.</li>
            <li>ASP .NET verze 4.7.2 nebo vyšší;</li>
        </ul>
        </li>
        <li>Doporučujeme vytvořit vlastní fond aplikací <a href="own-iis-apppool">ALVAO AppPool .NET 4.0</a> v systému IIS. Tento krok není pro spuštění aplikace nezbytně nutný, ale výrazně ovlivňuje rychlost načítání webové aplikace.</li>
        <li>Přihlaste se jako správce a spusťte instalační balíček <strong>AlvaoWebApp.msi</strong>. Pokud máte problém s UAC, spusťte instalaci z příkazového řádku pomocí <span class="console">msiexec -i AlvaoWebApp.msi</span>.</li>
        <li>Při instalaci vyberte fond aplikací <b>ALVAO AppPool .NET 4</b>.0. Pokud jste tento fond aplikací nevytvořili v kroku 2, vyberte <strong> verzi .NET v4.5</strong>. Pro aplikaci Alvao WebApp vyberte pipeline: <em>integrated</em>.</li>
        <li>Instalační program vytvoří složku na disku<strong>(&lt;InetPub&gt;\wwwrootAlvao</strong>) a také virtuální adresář v IIS (Alvao).</li>
        <li>Přidělte účtu <strong>NT AUTHORITY\NETWORK SERVICE</strong> přístup k databázi Alvao a přiřaďte mu <a href="#database-roles">požadované databázové role</a>. Pokud jste v kroku 2 nevytvořili vlastní fond aplikací, přiřaďte přístup a role účtu <em>IIS APPPOOL\.NET v4</em>.5.</li>
        <li>Přejděte do <strong>aplikace ALVAO WebApp</strong><a href="http://localhost/Alvao">(http://localhost/Alvao</a>) a v části <strong>Administrace</strong> v části <a href="../../../list-of-windows/alvao-webapp/administration/licenses">Licence</a> zadejte aktivační klíč. <strong>Aktivační klíč</strong>Aktivační klíč můžete získat od dodavatele systému Alvao. Můžete si také vyžádat dočasný aktivační klíč pro vyzkoušení systému na <a href="info@alvao.com">adrese info@alvao.com</a>. Po zadání aktivačního klíče stiskněte tlačítko <strong>Uložit</strong>      <div class="note">
                <div class="icon">
                </div>
                <div class="title">
                    Poznámka         </div>
                Při aktivaci databáze se zadaný aktivační klíč ověří přes internet        </div>
        </li>
        <li>Více v části Administrace - Nastavení:<ul>
            <li>V části <a href="../../../list-of-windows/alvao-webapp/administration/settings/messaging">Zprávy</a> zadejte adresu serveru SMTP, přihlašovací údaje a e-mailovou adresu pro odesílání zpráv ze systému Alvao.</li>
            <li>V části <a href="../../../list-of-windows/alvao-webapp/administration/settings/activedirectory">Active Directory</a> nastavte adresu serveru Active Directory a výchozí doménu.</li>
        </ul>
        </li>
        <li>V <strong>aplikaci ALVAO WebApp</strong> upravte nastavení v části <strong>Administrace - Nastavení - WebApp</strong>.</li>
        <li>Vyplňte cestu k <strong>webové aplikaci (URL)</strong> do složky <em>aplikace ALVAO WebApp</em>. Například: <span class="console">. http://server/alvao.</span></li>
        <li>Ve výchozím nastavení po instalaci aplikace zobrazuje uživatelům časové údaje v časovém pásmu koordinovaného světového času (UTC). V případě potřeby změňte výchozí časové pásmo v <strong>aplikaci WebApp - Administration (Správa) - Settings (Nastavení) - </strong><a href="../../../list-of-windows/alvao-webapp/administration/settings/language-and-time-zone">Languages and Time Zone (Jazyky a časové pásmo</a>).</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Pozor:</div>
        Doporučujeme nainstalovat aplikaci ALVAO WebApp do složky v systému IIS (např. intepub\wwwroot\Alvao) a neumisťovat ji přímo do kořenového adresáře. 
    </div>

    <h3>Nastavení</h3>
    <p>
        Pro správnou funkčnost <strong>aplikace ALVAO WebApp</strong>je nutné v systému IIS nakonfigurovat způsob ověřování uživatelů.<br />
    </p>
    <p>Dostupné metody ověřování:</p>
    <ul>
        <li><strong>Autentizace pomocí formuláře</strong><ul>

            <li>Ověření zadáním uživatelského jména a hesla. Pro trvalé přihlášení bez nutnosti zadávat uživatelské jméno a heslo můžete použít možnost <strong>Trvale se přih</strong>lásit.</li>
            <li>Tento způsob ověřování by měl být použit, pokud je webová aplikace přístupná z internetu.</li>
        </ul>
        </li>
        <li><strong>Integrované ověřování systému Windows</strong><ul>
            <li>Ověřování bez nutnosti zadávat uživatelské jméno a heslo (v případě úspěšného integrovaného ověřování).</li>
            <li>Tuto metodu ověřování je vhodné použít, pokud jsou týmy řešení i žadatelé z Active Directory a pracují v doméně.</li>
        </ul>
        </li>
        <li><strong>Integrované ověřování systému Windows a formulářů (současně)</strong><ul>
            <li>Webová aplikace se nejprve pokusí ověřit uživatele pomocí systému Windows. Když toto ověření selže (nebo je uživatelem odvoláno), je uživateli umožněno přihlášení pomocí formuláře.</li>
            <li>Tato metoda ověřování nemusí fungovat správně kvůli technickým omezením (viz níže).</li>
        </ul>
        </li>
    </ul>

    <h4>Ověřování pomocí formuláře</h4>
    <p>Pokud chcete nastavit ověřování formulářů:</p>
    <ol>
        <li>V nástroji IIS Manager klikněte na aplikaci <strong>Alvao</strong> a poté na tlačítko <strong>Ověřování</strong>.</li>
        <li>Zkontrolujte, zda je povoleno <strong>anonymní ověřování</strong>, zda je povoleno <strong>ověřování formulářů</strong>a zda je zakázáno <strong>ověřování systému Windows</strong>.</li>
        <li>V textovém editoru otevřete soubor <strong>Web.config</strong> umístěný ve složce aplikace ALVAO WebApp.</li>
        <li>Ujistěte se, že <strong>atribut Authentication mode (Režim ověřování)</strong> je nastaven na <span class="console">Forms (Formuláře)</span> a parametr <strong>loginUrl</strong> je nastaven na <span class="console">~/Account/Login (Účet/Přihlášení)</span>.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        U této metody ověřování mají uživatelé k dispozici možnosti <strong>Odhlásit se</strong> a <strong>Změnit heslo</strong>   </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud se uživatelé přihlašují pomocí hesla z Active Directory, musí být cesta k serveru AD nastavena v <strong>aplikaci ALVAO WebApp</strong> - <strong>Management</strong> - <strong>Settings</strong>- <strong>Active Directory</strong>.  
    </div>



    <h4>Integrované ověřování systému Windows</h4>
    <p>Nastavení integrovaného ověřování systému Windows:</p>
    <ol>
        <li>Ve Správci IIS klikněte na aplikaci <strong>AlvaoWebApp</strong> a poté na <strong>Ověřování</strong>.</li>
        <li>Ujistěte se, že je povoleno <strong>ověřování systému Windows</strong> (a všechny ostatní jsou zakázány) <div class="caution">
    <div class="icon"></div>
     <div class="title">Pozor:</div>
     Ověřování musí být povoleno také na webové stránce, kde je aplikace nainstalována </div>
        </li>
        <li>V textovém editoru otevřete soubor <strong>Web.config</strong> umístěný ve složce ALVAO WebApp.</li>
        <li>Ujistěte se, že je <strong>režim atributu ověřování</strong> nastaven na <span class="console">Windows</span>.</li>
        <li>V kořenovém adresáři služby IIS nastavte <strong>delegaci funkcí (Feature Delegation</strong>) - povolte <span class="console">čtení nebo zápis</span> v následujících režimech ověřování: <span class="console">Anonymní</span>a <span class="console">Windows</span>.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Pozor:</div>
        Pro tento způsob ověřování nejsou k dispozici žádné možnosti <strong>Odhlásit se</strong> a <strong>Změnit heslo</strong>   </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Tuto metodu ověřování nelze použít k ověření uživatelů, kteří nejsou importováni ze služby Active Directory    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pro správnou funkci této metody ověřování je třeba mít v intranetu adresu serveru Alvao    </div>


    <h4>Integrované ověřování systému Windows a formulářů (současně)</h4>


    <p>Pokud chcete pro některé počítače používat integrované ověřování systému Windows a pro jiné počítače přihlašování pomocí formulářů:</p>
    <ol>
        <li>V nástroji Správce IIS klikněte na aplikaci <strong>Alvao</strong> a poté na položku <strong>Ověřování</strong>.</li>
        <li>Zkontrolujte, zda je povoleno <strong>anonymní ověřování</strong>, zda je povoleno <strong>ověřování formulářů</strong>a zda je povoleno <strong>ověřování systému Windows</strong>      <div class="caution">
               <div class="icon"></div>
                <div class="title">Pozor:</div>
                Ověřování musí být povoleno také na webových stránkách, na kterých je aplikace nainstalována            </div>
        </li>
        <li>V textovém editoru otevřete soubor <strong>Web.config</strong> umístěný ve složce ALVAO WebApp.</li>
        <li>Ujistěte se, že je <strong>atribut authentication mode (Režim ověřování)</strong> nastaven na <span class="console">Forms (Formuláře)</span> a parametr <strong>loginUrl</strong> na <span class="console">~/Account/MixedModeLogin (~/Account/MixedModeLogin</span>).</li>
        <li>V kořenovém adresáři služby IIS nastavte <strong>funkci Delegování funkcí</strong> - povolte <span class="console">čtení nebo zápis</span> v následujících režimech ověřování: <span class="console">Anonymní</span>, <span class="console">Formuláře</span>, <span class="console">Windows</span>.</li>
        <li>V okně <strong>WebApp- Administration - Settings - Integrated Authentication</strong>zadejte rozsahy IP adres počítačů ve vnitřní podnikové síti, pro které má být použito integrované ověřování. Pro všechny ostatní počítače bude použito ověřování pomocí formulářů.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Pozor:</div>
        Pokud je ověřování systému Windows úspěšné, nejsou k dispozici možnosti <strong>Odhlásit se</strong> a <strong>Změnit heslo</strong>   </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pro počítače, které budou ověřovány integrovaným způsobem, platí stejná omezení a předpoklady jako pro integrované ověřování systému Windows, viz upozornění v předchozí části    </div>


    <h4>Připojení k databázi</h4>
    <p>
        Otevřete <strong>Správce IIS</strong> a vyberte <strong>webovou aplikaci ALVAO (Alvao</strong> ). V nastavení klikněte na <strong>Řetězce připojení</strong>, klikněte na řetězec &quot;Db&quot; a nastavte správnou cestu k serveru SQL a databázi, kterou jste vytvořili při instalaci (výchozí je <strong>localhost</strong> a databáze <strong>Alvao</strong> ). Můžete například použít <strong>localhost</strong> pro server SQL a <strong>Alvao</strong> pro databázi. Připojovací řetězec pak vypadá takto:<br />
       <span class="console">Zdroj dat=localhost\SQLEXPRESS;Počáteční katalog=Alvao; Maximální velikost fondu=2000; Integrované zabezpečení=True;TrustServerCertificate=True</span>   </p>

    <p>Konfigurace webové aplikace je uložena v souboru Web.config ve složce ALVAO WebApp. Lze ji také upravit ručně editací tohoto souboru.</p>



   <a name="assetwebservice"></a>
    <h2>Webová služba ALVAO Asset Management</h2>
    <p>Služba ALVAO Asset Management WebService je součástí produktu ALVAO Asset Management. Slouží ke komunikaci s autonomními agenty a také ke vzdálenému připojení ke konzole Asset Management Console.</p>

    <h3>Instalace</h3>
    <ol>
        <li>Ujistěte se, že jsou na serveru nainstalovány následující komponenty:<ul>
            <li>Internet Information Server (IIS);</li>
            <li>Pro IIS verze 7 nainstalujte také funkci <em>IIS Management Compatibility 6</em>.</li>
            <li>ASP.NET verze 4.7.2 nebo vyšší;</li>
            <li><a href="https://docs.microsoft.com/en-us/sql/connect/oledb/download-oledb-driver-for-sql-server">Microsoft OLE DB Driver</a></li>
        </ul>
        </li>
        <li>Doporučujeme vytvořit vlastní fond aplikací <a href="own-iis-apppool">ALVAO AppPool .NET 4.0</a> v systému IIS. Tento krok není pro běh aplikace nezbytně nutný, ale výrazně ovlivňuje odezvu aplikace.</li>
        <li>Přihlaste se jako správce a spusťte instalační balíček <strong>AlvaoAssetWebService.msi.</strong></li>
        <li>Během instalace vyberte fond aplikací <b>ALVAO AppPool .NET 4</b>.0. Pokud jste tento fond nevytvořili v kroku 3, vyberte <strong> verzi .NET v4.5</strong>.</li>
        <li>Instalační program vytvoří na disku složku (&lt;InetPub&amp;gt\wwwroot\AssetWebService) a také virtuální adresář v IIS (AssetWebService).</li>
        <li>Po instalaci nakonfigurujte soubor <b>web.config</b>, který otevřete v textovém editoru.</li>
        <li>V řádku       <br />
           <span class="console">&lt;connectionStrings&gt;<br />&lt;add name=&quot;Db&quot; connectionString=&quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech;TrustServerCertificate=True&quot; providerName=&quot;Microsoft.Data.SqlClient&quot; /&gt;<br />&lt;/connectionStrings&gt;</span><br />
            nastavte připojení k databázi. Připojovací řetězec má stejný formát jako v souboru Web.config v nastavení webové aplikace ALVAO.</li>
        <li>Přidělte účtu <strong>NT AUTHORITY\NETWORK SERVICE</strong> přístup k databázi Alvao a přiřaďte mu <a href="#database-roles">požadované databázové role</a>. Pokud jste v kroku 3 nevytvořili vlastní fond aplikací, přiřaďte přístup a role účtu <em>IIS APPPOOL\.NET v4</em>.5.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">
            Poznámka: Chcete-li otestovat správné nastavení webové služby, dočasně povolte WSDL zakomentováním následující části v souboru web.config: <span class="console">&lt;remove name="Documentation"/&gt;....</span> Poté zadejte ve webovém prohlížeči cestu (URL) k AssetWebService až do souboru &quot;AssetWebService.asmx&quot;. Například: <span class="console">https://server/AssetWebService/AssetWebService.asmx.</span> Je-li nastaveno správně, zobrazí se seznam operací. Z bezpečnostních důvodů po dokončení testování vypněte WSDL    </div>
    </div>

    <h2>Služba ALVAO</h2>
    <p>ALVAO Service je aplikace, která mimo jiné automaticky upozorňuje uživatele na chybějící licence.</p>

    <h3>Instalace</h3>
    <ol>
        <li>Spusťte instalační balíček <b>AlvaoService.msi.</b></li>
        <li>Instalační program nainstaluje službu do složky <b>%Program Files%\ALVAO\AlvaoService</b>.</li>
        <li>V souboru <b>appsettings.json</b> v řádku       <br />
           <span class="console">&quot;ConnectionString&quot;: {<br />&quot;Db&quot;: &quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech&quot;<br />},</span><br />
            nastavte připojení k databázi. Připojovací řetězec má stejný formát jako v souboru Web.config pro webovou aplikaci ALVAO     </li>
        <li>V databázi Alvao povolte přístup pro účet <b>NT AUTHORITY\NETWORK SERVICE</b> a <a href="#database-roles">nastavte role databáze</a>.</li>
        <li>Nastavte systémovou službu <b>ALVAO Service</b> tak, aby byla spuštěna pod účtem <b>NT AUTHORITY\NETWORK SERVICE</b>.</li>
        <li>Spusťte systémovou službu.</li>
    </ol>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
Pokud používáte databázi ve speciální instanci (např. SQLServer\Alvao), musíte v konfiguračním souboru appsettings.json použít místo jednoduchého zpětného lomítka dvojité zpětné lomítko</div>


    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pro ověření funkčnosti můžete spustit <i>AlvaoService.exe</i> na ploše nebo z příkazového řádku. Poté aplikaci ukončete    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud potřebujete změnit konfigurační soubor <i>appsettings.json</i>, musíte před provedením změny zastavit službu <i>ALVAO Service</i> a po uložení změn konfigurace ji znovu spustit. 
    </div>

   <a name="restapi"></a>
    <h2>ROZHRANÍ API ALVAO REST</h2>
    <p>ALVAO REST API je webová služba implementující <a href="../../../modules/alvao-am-enterprise-api/specification">rozhraní REST API</a>. Kromě modulu <em>ALVAO Asset Management Enterprise API</em> je rozhraní REST API využíváno mnoha dalšími komponentami systému Alvao.</p>

    <h3>Instalace</h3>
    <ol>
        <li>Ujistěte se, že na počítači, kde chcete spustit rozhraní ALVAO REST API, je nainstalován intranetový server IIS s verzí, která splňuje <a href="../requirements">technické požadavky</a>.</li>
        <li>Doporučujeme vytvořit vlastní pool aplikací <a href="own-iis-apppool">ALVAO AppPool .NET 4.0</a> v systému IIS. Tento krok není pro spuštění aplikace nezbytně nutný, ale výrazně ovlivňuje rychlost načítání webové aplikace.</li>
        <li>Před instalací se ujistěte, že máte nainstalovanou ASP .NET v4.7.2 nebo vyšší. </li>
        <li>Přihlaste se jako správce a spusťte instalační balíček <strong>AlvaoRestApi.msi</strong>. Pokud máte problém s UAC, spusťte instalaci z příkazového řádku pomocí <span class="console">msiexec -i AlvaoRestApi.msi</span>.</li>
        <li>Při instalaci vyberte fond aplikací <strong>ALVAO AppPool .NET 4</strong>.0. Pokud jste tento AppPool nevytvořili v kroku 2, vyberte <strong> verzi .NET v4.5</strong>.</li>
        <li>Instalační program vytvoří na disku složku<strong>(inetpub\wwwroot\AlvaoRestApi</strong>) a také dva virtuální adresáře v systému IIS (AlvaoRestApi a AlvaoRestApiWinAuth).</li>
        <li>Po instalaci je třeba nakonfigurovat soubor <em>web.config</em> ve složce <strong>ALVAO REST API</strong> (soubor otevřete v Poznámkovém bloku).</li>
        <li>V řádku       <br />
           <span class="console">&lt;connectionStrings&gt;<br />&lt;add name=&quot;Db&quot; connectionString=&quot;Data Source=localhost;Initial Catalog=Alvao;Integrated Security=True;Current Language=Czech;TrustServerCertificate=True&quot; providerName=&quot;Microsoft.Data.SqlClient&quot; /&gt;<br />&lt;/connectionStrings&gt;</span><br />
            nastavte připojení k databázi. Připojovací řetězec má stejný formát jako v souboru <em>web.config</em> v nastavení webové aplikace.</li>
        <li>Přidělte účtu <strong>NT AUTHORITY\NETWORK SERVICE</strong> přístup k databázi Alvao a přiřaďte mu <a href="#database-roles">požadované databázové role</a>. Pokud jste v kroku 2 nevytvořili vlastní fond aplikací, přiřaďte přístup a role účtu <em>IIS APPPOOL\.NET v4</em>.5.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        AlvaoRestApi je nastaveno na <em>anonymní ověřování</em> a AlvaoRestApiWinAuth je nastaveno na <em>ověřování Windows</em>. Obě tato nastavení musí být uložena v souboru ApplicationHost.config. Režim ověřování pro tyto aplikace nenastavujte prostřednictvím Správce IIS. 
 
    </div>

   <a name="database-roles"></a>
    <h2>Přiřazení databázových rolí účtům aplikací</h2>

    <p>
        V aplikaci <strong>SQL Server Management Studio</strong> na serveru SQL Server vytvořte potřebné uživatelské účty, pod kterými poběží nainstalované aplikace, aby mohly přistupovat k databázi. Poté ve složce <strong>Zabezpečení - Přihlašovací údaje</strong> povolte pomocí následující tabulky přístup jednotlivým aplikačním účtům a přiřaďte jim databázové role    </p>

    <table>
        <thead>
            <tr>
                <th>Aplikace</th>
                <th>Doporučený účet</th>
                <th>Přiřazené databázové role</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>ALVAO Asset Management Collector</td>
                <td>NT AUTHORITY\SYSTEM</td>
                <td>public, db_datareader, db_datawriter, db_ddladmin, db_executor</td>
            </tr>
            <tr>
                <td>ALVAO WebApp</td>
                <td rowspan="3">NT AUTHORITY\NETWORK SERVICE (případně IIS APPPOOL\.NET v4.5)</td>
                <td rowspan="3">public, db_datareader, db_datawriter, db_ddladmin, db_executor</td>
            </tr>
            <tr>
                <td>ALVAO Asset WebService</td>
            </tr>
            <tr>
                <td>ALVAO REST API</td>
            </tr>
            <tr>
                <td>Služba ALVAO</td>
                <td>NT AUTHORITY\NETWORK SERVICE</td>
                <td>db_owner</td>
            </tr>
        </tbody>
    </table>
</asp:Content>
