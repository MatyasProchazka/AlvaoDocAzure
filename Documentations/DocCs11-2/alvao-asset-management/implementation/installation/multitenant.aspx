<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Režim Multitenant</h1>
    <p>
        V režimu více nájemců slouží jedna instalace serveru ALVAO Server několika zákazníkům (nájemcům)    </p>

    <h2>Vytvoření databáze nájemců</h2>

    <p>
        Vytvořte databázi nájemců na serveru SQL Server spuštěním skriptu (např. ze služby SQL Server Management Studio)    </p>
   <font face="Consolas" size="2" color="#0000ff">create database</font><font face="Consolas" size="2"> AlvaoTenants</font><font face="Consolas" size="2" color="#0000ff"><br />go<br />use </font><font face="Consolas" size="2">AlvaoTenants</font><font face="Consolas" size="2" color="#0000ff"><br />go<br />create table </font><font face="Consolas" size="2">Tenant</font><font face="Consolas" size="2" color="#0000ff"> </font></font><font face="Consolas" size="2" color="#808080"> </font>( <font face="Consolas" size="2" color="#808080"></font><font face="Consolas" size="2"> <br /> id</font><font face="Consolas" size="2" color="#0000ff"> int</font><font face="Consolas" size="2">
        </font><font face="Consolas" size="2" color="#0000ff">identity</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">1</font><font face="Consolas" size="2" color="#808080">,</font><font face="Consolas" size="2">1</font><font face="Consolas" size="2" color="#808080">)</font><font face="Consolas" size="2">
        </font><font face="Consolas" size="2" color="#0000ff">constraint</font><font face="Consolas" size="2">PK_Tenant_id </font><font face="Consolas" size="2" color="#0000ff">primary</font><font face="Consolas" size="2">
</font><font face="Consolas" size="2" color="#0000ff">key</font><font face="Consolas" size="2">
</font> clustered<font face="Consolas" size="2" color="#808080">,</font><font face="Consolas" size="2"><br /></font><font face="Consolas" size="2">Organization</font> <font face="Consolas" size="2" color="#0000ff">nvarchar</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">255</font>)<font face="Consolas" size="2" color="#808080">,</font><font face="Consolas" size="2"><br />Domain</font><font face="Consolas" size="2" color="#0000ff">nvarchar</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">255</font><font face="Consolas" size="2" color="#808080">),</font> <font face="Consolas" size="2"> <br />ConnectionString </font> <font face="Consolas" size="2" color="#ff00ff">nvarchar</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#ff00ff">max)</font><font face="Consolas" size="2" color="#80808080">,</font> <font face="Consolas" size="2"> <br />IsProvider</font> <font face="Consolas" size="2" color="#0000ff">bit</font> <font face="Consolas" size="2">not null</font> <font face="Consolas" size="2" color="#0000ff">default</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2">0</font><font face="Consolas" size="2" color="#808080">)</font>)    <br />

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Provede se pouze jednou. 
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">
            Poznámka: Na serveru Azure SQL Server spusťte skript ve dvou samostatných krocích:<ol>
                <li>Vytvořte databázi nájemců<font face="Consolas" size="2" color="#0000ff">(create database </font><font face="Consolas" size="2">AlvaoTenants</font>).</li>
                <li>Připojte se k nové databázi a vytvořte tabulku nájemců<font face="Consolas" size="2" color="#0000ff">(create table</font><font face="Consolas" size="2"> Tenant (</font>...)).</li>
            </ol>
        </div>
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka: Na serveru SQL Server nastavte potřebná oprávnění pro procesy IIS. Pro databázi nájemců je třeba povolit uživatelskou roli <strong>db_datareader</strong>.</div>

    </div>

    <h2>Nastavení režimu multitenantů</h2>
    <h3>Webová služba správy aktiv</h3>
    <ol>
        <li>Upravte soubor <strong>web.config</strong>, např. pomocí <em>Poznámkového bloku</em>.</li>
        <li>Najděte část <strong></strong>configuration/connectionStrings</strong>.</li>
        <li>V této části nahraďte stávající připojení novým. Nahraďte jej připojením s názvem <em>AlvaoTenants</em>, které obsahuje připojovací řetězec k databázi tenants.<br />
            Příklad: Vložte do pole pro zadávání údajů o uživatelích, které se nachází na adrese, kde se nachází server, a vraťte se k němu:<br />
            <pre translate="no" style="font-family: consolas; font-size: 13px; color: black; background: white;" class="style2"><span style="color:blue;">&lt;</span><span style="color:#a31515;">add</span><span style="color:blue;">&nbsp;</span><span style="color:red;">name</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">AlvaoTenants</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">connectionString</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Data&nbsp;Source=server1;Initial&nbsp;Catalog=AlvaoTenants;&nbsp;Max&nbsp;Pool&nbsp;Size=2000;&nbsp;Integrated&nbsp;Security=True</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">providerName</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Microsoft.Data.SqlClient</span>&quot;<span style="color:blue;">/&gt;</span></pre>
        </li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud je AM WS spuštěn v režimu multitenant, ukládá soubory přijaté detekcí do složky ve výchozím nastavení:<br />
       <em>c:\ProgramData\ALC\ALVAO Asset Management Collector\Detections\&lt;název organizace nájemce&gt </em>   </div>

    <h3>Asset Management Collector</h3>
    <p>Pro režim více nájemců nejprve připravte balíček ZIP pro instalaci instancí služeb pro každého nájemce:</p>
    <ol>
        <li>Nainstalujte balíček MSI</em>. AlvaoAssetCollector.msi</em>pomocí instalace &quot;admin&quot;:<br />
           <em>alvaoAssetCollector.msi: msiexec /a AlvaoAssetCollector.msi</em></br>
  Poznámka: Příkazový řádek spusťte "jako správce".</li>
        <li>Ve složce, do které jste nainstalovali balíček (kde jsou knihovny EXE a DLL aplikace), rozbalte obsah balíčku <em> <a href="CollectorServiceControlScripts.zip">CollectorServiceControlScripts.zip</a></em></li>
        <li>Poté &quot;zazipujte všechny soubory&quot; a vytvořte jeden archiv ZIP, například: <em>. AMCollector.zip</em></li>
    </ol>

    <h3>Služba Alvao</h3>
    <ol>
        <li>Upravte soubor <b>appsettings.json</b>, např. pomocí <i>Poznámkového bloku</i>.</li>
        <li>Najděte část <b>ConnectionString</b>.</li>
        <li>V této části nahraďte stávající připojení novým. Nahraďte jej připojením s názvem <i>AlvaoTenants</i>, které obsahuje řetězec připojení k databázi tenants.<br />
            Příklad: Vložte do pole pro zadávání názvů serverů, např:<br />
           <pre translate="no" style="font-family: consolas; font-size: 13px; color: black; background: white;" class="style2">
&quot;AlvaoTenants&quot;: &quot;Data Source=localhost;Initial Catalog=AlvaoTenants; Max Pool Size=2000; Integrated Security=True; MultipleActiveResultSets=True&quot;
            </pre>
        </li>
    </ol>

    <h3>WebApp</h3>
    <ol>
        <li>Upravte soubor <strong>Web.config</strong>, např. pomocí <em>Poznámkového bloku</em>.</li>
        <li>Najděte sekci <strong></strong>connectionStrings</strong>.</li>
        <li>V této části nahraďte stávající připojení novým. Nahraďte jej spojením s názvem <em>AlvaoTenants</em>, které obsahuje připojovací řetězec k databázi tenants.<br />
            Příklad:<br />
            <pre translate="no" style="font-family: Consolas; font-size: 13px; color: black; background: white;" class="style2"><span style="color:blue;">&lt;</span><span style="color:#a31515;">add</span><span style="color:blue;">&nbsp;</span><span style="color:red;">name</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">AlvaoTenants</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">connectionString</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Data&nbsp;Source=server1;Initial&nbsp;Catalog=AlvaoTenants;&nbsp;Max&nbsp;Pool&nbsp;Size=2000;&nbsp;Integrated&nbsp;Security=True</span>&quot;<span style="color:blue;">&nbsp;</span><span style="color:red;">providerName</span><span style="color:blue;">=</span>&quot;<span style="color:blue;">Microsoft.Data.SqlClient</span>&quot;<span style="color:blue;">/&gt;</span></pre>
        </li>
    </ol>
    <h3>Webová služba Vlastní aplikace</h3>
    <p>Tato komponenta se instaluje pouze pro nájemce, kteří si zakoupili modul <a href="../../../modules/alvao-am-custom-apps">ALVAO Asset Management Custom Apps</a> nebo <a href="../../../modules/alvao-sd-custom-apps">ALVAO Service Desk Custom Apps</a>.</p>
    <p>Pro režim více nájemců nejprve připravte balíček ZIP pro instalaci instancí služby pro každého nájemce:</p>
    <ol>
        <li>Nainstalujte balíček MSI AlvaoCustomAppsWebService.msi pomocí instalace "admin":<br />
           <i>alvaoCustomAppsWebService.msi: msiexec /a AlvaoCustomAppsWebService.msi</i><br />
            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Spusťte příkazový řádek "jako správce"         </div>
        </li>
        <li>2. "Zipujte" složku z IIS, do které byla aplikace nainstalována (např. <i>C:\inetpub\wwwroot\AlvaoCustomAppsWebService</i> ), a vytvořte jeden archiv ZIP, např. <i>CustomAppsWebService.zip</i></li>
    </ol>


    <h2>Přidání nového nájemce</h2>
    <ol>
        <li>Pro nového zákazníka zaregistrujte v <strong>DNS</strong> novou (sub)doménu (např. <em>zakaznik1.alvao.com</em>), která ukazuje na IP adresu serveru s nainstalovanými webovými aplikacemi Alvao.</li>
        <li>Na serveru SQL Server vytvořte pomocí nástroje <a href="database-deploy">DatabaseDeploy</a> pro zákazníka <strong>. novou databázi</strong> v příslušném jazyce (podle požadavku zákazníka). Aktivujte databázi         <br />

            <div class="note">
                <div class="icon"></div>
                <div class="title">Poznámka:</div>
                <ul>
                    <li>Název databáze je zaznamenán jako text rozlišující malá a velká písmena, proto při přepisu dbejte na dodržování velikosti písmen.</li>
                    <li>Při vytváření nové databáze se automaticky vygeneruje silný ověřovací kód pro agenty AM. Kód lze změnit v <a href="../../../list-of-windows/alvao-asset-management-console/edit/detection/scope">globálním nastavení detekce</a>.</li>

                </ul>
            </div>

             <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                    Na serveru SQL Server nastavte potřebná oprávnění pro procesy IIS. Nastavení pro databázi tenanta jsou stejná jako pro databázi v režimu jednoho tenanta. Doporučené uživatelské role jsou <strong>db_datareader</strong>, <strong>db_datawriter</strong>, <strong>db_ddladmin</strong> a <strong>db_executor</strong>.</div>


        </li>
        <li>Přejděte do databáze <strong>AlvaoTenants</strong>, např. pomocí nástroje SQL Server Management Studio, upravte tabulku <em>Tenant</em> a vložte do ní příslušné hodnoty.<br />
            Např <ul>
     <li>Organizace = Zákazník 1</li>
     <li>Doména = zakaznik1.alvao.com</li>
     <li>ConnectionString = Data Source=server1;Initial Catalog=Zakaznik1; Max Pool Size=2000; Integrated Security=True;TrustServerCertificate=True</li>
 </ul>
        </li>
    </ol>

    <h3>Poskytovatel Alvao</h3>
    <p>
        Jeden z nájemců může být určen jako poskytovatel Alvao.<br />
        Poskytovatel má právo vytvářet <a href="../../../alvao-service-desk/news">Aktuální zprávy</a> i pro ostatní nájemce.<br />
        Chcete-li určit poskytovatele, nastavte sloupec <em>IsProvider</em> v jeho řádku v databázi nájemců na hodnotu 1 </p>




    <h3>Kolektor správy aktiv</h3>
    <ol>
        <li>Vytvořte novou složku s názvem nájemce v <em>C:\Program Files (x86)\ALVAO\ Asset Management Collector\</em>         <br />
            Např: <em>Zákazník 1</em></li>
        <li>Do této složky rozbalte balíček ZIP se soubory <em>AMCollector.zip</em> (viz Nastavení režimu Multitenant).</li>
        <li>Upravte soubor <strong><em>AMCollector.config</em></strong> a v části <em>configuration/database/connectionStrings</em> nastavte řetězec připojení k databázi nájemce.</li>
        <li>Spusťte skript <strong><em>CreateService.cmd</em></strong> ("jako správce") a vytvořte službu AM Collector pro nájemce. Skript spustí službu přímo.<br />
            <div class="note">
                <div class="icon">
                </div>
                <div class="title">
                    Poznámka         </div>
                Pro správné fungování služby doporučujeme vytvořit účet služby, kterému přiřadíte <a href="installation-server-manual#database-roles">dostatečná práva pro správu databáze</a>. Nájemce pak lze ve službách snadno identifikovat            </div>
             <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Pro správné fungování služby doporučujeme vytvořit účet služby, kterému přiřadíte dostatečná práva pro správu databáze (tj. práva <em>db_ddladmin, db_datawriter, db_datareader a db_executor</em>). Pod tímto účtem pak spouštějte všechny služby Collector. Nezapomeňte tomuto účtu také povolit přístup do složek, odkud bude provádět načítání souborů. Jedná se o složku <em>"C:\Windows\Temp"</em> a skrytou složku <em>"C:\ProgramData\ALC"</em>           </div>
        </li>
        <li>Přejděte do webové aplikace Alvao nájemce a v části <em>Správa - Asset Management - Servery</em> vytvořte nastavení pro konkrétní server.<br />
            <ul>
                <li>Zadejte název serveru v síti, na kterém jsou spuštěny služby Alvao.</li>
                <li>V části <em>Načítání souborů</em> povolte automatické načítání souborů CXM ze složky:<br />
                   <em>c:\ProgramData\Alvao Asset Management Collector\Detections\&lt;název organizace nájemce&gt;</em>           </li>
            </ul>
        </li>
    </ol>

    <h3>Webová služba Vlastní aplikace</h3>
    <ol>
        <li>V systému IIS vytvořte novou složku s názvem <i>AlvaoCustomAppsWebService_&lt;název organizace nájemce bez háčků, čárek, mezer a dalších speciálních znaků&gt;</i>, např.:<br />
           <em>C:\inetpub\wwwroot\AlvaoCustomAppsWebService_Zakaznik1</em></li>
        <li>Do této složky rozbalte balíček ZIP <em>CustomAppsWebService.zip (viz Nastavení režimu Multitenant</em> ).</li>
        <li>Upravte soubor <b>web.config</b>, např. pomocí Poznámkového bloku. Najděte část configuration/connectionStrings a nastavte řetězec připojení k databázi tenantů.</li>
        <li>Vytvořte fond aplikací speciálně pro webovou službu Custom Apps WebService tohoto tenantu se <a href="../../implementation/installation/own-iis-apppool">stejnými nastaveními</a>, jako mají ostatní aplikace Alvao. Identitu poolu ponechte na <b>ApplicationPoolIdentity</b>.</li>
        <li>Na serveru SQL Server nastavte účtu <b>IIS APPPOOL</b> oprávnění <b>db_datareader</b>, <b>db_datawriter</b> a <b>db_executor</b> pouze pro databázi nájemce.</li>
        <li>Ve <b>Správci IIS</b> vyberte nově vytvořenou složku a v kontextové nabídce vyberte možnost <b>Převést na aplikaci</b>. Vyberte fond aplikací vytvořený v předchozích krocích a potvrďte dialog stisknutím tlačítka OK.</li>
        <li>Zadejte správnou adresu služby do následujícího skriptu SQL a spusťte skript na databázi nového nájemce        <br />
            <pre translate="no" style="font-family: Consolas; font-size: 13px; color: black; background: white;" class="style2"><span style="color:blue;">exec</span>&nbsp;<span style="color:black;">spUpdateInsertProperty</span>&nbsp;<span style="color:red;">'CustomAppsWebService.Url'</span><span style="color:black;">, </span><span style="color:red;">'https://&lt;server&gt;/CustomAppsWebService_Zakaznik1'</span></pre>
        </li>
    </ol>
    <h2>Distribuce agentů AM</h2>
    <p>Nainstalujte agenty AM na počítače ve vaší organizaci pomocí následujících parametrů příkazového řádku:</p>
    <ul>
        <li>WSURL=&lt;adresa AM WS s konkrétní (sub)doménou nájemce&gt;, např.: https: <em><strong>//zakaznik1.alvao.com/AssetWebService/AssetWebService.asmx</strong></em></li>
        <li>AUTHCODE=&lt;autentizační kód&gt       <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Autentizační kód agenta byl vygenerován automaticky při vytvoření DB. Najdete jej v <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">globálním nastavení detekce</a>      </div>
        </li>
    </ul>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Agenty lze také rozšířit pomocí objektů GPO s přednastavenými parametry - viz <a href="../detection/agent">Instalace pomocí objektů GPO</a> nebo jiných nástrojů. 
    </div>

    <h2>Aktualizace nájemce</h2>
    <p>Všichni nájemci na určitém serveru musí být aktualizováni současně, protože sdílejí společné serverové aplikace. Pokud potřebujete upgradovat pouze některé nájemce, musíte je nejprve přesunout na jiný server.</p>
    <h3>Upgrade databáze</h3>
    <p>Pokud potřebujete provést upgrade databáze (instalace SP1 nebo nové "velké" verze), použijte nástroj <a href="database-deploy">DatabaseDeploy</a> k upgradu databází všech nájemců na novou verzi.</p>

    <h3>Webová služba správy aktiv</h3>
    <ol>
        <li>Nainstalujte novou verzi služby AM WS.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        AM WS je <strong>společný pro</strong> všechny nájemce na daném serveru    </div>
    <h3>Kolektor správy aktiv</h3>
    <ol>
        <li>Znovu vytvořte balíček ZIP pro aktuální verzi systému Alvao, viz výše.</li>
        <li>V nabídce <strong>Windows - Správa počítače - Služby a aplikace - Služby</strong> zastavte služby <em>AM Collector</em> pro všechny nájemce.<br />
            Poznámka: Tedy všechny služby <em>AM Collector</em>, které mají na konci názvu služby v závorce název organizace.</li>
        <li>Rozbalte připravený balíček ZIP <strong>bez</strong> souboru <strong>AMCollector.config</strong> postupně do složek všech nájemců, aby nedošlo k přepsání nastavení instancí.</li>
        <li>Znovu spusťte všechny služby.</li>
    </ol>

    <h3>Služba Alvao</h3>
    <ol>
        <li>Nainstalujte novou verzi služby Alvao.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Služba Alvao je <b>společná</b> pro všechny nájemce na daném serveru    </div>

    <h3>Webová aplikace</h3>
    <ol>
        <li>Nainstalujte novou verzi aplikace WebApp.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        WebApp je <strong>společná</strong> pro všechny nájemce na daném serveru    </div>

    <h3>Vlastní aplikace WebService</h3>
    <ol>
        <li>Znovu vytvořte balíček ZIP pro aktuální verzi systému Alvao, viz výše.</li>
        <li>Rozbalte připravený balíček ZIP <b>bez souboru web.config</b> postupně do složek nájemců, aby nedošlo k přepsání nastavení instancí.</li>
    </ol>
    <h2>Odstranění nájemce</h2>

    <ol>
        <li>Přejděte do databáze nájemců <strong>AlvaoTenants</strong> a upravte tabulku <strong>Tenant</strong>, najděte správného nájemce a odstraňte celý řádek.</li>
        <li>Na serveru SQL odstraňte databázi Alvao pro daného nájemce.</li>
    </ol>

    <h3>Kolektor správy majetku</h3>
    <ol>
        <li>Přejděte do <em>C:\Program Files (x86)\ALVAO\Asset Management Collector\</em> a najděte podsložku konkrétního nájemce.</li>
        <li>V této složce spusťte skript <strong>RemoveService.cmd</strong> ("jako správce").</li>
        <li>Odeberte celou složku nájemce.</li>
    </ol>

    <h3>Webová služba Vlastní aplikace</h3>
    <ol>
        <li>Ve <b>správci IIS</b> odstraňte aplikaci nájemce pomocí příkazu <b>Remove</b> v místní nabídce.</li>
        <li>Odstraňte fond aplikací pro službu Custom Apps WebService tohoto nájemce.</li>
        <li>Ve složce <em>C:\inetpub\wwwroot</em> odstraňte složku instance pro tohoto nájemce.</li>
    </ol>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 { margin-top: 0px; } .style2 { margin-top: 0px; } </style>

</asp:Content>

