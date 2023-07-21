<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vložení počítačů do evidence</h1>
    <p>Následující kapitoly popisují různé způsoby zápisu počítačů do registru.</p>

    <h2>Vyhledávání počítačů v síti</h2>
    <p>Nejprve necháme systém vyhledávat počítače v síti a hromadně vytvářet objekty představující počítačové sestavy.</p>
   <ol>
       <li>Ve stromu objektů klepněte pravým tlačítkem myši na kořenový objekt Organizace nebo na jiný objekt Organizace, do kterého chcete počítače vložit.</li> <li>Z nabídky vyberte příkaz <strong>Nový počítač</strong>.</li> <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computer">Nový počítač</a></li>, <li>ve kterém vyberte možnost <strong>Hledat nové počítače v síti</strong> a stiskněte tlačítko <strong>Další</strong>.</li> <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computers">Nové počítače</a>. Vyberte metodu, která bude použita pro vyhledávání nových počítačů v síti, a stiskněte tlačítko <strong>Další</strong>. <li>Program vyhledá počítače a přidá je do stromu, což může trvat několik minut. Ještě předtím <a href="../../list-of-windows/alvao-asset-management-console/date-time">se zobrazí okno Datum a čas</a>, do kterého můžete zadat skutečné datum uvedení počítačů do provozu, pokud je zadáváte dodatečně.<br />Poznámka: Dotaz na datum a čas lze vypnout.</li>V takovém <li>případě se při přidání nového počítače již nezobrazí</li>. <li>Tlačítkem <strong>Storno</strong> dotaz na to, zda se mají zjišťovat softwarové a hardwarové údaje nalezených počítačů, odmítnete. Detekci provedeme později. Detekci můžete provést také okamžitě.</li> </ol>V takovém <ol> <li>případě budou data detekována podle <a href="detection#detection-options">globálního nastavení detekce</a></li>. <li>Vytvořené sestavy počítačů přesuňte ve stromu pod příslušné uživatele</li> </ol>   <p>Každý nalezený počítač je ve stromu reprezentován dvojicí objektů Assembly (tj. sestava počítače) a Computer. Například počítač ARTUR ve stromu vypadá takto:</p>
   <img src="artur.jpg" />
    <p>Horní objekt představuje sestavu počítače a spodní objekt představuje samotný počítač. Počítač je součástí sestavy. Sestava může obsahovat také monitor, tiskárnu, klávesnici, myš atd. Objekt sestavy slouží pouze jako složka, která seskupuje jednotlivá zařízení, která jsou vzájemně propojena. Protože se nejedná o skutečný objekt, neměl by mít žádné vlastnosti.</p>
    <p>Pokud není detekován hardware počítače, budou ve stromu viditelné pouze tyto dva základní objekty. Po provedení detekce se objeví další detekované součásti sestavy (monitor, tiskárny, ...) a také součásti počítače (procesor, paměť, pevné disky, grafická karta, ...).</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud později necháte stejným způsobem vyhledat síťové počítače, do stromu se přidají pouze nové počítače. 
    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Služba Collector obsahuje také funkci automatického vyhledávání počítačů v síti. Chcete-li nastavit skenování sítě, použijte <strong>webovou aplikaci - Správa - Asset Management - Servery</strong>, funkce se nachází v bloku <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/detail/scan-network">Skenování sítě</a>   </div>
    <h2>Vložte jeden počítač</h2>
    <p>Pokud chcete do inventáře přidat pouze jeden konkrétní počítač, u kterého lze zjistit hardware a software, postupujte následovně:</p>
    <ol>
        <li>Ve stromu objektů vyberte uživatele, pod kterým chcete vytvořit nový počítač, a v místní nabídce vyberte <strong>Nový počítač</strong>.</li>
        <li>Na obrazovce <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computer">Nový počítač</a> se otevře okno, ve kterém vyberte možnost <strong>Vytvořit počítač ručně</strong>. Vyberte druh objektu počítač a zadejte název v síti pro nový počítač. Vyberte také možnost <strong>Zjistit informace o počítači v síti pomocí uložených nastavení</strong>. Nakonec stiskněte tlačítko <strong>Další</strong>.<br />
            Poznámka: Pokud je aktivní číselná řada pro vybraný typ počítače, název sítě nelze zadat ručně, ale vygeneruje se automaticky.</li>
        <li>Program přidá počítač do stromu objektů. Ještě předtím se zobrazí okno<a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a>, kde můžete zadat skutečné datum uvedení počítače do provozu, pokud jej do registru přidáváte dodatečně.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o počítač s počítačem, který je v provozu, je možné použít tzv:</div>
        Pokud počítač není připojen k síti, můžete hardware a software zjistit ručně pomocí programu Agent.exe a výsledné soubory načíst do Konzoly AM. V takovém případě na počítači ve stromu vyberte v místní nabídce položku <strong>Nastavení detekce.</strong>.., v okně vyberte položku <strong>Vlastní nastavení detekce</strong> a na kartě <strong>Způsob detekce</strong> vyberte položku <em>Způsob detekce</strong>. ručně </em>   </div>

    <h2>Automatické vytvoření počítače pomocí autonomního agenta</h2>
    <p>Používáte-li ke zjišťování počítačů autonomní agenty a chcete, aby se nové počítače s nainstalovaným agentem automaticky přidávaly do inventáře, postupujte následovně:</p>
    <ul>
        <li>V novém počítači <a href="detection/agent">nainstalujte a nastavte</a> autonomního agenta.</li>
        <li>V nastavení <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">detekce</a> zapněte v registru možnost <strong>Automaticky vytvářet nové počítače s autonomním agentem</strong>.</li>
        <li>Při příštím kontaktu se službou WebService bude počítač automaticky přidán do složky "Nalezené počítače v síti" v registru.</li>
        <li>Pokud chcete automaticky detekovat hw a sw nových počítačů, nastavte ve výchozím <a href="detection">profilu detekce</a>období plánování automatické detekce a metodu detekce na <em>Automaticky</em> nebo <em>Autonomní agent</em>.</li>
    </ul>

    <h2>Vytváření počítačů, které nelze detekovat</h2>
    <p>Systém může detekovat hardware a software pouze v počítačích se systémem Windows 95 a novějším. Počítače s jinými operačními systémy ( např. Apple OSX, Linux, ...) lze do registru zadat následujícím způsobem:</p>
    <ol>
        <li>Ve stromu objektů vyberte uživatele, pod kterým chcete vytvořit nový počítač, a v <strong>místní nabídce</strong> zvolte <strong>Nový počítač.</strong></li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/edit/new-computer">Nový počítač</a>, ve kterém vyberte možnost <strong>Vytvořit počítač ručně</strong>. Vyberte druh objektu počítač a zadejte název v síti pro nový počítač. Nevybírejte možnost <strong>Zjistit informace o počítači v síti pomocí uložených nastavení</strong>. Nakonec stiskněte tlačítko <strong>Další</strong>.<br />
            Poznámka: Pokud je aktivní číselná řada pro vybraný typ počítače, název sítě nelze zadat ručně, ale vygeneruje se automaticky.</li>
        <li>Program přidá zprávu do stromu objektů. Ještě předtím se zobrazí okno<a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a>, kde můžete zadat skutečné datum uvedení počítače do provozu, pokud jej do protokolu přidáváte dodatečně.</li>
        <li>Ve stromu objektů vyberte nově vytvořený počítač a v místní nabídce použijte příkaz <strong>Nastavení detekce.</strong>.., v okně vyberte možnost <strong>Vlastní nastavení detekce</strong> a na kartě <strong>Způsob detekce</strong> vyberte možnost <strong>Nastavení detekce</strong> ručně.</li>
        <li>Vytvořte libovolné komponenty počítače - použijte <strong>příkaz Nový objekt... z místní nabídky ve stromu objektů. </strong>a vložte další komponenty počítače. Nakonec projděte všechny součásti počítače a počítač a zadejte hodnoty vlastností, které chcete zaznamenat.</li>
        <li>Pokud chcete pro počítač zaevidovat i software, přejděte do části <strong>Software</strong> a pomocí příkazu <strong>Installation - Log installation.</strong>.. vytvořte záznam o nainstalovaném softwaru.</li>
    </ol>

    <h2>Viditelnost virtuálního počítače</h2>

    <p class="MsoNormal">Virtuální počítače se doporučuje registrovat jako objekty typu <em>Počítač/virtuální</em>.</p>
    <p>Počítač má vlastnost "Hostitelský počítač", která uvádí název fyzického počítače, který byl naposledy zjištěn jako hostitel virtuálního počítače při zjišťování hardware. Hodnota je informativní. Fyzické počítače nemají v této vlastnosti žádnou hodnotu. Tato vlastnost je zjišťována automaticky a nelze ji ručně měnit.</p>
    <p>Použití vlastnosti "Hostitelský počítač":</p>
    <ol>
        <li>Informace o tom, na kterém FPC je nově zjištěný VPC spuštěn. Podle toho bude VPC ručně přesunut na příslušné místo ve stromu.</li>
        <li>Zkontrolujte, zda je VPC správně zaregistrováno.</li>
    </ol>
    <h3>První detekce virtuálních počítačů</h3>
    Po první detekci počítačů doporučujeme zkontrolovat, zda byly některé počítače detekovány jako virtuální, a pokud ano, změnit jejich druh objektu na <em>Počítač/Virtuální</em>. Proveďte následující kroky    <ol>
        <li>Záložka<strong>Objekty</strong> - nastavte filtr na zobrazení virtuálních počítačů: Typ = počítač, Model = virtuální.</li>
        <li>Vyberte všechny počítače, které jsou opravené jako virtuální, v místní nabídce vyberte možnost <strong>Upravit</strong> a změňte druh objektu na <em>Upravit</strong>. Počítač/Virtuální</em>.</li>

    </ol>


    <h3>Virtuální počítače na jednom fyzickém počítači</h3>
   <img src="fpc1.png" />
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Virtuální počítač je umístěn ve stromu v sestavě fyzického počítače, na kterém byl nainstalován. Vlastnost "Hostitelský počítač" zobrazuje zjištěný hostitelský počítač, který by měl být stejný jako nadřazený fyzický počítač. 
    </div>

    <h3>Virtuální počítače spuštěné ve farmě fyzických počítačů</h3>
    <p>Příklad farmy, kde se počítače VPC mohou potenciálně automaticky přesouvat mezi FPC podle aktuálního zatížení:</p>

   <img src="farm1.png" />


    <h3>Důkaz serverových farem bez virtuálních počítačů</h3>

   <img src="farm2.png" />


    <h3>Viditelnost virtuálních strojů v cloudu</h3>

   <img src="cloud.png" />

</asp:Content>
