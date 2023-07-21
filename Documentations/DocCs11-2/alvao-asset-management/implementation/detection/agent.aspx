<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Agent</h1>

    <h2>Instalace</h2>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Než začnete instalovat Agenta, prostudujte si <a href="detection-way">kapitoly Výběr detekční cesty</a>, kde se dozvíte více o používání Agenta    </div>
    <p>Instalaci může provádět pouze uživatel s právy správce počítače.</p>
    <ol>
        <li>Na stanicích, na které chcete Agenta nainstalovat, spusťte soubor <em>AlvaoAssetAgent.msi.</em></li>
        <li>Na obrazovce se otevře průvodce instalací. Na stránce <a href="../../../list-of-windows/alvao-asset-management-agent-setup/settings">Nastavení</a> zadejte parametry instalace. Postupujte podle pokynů průvodce.</li>
    </ol>
    <p>Pokud instalace proběhla správně, je na disku složka <em>C:\Program Files\ALVAO\Asset Management Agent</em>, ve které jsou uloženy spustitelné soubory Agenta. V systému musí existovat systémová služba s názvem <em>ALVAO Asset Management Agent X.X.X</em>.</p>

    <h3>Parametry instalace</h3>
    <ul>
        <li><strong>WSURL</strong> - adresa webové služby ALVAO Asset Management, např. <span class="console">http://server/assetwebservice/assetwebservice.asmx</span>.</li>
        <li><strong>AUTHCODE</strong> - ověřovací kód agenta.</li>
        <li><strong>USETCP</strong> - povoluje připojení agenta přes TCP/IP - možné hodnoty parametrů jsou <span class="console">ano</span> nebo <span class="console">ne</span>.</li>
        <li><strong>PORT</strong> - číslo portu TCP/IP, na kterém agent naslouchá (ve výchozím nastavení je to port 760). Pokud se připojujete prostřednictvím protokolu TCP/IP.</li>
    </ul>
    <p>
        Příklad nastavení parametrů v tiché instalaci - ověřovací kód agenta je 1234 a agent bude používat TCP/IP failover a port, na kterém agent naslouchá, je 760   <br />
        msiexec /i AlvaoAssetAgent.msi /quiet <strong>WSURL=</strong><em>&quot;https://app.company.com/assetwebservice/assetwebservice.asmx&quot;</em> <strong>AUTHCODE=</strong><em>&quot;1234&quot;</em> <strong>USETCP=</strong><em>&quot;yes&quot;</em> <strong>PORT=</strong><em>&quot;760</em>&quot    </p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pro úspěšnou instalaci je nezbytné spustit skript s právy správce    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Agenta můžete také dodatečně změnit tak, že jej spustíte jako aplikaci (obvykle <em>C:\Program Files (x86)\ALVAO\Asset Management Agent\Agent.exe</em>) a použijete možnost <strong>Settings</strong>   </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud máte s nainstalovaným agentem nějaké problémy, může vám je pomoci vyřešit soubor protokolu, který agent při svém spuštění generuje. Ve výchozím nastavení je generování protokolu zakázáno. Můžete jej zapnout spuštěním souboru AMAgent.exe z adresáře aplikace. Na první stránce vyberte možnost <strong>Settings (Nastavení)</strong> a na další stránce zaškrtněte možnost <strong>Generate log file (Generovat soubor protokolu)</strong>. Nastavte možnost Detail protokolu na hodnotu Detailní. Protokol služby se pak bude ukládat do souboru <em>agsvc.log</em>   </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění: V případě, že se v systému objevily chyby, je třeba zadat, že se v systému objevily chyby:</div>
        Pokud nastavíte detail souboru protokolu na hodnotu <strong>Podrobný</strong>, bude agent generovat velké množství dat do souboru protokolu a rychlost detekce se velmi zpomalí. Nastavení na hodnotu <strong>Podrobné</strong> se proto doporučuje pouze pro řešení problémů a vůbec se nedoporučuje používat v běžném provozu    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud chcete agenta používat v operačních systémech Windows 95/98/ME, musíte si nainstalovat Agenta verze 5.0!!! - další informace naleznete v příručce k verzi 5.0 (ep.chm), kterou naleznete v nainstalované aplikaci Záznamy o počítači 5.0.<br />
        Také v systému Windows 2000 je nutné použít Agenta 5.10 a nižší.<br />
        V systému Windows XP musíte použít Agenta 10.0    </div>

    <h3>Instalace prostřednictvím GPO</h3>
    <p>
        Pokud instalujete Agenta prostřednictvím GPO na 32bitový operační systém a chcete nastavit komunikaci s webovou službou AM nebo prostřednictvím protokolu TCP/IP, použijte následující <a href="AMAgent.admx">soubor ADMX 32b</a> a <a href="AMAgent.adml">soubor ADML 32b</a>. Soubor ADML umístěte do složky s lokalizačními soubory (v případě serveru EN Windows do složky <em>en-US</em> )    </p>
    <p>
        Pokud instalujete Agenta prostřednictvím GPO na 64bitový operační systém a chcete nastavit komunikaci s webovou službou AM nebo prostřednictvím protokolu TCP/IP, použijte následující <a href="AMAgent_64b.admx">soubor ADMX 64b</a> a <a href="AMAgent_64b.adml">soubor ADML 64b</a>. Soubor ADML umístěte do složky s lokalizačními soubory (v případě serveru EN Windows do složky <em>en-US</em> )    </p>

    <h3>Automatická aktualizace</h3>
    <p>Agent ALVAO se automaticky aktualizuje, když při komunikaci s webovou službou AM zjistí novější verzi. Agent zjistí novou verzi při spuštění nebo restartu a dále jednou denně.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při diagnostice případných problémů s automatickou aktualizací agenta zapněte <a href="../../../list-of-windows/alvao-asset-management-agent/settings/general">podrobný protokol</a>. Při aktualizaci agent nejprve stáhne nový instalační balíček do podsložky Update ve složce, kde je agent nainstalován (obvykle C:\Program Files (x86)\ALVAO\Asset Management Agent). Ve stejné složce po instalaci najdete instalační protokol <em>AMAgent_MSI_upgrade.log</em>   </div>

    <h2 id="settings">Nastavení autonomního agenta</h2>
    <p>V základní konfiguraci agent každé 2 hodiny kontaktuje webovou službu Asset Management WebService, aby zjistil, zda má provést zjišťování počítače. Pokud se agentovi nepodaří odeslat zjišťování, pokusí se o to znovu po 15 minutách. Tyto hodnoty lze změnit vytvořením hodnot v registru počítače, na kterém je agent nainstalován:</p>
    <table>
        <tr>
            <th>Název hodnoty</th>
            <th>Typ</th>
            <th>Výchozí hodnota</th>
        </tr>
        <tr>
            <td>ScheduleUpdateIntervalMinutes</td>
            <td>REG_DWORD</td>
            <td>120</td>
        </tr>
        <tr>
            <td>DetectionUploadRetryIntervalMinutes</td>
            <td>REG_DWORD</td>
            <td>15</td>
        </tr>
    </table>

    <ul>
        <li>32bitový OS<pre class="console" translate="no">SOFTWARE\ALC\ALVAO Asset Management\Agent</pre></li>
        <li>64bitový OS<pre class="console" translate="no">SOFTWARE\Wow6432Node\ALC\ALVAO Asset Management\Agent</pre></li>
    </ul>


    <h2>Nastavení webové služby</h2>
    <p>
        Webová služba ukládá přijaté detekce do adresáře nebo blobového úložiště Microsoft Azure nakonfigurovaného v <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Správa - Asset Management - Nastavení - Detekce - Načítání souborů</a>   </p>
    
    <h2>Zjištění důvodu, proč agent nekomunikuje s WS</h2>
    <p>Při diagnostice pomůže text výjimky nebo chybový kód Agenta. Ten lze zjistit následujícím způsobem:</p>
    <ol>
        <li>Spusťte v adresáři Agenta instalační soubor <em>AMAgent.exe . </em></li>
        <li>Zobrazí se okno, ve kterém vyberte možnost <strong>Nastavení</strong>. a stiskněte tlačítko <em>Další</em>.</li>
        <li>Na kartě <em>Obecné</em> povolte možnost <strong>Zapisovat protokol do souboru</strong> a pro detail vyberte <em>Stav a chyby</em>.</li>
        <li>Změnu nastavení potvrďte tlačítkem <em>OK</em>.</li>
        <li>Restartujte službu Agent.  Agent se okamžitě pokusí připojit k webové službě.</li>
        <li>V instalačním adresáři Agenta vyhledejte soubor <em>agsvc.log</em>a otevřete jej například v Poznámkovém bloku.</li>
        <li>V protokolu vyhledejte řádek: <pre class="console" translate="no">[CheckDetectSchedule] calling WS end with error: ...</pre><p>
                Následuje buď text výjimky, nebo kód chyby     <br />
                <br />
                Výjimka vrácená webovou službou - např. chyba autentizace, počítač není v DB atd   <br />
                <br />
                Chybový kód může indikovat problém se zabezpečenou komunikací. V takovém případě by měl být uveden číselný kód chyby. Podrobnosti o chybě pak naleznete na <a href="https://learn.microsoft.com/en-us/windows/win32/debug/system-error-codes#system-error-codes">stránkách Microsoft learn</a>    <br />
                Pokud je chyba v komunikaci, pak se obvykle jedná o kód 12xxx, který naleznete na <a href="https://learn.microsoft.com/en-us/windows/win32/wininet/wininet-errors">této stránce</a>       </p>
        </li>
    </ol>


    <h2>Příkazový řádek</h2>
    <p>Agent umožňuje spuštění z příkazového řádku se zadanými parametry. V této kapitole najdete podrobný popis všech parametrů příkazového řádku.</p>
    <p>Parametry: Příkazový řádek, který obsahuje parametry příkazového řádku:</p>
    <ul>
        <li><strong>/dd</strong> - okamžitá detekce zařízení v počítači, kde je Agent spuštěn. (funguje pouze společně s parametrem <span><strong>/df</strong></span> )</li>
        <li><strong>/dsw</strong> - okamžitá detekce software v počítači, kde je spuštěn Agent. Pomocí tohoto přepínače se provede úplná detekce, včetně souborů na všech pevných discích bez výjimky. (funguje pouze společně s parametrem <strong>/df</strong> )</li>
        <li><strong>/dssw</strong> - okamžitá detekce software v počítači, kde je spuštěn Agent. S tímto přepínačem se provádí běžná detekce software. (funguje pouze společně s parametrem <strong>/df</strong> )</li>
        <li><strong>/df</strong> - provede vybrané typy detekce (parametr <strong>/dd</strong><strong>,/dsw</strong>, <strong>/dssw</strong>) a výsledné soubory detekce uloží do adresáře, ze kterého je spuštěn Agent, nebo do složky zadané za parametrem <strong>/f</strong>.</li>
        <li><strong>/f <em><span class="console">[cesta]</span></em></strong> - cesta ke sdílené složce nebo cesta, kam se ukládají vybrané detekce (parametr <strong>/df</strong>). Určuje cestu ke sdílené složce, kam se ukládají požadavky na detekci. Není-li tento parametr zadán, použije se cesta uvedená v nastavení agenta (volba <strong>Nastavení</strong> po spuštění agenta z nabídky -. Spustit). Pokud není tento parametr ani cesta v nastavení Agenta zadána, <em>použije se<span class="console">cesta k instalaci serveru</span>. \Share</em>.</li>
        <li><strong>/l <em><span class="console">[soubor]</span></em></strong> - agent bude vytvářet protokol do souboru uvedeného za parametrem.</li>
        <li><strong>/v <em><span class="console">[číslo]</span></em></strong> - detail logování bude nastaven na zadanou úroveň (funguje pouze s parametrem <strong>/l</strong> ). <em>Úrovně: 0 = Stav a chyby, 1 = Normální, 2 = Plná</em>.</li>
        <li><strong>/s</strong> - agent se spustí skrytě, tj. na obrazovce se nezobrazí žádné informační okno.</li>
        <li><strong>/h</strong> - zobrazí se okno nápovědy pro parametry příkazového řádku.</li>
    </ul>
    <div class="tooltip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud chcete provést úplnou detekci softwaru a vynechat některé disky nebo cesty, musíte agenta spustit bez příkazového řádku a správně nastavit parametry detekce softwaru v průvodci    </div>

    <p><strong>Příklad 7. Agent - příklad zjišťování zařízení a softwaru</strong></p>
    <p>Chceme spustit agenta tak, aby okamžitě provedl detekci zařízení a běžnou detekci software a uložil detekční soubory do složky D:\Detection</p>
    <pre class="console" translate="no">AMAgent /dd /dssw /df /f D:\Detection</pre>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud použijete Agenta k vytvoření detekčních souborů, názvy souborů budou automaticky vytvořeny podle názvu počítače a přidáním přípony <em>_SW</em> pro detekci software a <em>_HW</em> pro detekci zařízení.<p>
            Například: pro počítač s názvem <em>STANDAPC</em> vytvoří Agent soubory <em>STANDAPC_SW.cxm</em> a <em>STANDAPC_HW.cxm </em>       </p>
    </div>
</asp:Content>

