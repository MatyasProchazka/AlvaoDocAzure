<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Inventura majetku</h1>

    <h2>Spuštění kontroly majetku</h2>
    <ol>
       <li>Příkazem <b>AM Console - Tools - Asset Inventory</b> otevřete <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">inventuru</a>.</li> <li>V nabídce okna zvolte <b>File - Open Inventory</b>.</li> <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/stocktakings">Inventory List</a>, ve kterém stiskněte tlačítko <b>Add</b>. Novou inventuru lze vytvořit pouze v případě, že aktuálně není otevřena žádná inventura. Před vytvořením nové inventury je nutné zadat datum do pole <b>Uzavřeno</b> ve všech existujících inventurách. <li>Tím se v seznamu vytvoří nová položka.</li>V <li>případě potřeby můžete její vlastnosti změnit pomocí tlačítka <b>Upravit</b></li>. <li>Novou inventuru otevřete tlačítkem <b>Otevřít</b></li>   </ol>

    <h2>Výběr majetku</h2>
    <p>Nyní v inventáři vyberte majetek, který chcete inventarizovat, a vložte jej do aktivního inventáře.</p>
    <ol>
        <li>V hlavním okně konzoly AM vyberte ve stromu objektů celou firmu nebo organizační jednotku, ve které chcete inventarizovat.</li>
        <li>Na kartě <b>Přiřazené objekty</b>, případně na kartě <b>Vše</b> zobrazte všechny objekty v organizační složce. V seznamu objektů vyberte objekty, které chcete inventarizovat. Chcete-li inventarizovat všechny objekty, použijte příkaz <b>Upravit - Vybrat vše</b>.</li>
        <li>Poté klepněte pravým tlačítkem myši na seznam a z nabídky vyberte možnost <b>Přidat do inventury</b>. Po potvrzení kontrolního dotazu budou do inventury vloženy všechny objekty, pro které existuje vlastnost <i>Inventární číslo</i> nebo <i>Evidenční číslo</i>.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Sloupec <i>Umístění</i> v inventáři zobrazuje hodnotu vlastnosti <i>Umístění</i> objektu. Tato vlastnost může být zděděná nebo vlastní (vlastní má přednost před zděděnou). Podobně sloupec <i>Středisko</i> zobrazuje hodnotu vlastnosti <i>Nákladové středisko</i>   </div>

    <h2>Vytváření souborů čtenářů</h2>
    <p>Pokud na fyzické inventuře pracuje více pracovníků současně, můžete inventarizovaný majetek rozdělit do několika čtenářských souborů a každému pracovníkovi přiřadit jeden soubor. Podobně pokud chcete část majetku inventarizovat fyzicky a část prostřednictvím webu, vytvořte alespoň jeden soubor pro fyzickou inventuru a jeden soubor pro webovou inventuru. Pro provedení inventury musíte vytvořit alespoň jeden soubor čtenáře. Jedno aktivum může být obsaženo ve více souborech čtenářů v rámci jedné inventury.</p>

    <p>Nejprve vytvořte nový soubor čtenáře:</p>
    <ol>
       <li>Pomocí příkazu <b>AM Console - Nástroje - Inventura majetku</b> otevřete okno inventury. V horní části okna se zobrazí seznam objektů, které jste zadali do inventury v předchozím odstavci.</li> <li>Ve <b>spodní části tabulky</b> klikněte pravým tlačítkem myši a z nabídky vyberte příkaz <b>Nový soubor čtenáře</b>.</li> <li>Zadejte název souboru, např. &quot;reader1&quot;, a případně vyberte jméno osoby, která bude se čtenářem pracovat. Pokud bude soubor majetku inventarizován pomocí webové inventury, povolte</li>možnost <li> <i>Webová inventura</i></li>   </ol>

    <p>Poté přiřaďte aktivum k souboru čtenáře:</p>
    <ol>
        <li>Ve spodní tabulce vyberte soubor čtenáře, do kterého chcete aktivum zařadit.</li>
        <li>V horní tabulce vyberte aktivum, které má být umístěno do vybraného souboru čtečky.</li>
        <li>V nabídce hlavního okna vyberte možnost <b>Akce - Přiřadit aktivum k souboru čtenáře</b>.</li>
    </ol>

    <h2>Provedení inventury</h2>
    <p>Zpracujte vytvořené čtenářské soubory podle zvoleného způsobu inventarizace:</p>
    <ul>
       <li><a href="web-asset-check">Webová inventura</a></li> <li>Fyzická inventura pomocí</li>aplikací <li> <a href="physical-asset-check#orcascan">Orca Scan</a></li> <li>Fyzická inventura pomocí <a href="barcode-reader">Zebra MC3xxx</a></li>   </ul>

    <h2>Zpracování výsledků</h2>
    <p>
        Načtením souborů výsledků z fyzické inventury nebo dat z webové inventury se v horní části okna zobrazí aktuální inventurní údaje ve žlutých sloupcích. Zvláštní pozornost věnujte sloupci <b>Zpráva o pohybu</b>, který informuje o tom, zda byl při inventarizaci nalezen majetek, zda byly zjištěny změny v některých údajích nebo zda se objevil nový majetek, který není evidován. Pokud byla zjištěna změna v údajích, sloupec <b>Chybové hlášení</b> také ukazuje, jaké údaje byly změněny. Inventura také zjistí duplicitní údaje a zobrazí pro ně chybové hlášení. U aktiv, která jsou označena jako duplicitní, je nutné tyto problémy nejprve vyřešit ručně (rozhodnout, který záznam je relevantní, a duplicitu odstranit atd.)    </p>

    <p>
        Inventarizační údaje můžete také ručně přidat nebo upravit pomocí příkazu <b>Upravit - Edit</b> ace. Pokud byla zjištěna změna uživatele, můžete použít příkaz <b>Přenést majetek na uživatele</b>, který se pokusí majetek přesunout pod nově zjištěného uživatele ve stromu. 
    </p>

    <p>
        Zpracovávané položky uzavřete příkazem <b>Zpracovat</b> z místní nabídky, který případně zapíše nově zjištěné údaje do evidence (nové údaje se zapíší do vlastností příslušných objektů ve stromu). U vlastností, které mají nastaven stav <i>Zpracováno</i> (postupné vyřazení problémových údajů a nastavení stavu <i>Zpracováno</i> ), se nezobrazuje žádné chybové hlášení    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud má inventarizovaný majetek ve stromu vlastnost <b>Inventární datum</b>, přenese se do ní při zpracování záznamu skutečné datum inventury, tj. kdy byl majetek skutečně nalezen. 
    </div>

    <h2 id="close">Uzavření kontroly majetku</h2>
    <p>
        Pokud chcete po uzavření inventury zapsat výsledky inventury do Záznamů o objektu, pak v <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">Inventuře</a>pomocí povelu <b>Soubor - Otevřít inventuru</b> otevřete <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking/stocktakings">Seznam inventur</a>, ve kterém vyberete příslušnou inventuru a z místní nabídky zvolíte povel <b>Zadat záznam o objektu</b>. U všech záznamů, které splňují následující tři podmínky, se do Logu objektu zapíše záznam <i>Inventarizováno s výsledkem .</i>..   </p>
    <ul>
        <li>Inventura je uzavřena.</li>
        <li>Záznam má příznak <i>Zpracováno</i>.</li>
        <li>Záznam má příznak <i>Uzamčeno</i>.</li>
    </ul>

</asp:Content>
