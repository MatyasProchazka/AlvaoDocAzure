<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Detekce hardwaru a softwaru</h1>
    <p>Zjišťování hardwaru a softwaru počítačů v síti provádí správce tak, že nejprve zadá požadavky na zjišťování hardwaru a softwaru pro vybrané počítače v AM Console. Tyto požadavky jsou uloženy v databázi. AM Collector zpracovává požadavky a ukládá výsledky detekce zpět do databáze, kde jsou k dispozici pro zobrazení v AM Console.</p>

    <h2>Metody detekce</h2>

    <p>Hardware a software počítačů v síti lze zjistit instalací agentů (doporučeno). Další možnosti naleznete v části <a href="detection/detection-way">Výběr metody detekce</a>.</p>

    <div id="detection-options">
        <h2>Nastavení detekce</h2>

        <p>Každý počítač může používat jinou <a href="detection/detection-way">metodu detekce</a>. Který způsob detekce se použije pro ten který počítač, určuje <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles">profil detekce</a> přiřazený počítači. Ve výchozím nastavení používají všechny počítače profil detekce <em>Default (Výchozí)</em>. Nastavení tohoto profilu můžete změnit nebo můžete vytvořit vlastní detekční profily a přiřadit je počítačům, například ve stromu objektů na objektu typu počítač pomocí příkazu místní nabídky - <strong>Nastavit detekci</strong>.</p>
        <div class="tip">
           <div class="icon"></div>
            <div class="title">Tip:</div>
            Pokud chcete, aby počítač <strong>nebyl z</strong> nějakého důvodu <strong>detekovatelný</strong> (např. běží na operačních systémech Linux, Apple), zaškrtněte políčko <a href="../../list-of-windows/alvao-asset-management-console/edit/detection/detection-way">Způsob detekce pro</a> hardwarovou i softwarovou detekci. Nastavení detekce tímto způsobem pak zajistí, že hromadné požadavky nebudou generovat požadavky na detekci počítače        </div>
    </div>
    <div id="detection-request">
        <div class="note">
           <div class="icon"></div>
            <div class="title">Pozn:</div>
            Profil detekce, který se má použít při vytváření požadavků na detekci. Pozdější změna profilu neovlivní již vytvořené požadavky        </div>
        <div class="note">
           <div class="icon"></div>
            <div class="title">Pozn:</div>
            Pro každý počítač můžete definovat <em>vlastní nastavení detekce, které</em> se použije místo detekčního profilu. Tato možnost bude v budoucích verzích Alvao odstraněna a již se nedoporučuje        </div>
        <h2>Vytváření požadavků na detekci</h2>

        <p>Vytvoření požadavků na detekci více počítačů:</p>
        <ol>
            <li>Ve stromu objektů vyberte organizační složku, ve které chcete detekovat software.</li>
            <li>V <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a> vpravo nahoře vyberte pohled <strong>Objekty</strong> a Počítače.</li>
            <li>Vyberte počítače, které chcete detekovat. (Chcete-li vybrat celý seznam, stiskněte <span class="key">klávesovou zkratku</span> <span class="key">Ctrl+A</span>.) Poté klikněte pravým tlačítkem myši a z nabídky vyberte příkaz - <strong>Zjistit</strong>.</li>
            <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/edit/detection/general">Nová detekce - základní</a>, kde můžete zadat rozsah a způsob detekce. Ve výchozím nastavení můžete ponechat tuto <strong>volbu zapnutou. Použijte uložené nastavení</strong> a pokračujte tlačítkem <strong>OK</strong>.</li>
            <li>Průběh zpracování vytvořených požadavků můžete sledovat v hlavním okně na stránce <strong>Detekce</strong> ve sloupci <strong>Stav</strong>. Na kartě jsou zobrazeny všechny požadavky týkající se všech počítačů v organizační složce, která je aktuálně vybrána ve stromu.</li>
        </ol>
        <div class="tip">
           <div class="icon"></div>
            <div class="title">Tip: V případě, že se jedná o požadavky na vyžádání, které jsou v systému obsaženy, je možné je vyřadit z provozu:</div>
            Příkaz <em>Detekce </em>můžete použít také ve stromu objektů na konkrétním počítači        </div>

        <h3>Vytvoření požadavku na okamžitou detekci HW a SW</h3>

        <p>Chcete-li provést okamžitou detekci HW nebo SW, použijte následující postup:</p>
        <ol>
            <li>Ve stromu objektů v AM Console vyberte <strong>počítač</strong>.</li>
            <li>V místní nabídce vyberte příkaz <strong>Detect</strong>.</li>
            <li>Zobrazí se okno <strong>Nová detekce</strong>, ve kterém zapněte <strong>Detekci a okamžitě vyhodnoťte</strong>.<br />
                Poznámka: Pokud je vybrán jeden počítač, je tato možnost automaticky zapnuta.</li>
            <li>Dokončete nastavení detekce a zvolte <strong>OK</strong>.</li>
            <li>Nyní se na kartě <strong>Detekce</strong> vytvoří nový požadavek na detekci, který se Collector pokusí co nejrychleji provést a vyhodnotit. Pokud počítač již měl nevyřízený požadavek (například automaticky naplánovaný), bude tento požadavek nahrazen nově vytvořeným.<br />
            </li>
        </ol>
        <div class="tip">
           <div class="icon"></div>
            <div class="title">Tip:</div>
            Můžete také vybrat celou <strong>organizační jednotku</strong> a na kartě <strong>Objekty</strong> více počítačů najednou        </div>
        <div class="tip">
           <div class="icon"></div>
            <div class="title">Tip:</div>
            Okamžitou detekci lze zaručit pouze pro metody <em>Bez agenta</em>, <em>Agent přes TCP/IP</em> a <em>automatickou</em> detekci. Pokud potřebujete okamžitou detekci pomocí metody <em>Autonomní agent</em>, musíte zkrátit <a href="detection/agent">interval dotazování Agenta na WebService</a>       </div>
        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Takto zadané požadavky jsou prováděny od nejstaršího. Pokud je počítač vypnutý, je detekce odložena podle nastavení v části <em>WebApp - Manage - Asset Management - Servers - Edit</em> - nastavení v bloku <em>Detection</em>       </div>

        <h3>Vytvoření požadavku na okamžité vyhodnocení detekce</h3>

        <p>Pokud chcete vyhodnotit detekci okamžitě, použijte následující postup:</p>
        <ol>
            <li>Ve stromu vyberte konkrétní <strong>počítač</strong> nebo <strong>organizační jednotku</strong> a přejděte na kartu <strong>Detekce</strong>.</li>
            <li>Vyberte požadované detekce a v místní nabídce vyberte možnost <strong>Vyhodnotit nyní</strong>.</li>
            <li>Stav detekce se změní na &quot;Čeká na vyhodnocení detekce&quot;.</li>
            <li>Collector se nyní pokusí zpracovat požadavek co nejrychleji i mimo plán vyhodnocení detekce.</li>
        </ol>

        <h3>Zobrazení okamžitých požadavků na detekci</h3>

        <ol>
            <li>V <strong>AM Console</strong> vyberte ve stromu objektů požadovanou <strong>organizaci</strong>.</li>
            <li>Přejděte na kartu <strong>Detekce</strong>.</li>
            <li>Zobrazte sloupec <strong>Okamžitě</strong>, který určuje, zda má být požadavek zpracován okamžitě (pokud je zadán ručně, vyberte možnost <em>Detekovat a vyhodnotit okamžitě</em>).</li>
            <li>Pokud seznam požadavků <strong>seřadíte</strong> podle sloupce <strong>Ihned</strong>, můžete snadno najít všechny požadavky k okamžité detekci.</li>
        </ol>
    </div>



    <h2 id="#detection-repeat">Automatické plánování detekce</h2>
    <p>Doporučujeme počítače pravidelně detekovat pomocí automatického plánování detekce. Podle toho, jak aktuální informace chcete mít, zadejte období (počet dní), po kterém se má automaticky provést nová detekce a vyhodnocení. Když systém najde detekci starší než zadaný počet dní, vytvoří požadavek na novou detekci. Výchozí období se nastavuje v nabídce <strong>WebApp - Administration (Správa) - Asset Management (Správa majetku) - Detect Profiles (Profily detekce) - Edit (Upravit)</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Automatic Detection Scheduling Period (Období plánování automatické detekce)</a>.</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je detekce provedena v rámci jednoho z následujících režimů, je možné ji nastavit:</div>
        Po vytvoření a vyhodnocení nové detekce se doporučuje starší detekci zneplatnit. To lze nastavit v <strong>aplikaci WebApp</strong> - <strong>Administration</strong> - <strong>Asset Management</strong> - <strong>Settings</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Detection</a>zapnutím možnosti <strong>Maintain only one valid detection per computer (Udržovat pouze jednu platnou detekci na počítač</strong> )    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Kdy se budou detekce provádět a vyhodnocovat, lze určit v nastavení serveru: <strong>Alvao WebApp</strong> - <strong>Administration</strong> - <strong>Asset Management</strong> - <strong>Servers</strong> - <strong>Edit-</strong> block <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">Scheduling</a>   </div>

    <h2 id="HW_det">Detekce hardwaru</h2>

    <p>Při vložení nového počítače do registru se vytvoří pouze dvojice objektů Sestava - Počítač. Po dokončení detekce hardwaru se v sestavě a počítači objeví další objekty představující detekované části sestavy nebo komponenty počítače.</p>
    <p>Při pozdější opětovné detekci hardwaru počítače se ve výchozím nastavení odstraní všechny součásti počítače a nahradí se aktuálně detekovanými. Objekty, které jsou takto automaticky aktualizovány podle detekce hardwaru, jsou ve stromu označeny žlutým trojúhelníkem. Součásti sestavy se neaktualizují. Nové objekty se vytvoří pouze tehdy, pokud například připojíte tiskárnu apod.</p>
    <p>
        U každého objektu v sestavě počítače můžete nastavit, zda má být automaticky aktualizován, nebo ne. Ve stromu objektů klikněte na objekt pravým tlačítkem myši a v zobrazené nabídce klikněte na možnost Upravit. Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/edit/object/general">Objekt - Obecné</a>, kde můžete zapnout nebo vypnout volbu <strong>Automaticky aktualizovat na základě detekce</strong>   </p>
    <div>
        <img src="detection/sample_pc39a.png" width="239" height="378" /></div>
    <div>
        <img src="detection/sample_pc39b.png" width="830" height="379" /></div>
    <p>Na obrázcích jsou zobrazena výchozí nastavení, kterými se řídí nastavení šablony objektu (první na kartě Vlastnosti, druhý v okně Detail). Součásti uvnitř počítače se automaticky aktualizují, pokud se nad nimi zobrazí žlutý trojúhelník. Komponenty sestavy se nemění.</p>
    <p>
        Objekty, které se neaktualizují automaticky, je třeba aktualizovat ručně. Pokud kliknete pravým tlačítkem myši na počítač ve stromu a z nabídky vyberete <strong>Hardware - Podrobnosti</strong>, otevře se na obrazovce okno <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/hardware">Detail detekce hardwaru</a> s podrobným zobrazením poslední provedené detekce hardwaru, kterou můžete sledovat    </p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění: V případě, že se jedná o zařízení, které je v rozporu se zákonem o ochraně osobních údajů, je možné, abyste se podívali na jeho obsah:</div>
        Vzhledem k tomu, že aktualizace probíhá odstraněním stávajících a vytvořením nových objektů, nepište k automaticky aktualizovaným objektům žádné poznámky, nevytvářejte vazby na dokumenty apod. Při příští detekci hardwaru byste o tyto informace přišli. Pokud chcete zachovat komponentu, například pevný disk, jako samostatný prostředek s poznámkami a dokumenty, nejprve pro ni zakažte automatickou aktualizaci    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Pokud máte v počítači dva nebo více pevných disků a vypnete automatickou aktualizaci pro jeden z nich, zbývající pevné disky nebudou aktualizovány. Je to proto, že systém nedokáže přesně přiřadit zjištěné jednotky k jednotkám v registru a neví, které má aktualizovat a které ne  </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Objekty ve stromu jsou automaticky aktualizovány podle provedené detekce hardwaru pouze v případě, že je v profilu detekce povolena možnost <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Aktualizovat objekty ve stromu</a>   </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Pokud se stane, že klíčové identifikační součásti počítače obsahují duplicitní a nesmyslné hodnoty sériového čísla (např. více základních desek se sériovým číslem: 000000), je možné tyto hodnoty přidat na tzv. <a href="detection/blacklist-hw">černou listinu HW</a></div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        Hodnoty následujících vlastností se automaticky aktualizují podle detekce hardwaru, pokud jsou obsaženy v objektu typu počítač        <ul>
            <li>Celková kapacita pevného disku (GB)</li>
            <li>Typ skříně</li>
            <li>Grafická karta</li>
            <li>Hostitelský počítač</li>
            <li>IP adresy</li>
            <li>Adresy MAC</li>
            <li>Model</li>
            <li>Naposledy přihlášený uživatel (uživatelské jméno)</li>
            <li>Operační systém</li>
            <li>Počet fyzických jader CPU</li>
            <li>Počet logických jader CPU</li>
            <li>Počet pevných disků</li>
            <li>Počet procesorů</li>
            <li>Popis</li>
            <li>Procesor</li>
            <li>Sériové číslo systému BIOS</li>
            <li>Část domény</li>
            <li>Velikost paměti RAM (GB)</li>
            <li>Výrobce</li>
        </ul>

    </div>

    <h2 id="SW_det">Zjištění softwaru</h2>

    <p>
        Pokud je v profilu detekce povolena možnost <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Aktualizovat protokol instalace pro</a> detekci softwaru, výsledek detekce se automaticky vyhodnotí s knihovnou softwarových produktů a zapíše se do <a href="../software-management/software-detection#installation-log">protokolu instalace</a>, záznamy o instalacích nebo odinstalacích produktů se automaticky zapíší tak, aby zaznamenaný stav odpovídal zjištěnému stavu. Záznamy jsou vytvářeny s datem zpracování detekce    </p>
    <p>
        Pokud zakážete možnost <a href="../../list-of-windows/alvao-webapp/administration/asset-management/detect-profiles/create-profile">Aktualizovat záznamy o instalaci</a>, můžete záznamy o instalaci aktualizovat ručně tak, že v hlavním okně na kartě <strong>Detekce</strong> kliknete pravým tlačítkem myši na příslušný detekovaný software a z nabídky vyberete možnost <strong>Software - Porovnat se stavem instalace</strong>. Na obrazovce se zobrazí okno <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/compare/compare-install-vs-detection">Záznamy o instalaci vs. detekce softwaru</a>, kde jsou zobrazeny záznamy, které je třeba vytvořit v záznamu o instalaci. V seznamu můžete vybrat pouze některé položky a nechat je vytvořit podle vlastního uvážení    </p>
    <p>Pro správné vyhodnocení detekce softwaru je proto vhodné před odesláním požadavku na detekci do databáze načíst aktuální knihovnu softwarových produktů pomocí <strong>Software - Software Product Library - Load Current Library</strong>. Při spuštění tohoto příkazu po detekci softwaru se u všech počítačů znovu vyhodnotí poslední detekce provedené proti aktualizované knihovně a v případě potřeby se aktualizují záznamy o instalaci.</p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud systém některé programy nedetekuje a na kartě <strong>Software</strong> vidíte nerozpoznané záznamy, vyberte nerozpoznané záznamy a použijte příkaz <strong>Odeslat SW k identifikaci.</strong>.. z místní nabídky. Zobrazí se průvodce, ve kterém můžete zadat rozšířené informace o nerozpoznaných záznamech, a po dokončení tohoto průvodce bude vytvořen požadavek, který Collector odešle našim specialistům. Ti přidají nerozpoznané produkty do standardní knihovny. Po stažení nové knihovny budou záznamy rozpoznány    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
       <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">Chcete-li zobrazit podrobnosti o detek</a>ci <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">softwaru</a>, klikněte pravým tlačítkem myši na počítač ve stromu a vyberte <strong>z nabídky Software - Podrobnosti</strong>   </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

