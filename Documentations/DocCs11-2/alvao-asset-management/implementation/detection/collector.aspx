<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Collector</h1>
    <p>Detekční požadavky jsou zpracovávány samostatným programem Collector, který pravidelně prohledává databázi, a pokud najde nový nevyřízený požadavek, pokusí se jej vyřešit. Pokud počítač nelze detekovat, např. proto, že je právě vypnutý, požadavek se odloží a Collector se k němu vrátí později. Je možné naplánovat a nakonfigurovat Collector tak, aby zpracovával požadavky na detekci a vyhodnocení tak, aby nezatěžoval server SQL ani počítačovou síť, např. v provozní době, ale pracoval v noci, kdy jsou server SQL a síť málo vytížené.</p>
    <p>Collector lze spustit jako systémovou službu (doporučeno) nebo jako interaktivní aplikaci. Zástupce pro interaktivní spuštění Collectoru je přidán do nabídky Start při instalaci AM Console.</p>
    <p>Jako služba se Collector obvykle instaluje na server, ale můžete jej tímto způsobem nainstalovat i na pracovní stanici. Výhodou instalace služby je, že se Collector automaticky spustí při zapnutí počítače a běží, i když není přihlášen žádný interaktivní uživatel.</p>
    <p>Collector také může běžet na více počítačích v síti současně. Jednotlivé instance nástroje Collector pak sdílejí zadané požadavky na zjišťování a zpracovávají je společně.</p>
    <p>
        Další funkcí Collectoru je možnost <em>automatické aktualizace knihovny softwarových produktů (SwLib</em>). Collector podle <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">nastavení</a> zjišťuje dostupnost nové knihovny na internetu nebo načítá knihovnu z nastavené složky na disku serveru    </p>
    <p>
        Collector také umožňuje vyhledávat nové počítače v síti pomocí funkce <em>Network Search</em>. Tato funkce slouží k vyhledávání nových počítačů připojených k podnikové síti. Nově nalezené počítače se vytvářejí ve speciální složce - Found Computers Folder (Složka nalezených počítačů) ve stromu aktiv. Konfiguraci síťového vyhledávání lze změnit ve webové aplikaci v části <strong>Správa - Asset Management</strong><strong> - Servery</strong> pomocí příkazu <strong>Upravit</strong> v sekci <strong>Síťové vyhledávání</strong>. Je možné nakonfigurovat více Kolektorů, aby každý z nich prohledával pouze určitou část počítačové sítě, čímž se urychlí pravidelné prohledávání rozsáhlé podnikové sítě. Období skenování pro každý nakonfigurovaný rozsah lze individuálně měnit. Nastavená doba určuje, po jaké době bude Kolektor danou část sítě znovu skenovat    </p>
    <p>Collector obsahuje také funkci <em>Automatické načítání souborů pro ruční zjišťování</em>. Ta automaticky načítá soubory ručního zjišťování (*.CXM) z předem nastavené složky na pevném disku. Načtené detekce jsou buď přesunuty do podsložky &quot;Zpracováno&quot;, nebo jsou z pevného disku odstraněny. Toto chování lze zvolit v nastavení <strong>Read Files (Načtení souborů</strong> ).</p>
    <p>Collector také odesílá požadavky s nerozpoznaným softwarem a požadavky na přidání nového produktu do knihovny (pokud je tato funkce povolena) a pro správnou funkci vyžaduje připojení k internetu.</p>

    <h3>Nastavení</h3>

    <p>
       <strong>ALVAO - Asset Management Collector</strong>) pomocí příkazu Akce - <a href="../../../list-of-windows/alvao-asset-management-collector/actions/hidd-optgeneralpp">Nastavení</a>   </p>
    <p>
        Další nastavení Collectoru se provádí ve <strong>webové aplikaci ALVAO</strong> v nabídce <strong>Management - Asset Management</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/servers">Servers</a>(Správa - <strong>Asset Management</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/servers">Servery</a>)    </p>

    <h3>Konfigurační soubor AMCollector.config</h3>
    <p>
        V konfiguračním souboru jsou uloženy všechny lokální konfigurace z <a href="../../../list-of-windows/alvao-asset-management-collector/actions/hidd-optgeneralpp">nastavení Kolektoru</a>   </p>
    <ul>
        <li>Řetězec připojení k databázi</li>
        <li>Automatické spuštění po startu systému</li>
        <li>Konfigurace protokolování do protokolu událostí <em>AlvaoCollectoru</em> </li>
    </ul>
    <p>Collector lze tedy konfigurovat bez restartu služby úpravou tohoto konfiguračního souboru.</p>
    <h4>Prvky konfiguračního souboru</h4>
    <table class="wide">
        <tr>
            <th>Prvek</th>
            <th>Popis</th>
            <th>Přípustné hodnoty</th>
            <th>Výchozí hodnota</th>

        </tr>
        <tr>
            <td>database\connectionTimeout</td>
            <td>Časový limit připojení k DB v [s].</td>
            <td>INT number</td>
            <td>300</td>
        </tr>
        <tr>
            <td>database\connectionStrings\add[@name=&quot;Collector&quot;]</td>
            <td>Řetězec připojení k DB nastavený v nastavení Collectoru.</td>
            <td>connection string</td>
            <td>-</td>
        </tr>
        <tr>
            <td>ui\autoStart</td>
            <td>Automatické spuštění aplikace po spuštění operačního systému.</td>
            <td>0 = ne,<br />
                1 = ano</td>
            <td>0</td>
        </tr>
        <tr>
            <td>log[@active]</td>
            <td>Povolí/zakazuje protokolování událostí.</td>
            <td>0 = vypnuto,<br />
                1 = zapnuto</td>
            <td>0</td>
        </tr>
        <tr>
            <td>log\detailLevel</td>
            <td>Úroveň podrobnosti protokolování.</td>
            <td>0 = stav a chyby,<br />
                1 = normální,<br />
                2 = podrobné</td>
            <td>0</td>
        </tr>
        <tr>
            <td>log\writeProcessAliveHours</td>
            <td>Doba záznamu živého stavu (srdečního tepu) procesu detekce a skenování (v hodinách).</td>
            <td>INT číslo</td>
            <td>12</td>
        </tr>
    </table>


    <h3>Interaktivní spuštění sběrače</h3>
    <p>
        Collector se spouští jako interaktivní aplikace pomocí nabídky <strong>Start - ALVAO - Asset Management Collector</strong>. V pravém dolním rohu hlavního panelu systému Windows se zobrazí stavová ikona <img src="collector_icon.png" />. Dvojklikem na stavovou ikonu se otevře hlavní okno aplikace Collector se seznamem zpráv o provedených detekcích, včetně případných chybových hlášení    </p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o kolektor, můžete se obrátit na kolektor, který se nachází v blízkosti sběrného místa:</div>
        Když Kolektor vyřídí všechny požadavky v databázi, přejde do klidového stavu, kdy každé dvě minuty kontroluje databázi, zda nebyl zadán nový požadavek. Toto čekání můžete přeskočit pomocí tlačítka <img src="go.jpg" /></div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Jakmile Kolektor dokončí skenování všech síťových rozsahů, které jsou pro počítač nakonfigurovány, přejde funkce &quot;NetScan&quot; do klidového stavu, dokud nebude naplánováno další skenování rozsahu. Čekání můžete přeskočit kliknutím na tlačítko <img src="GoNetScan.jpg" /></div>
    <p>Aby nástroj Collector mohl zjišťovat data z počítačů s operačními systémy Windows 2000/XP/Vista/7 bez použití agenta, musí být spuštěn na uživatelském účtu s právy správce na zjišťovaných počítačích, tj. uživatel spouštějící nástroj Collector musí být správcem zjišťovaných počítačů. Druhou možností je spustit Collector pod jiným uživatelem kliknutím pravým tlačítkem myši na příkaz -Collector v nabídce Start se stisknutou klávesou <span class="key">Shift</span>, výběrem možnosti -Run As (Spustit jako) z místní nabídky a zadáním přihlašovacího jména a hesla příslušného uživatele.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud chcete zjistit hardware operačního systému IBM AIX prostřednictvím SSH, musíte mít v seznamu účtů přihlašovací údaje uživatele, který má oprávnění spouštět příkazy na vzdáleném počítači prostřednictvím SSH   </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

