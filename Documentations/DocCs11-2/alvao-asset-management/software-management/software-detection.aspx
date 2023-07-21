<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Detekce software</h1>
    <p>Detekce software zahrnuje informace o souborech na discích počítače a záznamy v registru systému Windows. Knihovna softwarových produktů se pak používá k vytvoření seznamu nainstalovaných produktů na základě zjištěných údajů.</p>
    <p>Předpokladem správného vyhodnocení detekcí softwaru je aktuální knihovna softwarových produktů. Knihovna je pravidelně aktualizována pomocí nástroje AM Collector, viz <strong>Webová aplikace - Správa - Asset Management - Servery</strong> - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">Nový server</a> - <strong>Knihovna softwarových produktů</strong>. Knihovnu můžete aktualizovat také ručně v <strong>AM Console - Software - Software Products Library</strong> - <a href="../../list-of-windows/alvao-asset-management-console/software/sw-products-library/load-library-1">Read the current library (Přečíst aktuální knihovnu)</a>.</p>
    <p>
        Aby systém mohl provádět detekci softwaru, musí být ve stromu zaregistrovány všechny počítače, které chcete detekovat. Stačí, aby ve stromu existoval objekt typu <em>počítač</em>. Není nutné provádět detekci hardware. další informace o přidávání počítačů do registru naleznete v části <a href="../implementation/insert-computers">Vložení počítačů do evidence</a>   </p>
    <p>
        Postup provádění detekce je popsán v kapitole <a href="../implementation/detection">Detekce hardware a software</a>   </p>
    <p>
        Poté, co nástroj Collector provede detekci a načte ji do databáze, automaticky ji vyhodnotí podle knihovny softwarových produktů a aktualizuje <a href="#installation-log">protokol o instalaci</a>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Po načtení knihovny do databáze se aplikace identifikuje službě Alvao pomocí údajů obsažených v aktivačním klíči    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud systém některé programy nedetekuje a na kartě <strong>Software</strong> vidíte nerozpoznané záznamy, vyberte nerozpoznané záznamy a použijte příkaz <strong>Odeslat SW k identifikaci.</strong>.. z místní nabídky. Zobrazí se průvodce, ve kterém můžete zadat rozšířené informace o nerozpoznaných záznamech, a po dokončení tohoto průvodce bude vytvořen požadavek, který Collector odešle našim specialistům. Ti přidají nerozpoznané produkty do standardní knihovny. Aktualizovanou knihovnu si pak budete moci stáhnout z internetu pomocí příkazu <strong>Software - Software Products Library - Load current library</strong>. Po stažení nové knihovny a opětovném vyhodnocení příslušných detekcí budou záznamy rozpoznány    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Knihovnu softwarových produktů můžete také rozšířit vlastním způsobem, viz část <a href="custom-swlib">Vlastní knihovna softwarových produktů</a>   </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Protokol o instalaci počítače je automaticky aktualizován detekcí softwaru pouze v případě, že je tato možnost povolena v <a href="../implementation/detection#detection-options">nastavení detekce</a> počítače    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je tato možnost aktivována, je nutné, abyste se ujistili, že software je v pořádku:</div>
        Rychlý přehled softwaru nainstalovaného v konkrétním počítači nebo v organizační složce lze zobrazit na kartě <strong>Software</strong> v <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a> konzoly AM  </div>

    <h2 id="installation_registry">Registr instalací</h2>
    <p>V registru instalací jsou pro každý počítač uchovávány záznamy o tom, který program (softwarový produkt) byl kdy a kým do počítače nainstalován, případně kdy byl odinstalován. Podobně mohou být zaznamenány i záznamy o aktivaci, konfiguraci atd. Při pravidelném zjišťování softwaru se v protokolu instalací automaticky vytvářejí záznamy o instalacích nebo odinstalacích programů tak, aby aktuální stav protokolu instalací odpovídal zjištěnému stavu.</p>
    <p>
        Protokol instalací otevřete buď z hlavní nabídky pomocí <strong>Software - Installation Log</strong>, nebo kliknutím pravým tlačítkem myši ve stromu na libovolném počítači a výběrem <strong>Software - Installation Records</strong>   </p>
    <p>
        V obou případech se na obrazovce zobrazí <a href="../../list-of-windows/alvao-asset-management-console/software/installation-registry">Záznam o instalaci</a> se seznamem záznamů v Záznamu o instalaci. K úpravě seznamu použijte tlačítka na pravém okraji okna    </p>


    <h3>Ruční aktualizace Záznamy o instalaci</h3>
    <p>
        Při načtení nové detekce softwaru se automaticky aktualizuje Protokol o instalaci tak, aby odpovídal zjištěnému stavu. Pokud chcete Protokol o instalaci aktualizovat ručně, můžete automatickou aktualizaci zakázat v Nastavení detekce (viz <a href="../implementation/detection#detection-options">Nastavení detekce</a>) vypnutím možnosti <strong>Detekce software</strong> - <strong>Detekce software</strong>Aktualizace záznamů o instalaci</strong></p>
    <p>Po získání detekce softwaru aktualizujete Záznam o instalaci následujícím způsobem:</p>
    <ol>
        <li>Na kartě <strong>Detekce</strong> v pravém horním rohu <a href="../../list-of-windows/alvao-asset-management-console">hlavního okna konzoly AM</a> vyberte příslušnou detekci softwaru, klikněte na ni pravým tlačítkem myši a vyberte možnost <strong>Software - Porovnat se stavem instalace</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/compare/compare-install-vs-detection">Evidence instalace vs. detekce softwaru</a> se souhrnem zjištěných rozdílů mezi vybranou detekcí softwaru a stavem Evidence instalace.</li>
        <li>V okně vyberte změny, které chcete provést v protokolu instalace, a stiskněte tlačítko <strong>Vytvořit chybějící položky</strong>.</li>
    </ol>
    <p>
        Další možností je ruční zápis záznamů do Záznamu o instalaci přímo v <a href="../../list-of-windows/alvao-asset-management-console/software/installation-registry">Záznamu o instalaci</a>   </p>


    <h3>Protokol o instalaci</h3>
    <p>Evidence instalací plní funkci tzv. <em>instalačního protokolu</em> podle usnesení vlády č. 624/01, které platí pro ministerstva a jiné orgány veřejné správy v České republice. Pro dodržení tohoto usnesení doporučujeme ponechat zapnutou automatickou aktualizaci Registru instalací podle detekce softwaru. Zaměstnanec, který je v organizaci odpovědný za instalace softwaru, by měl autorizovat automaticky vytvořenou evidenci instalací zadáním jako osoba, která instalaci nebo odinstalaci provedla.</p>
    <p>
        Na kartě <strong>Software</strong>, která zobrazuje přehled softwarových produktů na konkrétním počítači, můžete zobrazit sloupec <strong>Autorizované instalace</strong>. Pokud je ve sloupci uvedena hodnota <em>Ano</em>, instalace byla autorizována (schválena) konkrétní osobou.<br />
        Ve sloupci <strong>Instalováno</strong> lze také zobrazit datum instalace a pracovníka, který ji provedl. Pokud byla licence přidělena automaticky, tyto informace se nevyplňují    </p>
    <p>Licenci lze schválit dvěma způsoby:</p>
    <ul>
        <li>Přidělení licence - pokud licenci přidělila určitá osoba (nikoli automaticky), je tato osoba zároveň tím, kdo instalaci provedl a schválil.</li>
        <li>Ruční autorizace - na kartě <strong>Software</strong> lze vybrané produkty (i hromadně) schválit k instalaci pomocí příkazu <strong>Software</strong>. Upravit</strong> z místní nabídky.</li>
    </ul>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        K legálnímu používání některých produktů (např. <em>freeware</em>) není vyžadována licence. Má-li však být vyhláška splněna, pak pokud je takový produkt zjištěn, je třeba jej ještě ručně schválit příslušnými pracovníky, i když k produktu není přiřazena žádná licence    </div>
</asp:Content>
