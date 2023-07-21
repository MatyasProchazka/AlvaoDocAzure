<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Zobrazení</h1>
    <p>Různá nastavení tabulky, například šířku a pořadí sloupců, způsob řazení hodnot a nastavení filtru, můžete uložit jako zobrazení.</p>
    <p>Chcete-li vytvořit osobní pohled, použijte příkaz <strong>Vytvořit kopii pohledu</strong>, který najdete v místní nabídce v záhlaví tabulky. Nad tabulkou se zobrazí lišta záložek s novým pohledem jako novou záložkou. Nový pohled je kopií aktuálně vybraného pohledu. Po zadání názvu nového pohledu můžete upravit nastavení tabulky. Mezi jednotlivými pohledy pak můžete přepínat jednoduchým kliknutím na příslušnou záložku nad tabulkou. Pokud tabulka obsahuje pouze jeden pohled, lišta s kartami pohledů se nezobrazuje.</p>
    <p>Na pásu karet se zobrazují připnuté pohledy. Nové zobrazení je ve výchozím nastavení připnuté. Použitím příkazu <strong>Odepnout</strong> z místní nabídky se jeho záložka přesune z pásu záložek do rozbalovací nabídky, která je přístupná příkazem <strong>..</strong>.. Na pásu záložek lze zobrazit maximálně jedno odepnuté zobrazení. Odpojené zobrazení pak můžete připnout buď pomocí příkazu <strong>Připnout</strong> z místní nabídky, nebo přesunutím jeho záložky na jiné místo.</p>
    <p>Chcete-li zobrazení odebrat, stačí kliknout pravým tlačítkem myši na záložku zobrazení, které chcete odebrat, a z místní nabídky vybrat příkaz <strong>Odstranit</strong>.</p>
    <p>
        Pohledy lze také znovu přejmenovat pomocí místní nabídky nad záložkami - klikněte pravým tlačítkem myši na kartu pohledu, který chcete přejmenovat, a z místní nabídky vyberte příkaz <strong>Přejmenovat</strong>. Zobrazí se okno, ve kterém můžete změnit název pohledu    </p>
    <p>
        Pohledy, jejichž nastavení bylo změněno, se zobrazí s <strong>*</strong> na konci názvu, např. <strong>všechny*</strong>. Pokud chcete změny nastavení zachovat až do příštího otevření okna, uložte je příkazem <strong>Uložit nastavení pohledu</strong>z místní nabídky nad kartou pohledu nebo záhlavím tabulky. Pokud nastavení neuložíte před zavřením okna tabulky, při příštím zobrazení tabulky se použije původní nastavení. Neuložená nastavení zobrazení můžete také obnovit do posledního uloženého stavu pomocí příkazu <strong>Obnovit nastavení zobrazení</strong>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Uložte také nově vytvořené pohledy, jinak se při příštím načtení tabulky nezobrazí. Odstranění pohledů není třeba ukládat. 
    </div>


    <p>
        Pořadí pohledů lze změnit uchopením karty pohledu myší a jejím přetažením na příslušné místo. Pokud přetáhnete pohled myší mimo panel záložek a znovu jej přetáhnete na panel záložek na jiné místo, přetažený pohled a pohled, na který jste najeli, si prohodí pořadí. V aplikaci Alvao WebApp použijte ke změně pořadí pohledů příkaz <strong>Přesunout</strong>, který je k dispozici v místní nabídce. Zadáním číselné hodnoty přesunete kartu zobrazení na příslušné místo    </p>

   <img src="views.PNG" alt="Views above table" />

    <h2>Sdílené pohledy</h2>
    <p>Pokud několik uživatelů používá jeden nebo více stejně nastavených pohledů, nemusí každý uživatel tyto pohledy nastavovat, ale stačí, když jeden uživatel pohledy vytvoří a nastaví a poté je poskytne ostatním jako <strong>sdílené pohledy</strong>. Uživatel, který sdílená zobrazení vytvořil, je <strong>vlastníkem</strong> těchto zobrazení a může tato zobrazení pouze upravovat a určovat, kdo je může používat.</p>

    <h3>Sdílený pohled</h3>
    <ol>
        <li>V nabídce libovolného zobrazení zobrazte rozevírací nabídku <strong>Sdílené pohledy</strong> a vyberte zobrazení, které chcete zobrazit.<br />
        </li>
        <li>Zobrazení se zobrazí na panelu záložek a chová se stejně jako nepřipnuté zobrazení. Pokud jej chcete připnout, vyberte v nabídce zobrazení možnost <strong>Připnout</strong>. Připnuté sdílené zobrazení se již v nabídce sdílených zobrazení nezobrazuje.</li>
    </ol>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Pokud vlastník sdíleného zobrazení změní zobrazení, změny se projeví u všech uživatelů, kteří toto zobrazení používají. Pokud nechcete tyto změny přijmout, vytvořte pomocí příkazu <strong>Vytvořit kopii pohledu</strong> osobní kopii sdíleného pohledu    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        V nabídce sdílených pohledů je za názvem pohledu uveden jeho vlastník    </div>

    <h3>Sdílení pohledu</h3>
    <ol>
        <li>Zobrazte pohled, který chcete sdílet.</li>
        <li>V nabídce zobrazení vyberte možnost <strong>Sdílet</strong>.</li>
        <li>Vyberte jednoho nebo více uživatelů nebo skupin, kterým chcete zobrazení sdílet.</li>
        <li>Výběr potvrďte tlačítkem <strong>OK</strong>.</li>
    </ol>
    <p>Všem vybraným uživatelům, včetně členů vybraných skupin, se poté zobrazení zobrazí v nabídce sdílených zobrazení, ze které mohou zobrazení používat. Uživatel, který pohled sdílel, je vlastníkem pohledu a pouze on může sdílený pohled upravovat.</p>


    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Sdílení pohledů je možné pouze se skupinou, jejímž jste členem a která obsahuje další uživatele    </div>


    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Uživatelé, kteří jsou pouze žadateli, nemohou sdílet pohledy    </div>

    <h3>Změna sdíleného zobrazení</h3>

    <p>Sdílený pohled může upravovat pouze jeho vlastník, a to tak, že upraví pohled běžným způsobem a uloží změny pomocí příkazu <strong>Uložit nastavení pohledu</strong>. Provedené změny se projeví u všech uživatelů, kteří sdílený pohled používají.</p>
    <p>
        Pokud nejste vlastníkem sdíleného pohledu nebo pokud chcete ze sdíleného pohledu vytvořit nový osobní pohled, vytvořte kopii vybraného pohledu pomocí příkazu <strong>Vytvořit kopii pohledu</strong> a případně ji uložte pomocí příkazu <strong>Uložit nastavení pohledu</strong>   </p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Příkaz <strong>Uložit nastavení zobrazení</strong> pro sdílené zobrazení je dostupný pouze jeho vlastníkovi a správci    </div>

    <h3>Nastavení sdílení a změna vlastníka</h3>
    <ol>
        <li>Chcete-li změnit uživatele nebo skupiny, s nimiž je pohled sdílen, nebo vlastníka pohledu, vyberte z nabídky možnost <strong>Nastavení sdílení</strong>.</li>
        <li>Proveďte požadované změny a potvrďte je tlačítkem <strong>OK</strong>.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pokud předáte vlastnictví zobrazení jinému uživateli, nebudete již moci zobrazení upravovat    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Změnit sdílení a vlastníka může pouze vlastník a správce    </div>

    <h3>Zrušení sdílení</h3>
    <ol>
        <li>Chcete-li zrušit sdílení se všemi uživateli, použijte příkaz <strong>Nastavení sdílení</strong> v nabídce sdíleného zobrazení.</li>
        <li>V dialogovém okně Nastavení sdílení odeberte všechny osoby a skupiny, kterým je zobrazení sdíleno, a potvrďte tlačítkem <strong>OK</strong>.</li>
        <li>Sdílený pohled se stane vaším vlastním pohledem (nebo pohledem posledního vlastníka sdíleného pohledu) a zmizí z nabídky sdílených pohledů pro ostatní uživatele. Pokud měl uživatel pohled připnutý, pohled zůstane zachován, ale bude převeden na jeho vlastní.</li>
    </ol>


</asp:Content>
