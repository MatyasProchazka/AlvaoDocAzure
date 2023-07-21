<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vlastní knihovna softwarových produktů</h1>
    <p>
        Knihovna softwarových produktů je soubor pravidel, podle kterých systém analyzuje detekce softwaru a rozpoznává, které softwarové produkty jsou v počítačích nainstalovány. Aktuální knihovnu můžete do systému nahrát z internetu pomocí <strong>příkazu Software - Software Product Library - <strong>Software Products Library</strong>. Načíst aktuální knihovnu</strong>   </p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: Vložte knihovnu do knihovny:</div>
        Pokud systém některé programy nedetekuje a na kartě <strong>Software</strong> se zobrazí nerozpoznané záznamy, vyberte nerozpoznané záznamy a použijte příkaz <strong>Odeslat SW k identifikaci.</strong>.. z místní nabídky. Zobrazí se průvodce, ve kterém můžete zadat rozšířené informace o nerozpoznaných záznamech, a po dokončení tohoto průvodce bude vytvořen požadavek, který Collector odešle našim specialistům. Ti přidají nerozpoznané produkty do standardní knihovny. Aktualizovanou knihovnu pak budete moci stáhnout z internetu pomocí příkazu <strong>Software - Software Product Library - Load Current Library (Software - Knihovna softwarových produktů - Načíst aktuální knihovnu</strong> ). Po stažení nové knihovny budou záznamy rozpoznány    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se vám podaří získat knihovnu, která je součástí knihovny, můžete se obrátit s žádostí o pomoc:</div>
        Na kartě Software v <a href="../../list-of-windows/alvao-asset-management-console">hlavním okně</a> konzoly AM lze také zobrazit zjištěné záznamy registru, které nebyly přiřazeny žádnému produktu podle knihovny softwarových produktů. Pokud jsou takové záznamy na kartě přítomny, znamená to, že v počítačích jsou nainstalovány produkty, které nebylo možné rozpoznat podle pravidel knihovny softwarových produktů    </div>

    <h2>Přidání nového produktu</h2>

    <p>Do knihovny můžete přidat vlastní produkty a pravidla pro jejich rozpoznání nebo můžete požádat o přidání nového produktu do standardní knihovny softwarových produktů.</p>

    <h3>Přidání nového vlastního produktu</h3>
    <ol>
        <li>Na kartě <strong>Detekce</strong> v pravém horním rohu <a href="../../list-of-windows/alvao-asset-management-console">hlavního okna</a> konzoly AM vyberte detekci softwaru, která obsahuje informace o programech, které chcete přidat do knihovny.</li>
        <li>Klikněte na vybranou detekci pravým tlačítkem myši a z nabídky vyberte příkaz - Podrobnosti.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">Detail detekce softwaru</a>, které zobrazuje informace o souborech a záznamech registru z detekovaného počítače.</li>
        <li>V seznamu souborů (v horní části nebo uprostřed okna) nebo v seznamu položek registru (pokud je okno přepnuto do režimu <strong>Zobrazení - Registr</strong> ) vyberte soubor nebo položku (položky) registru, podle kterých chcete produkt identifikovat.</li>
        <li>Klikněte na položku pravým tlačítkem myši a vyberte příkaz z nabídky - Navrhnout pravidlo klíče.</li>
        <li>Na obrazovce se otevře buď <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/file-general">Nové pravidlo pro rozpoznávání na základě souborů</a>, nebo <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/reg-general">Nové pravidlo pro rozpoznávání na základě registru</a>, v závislosti na zapnutém režimu zobrazení. Obě okna obsahují seznam identifikátorů, které jsou přednastaveny podle vybrané položky.</li>
        <li>Klepněte na kartu <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/other">Ostatní</a>.</li>
        <li>Za řádkem <strong>Produkt</strong> stiskněte tlačítko <strong>.</strong>... Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/software/products/product/general">Nový produkt</a>, do kterého zadejte název, verzi, vydavatele a případné další informace o produktu. Okno zavřete klepnutím na tlačítko <strong>OK</strong>.</li>
        <li>Tlačítkem <strong>OK</strong> zavřete také okno s definicí pravidla.</li>
        <li>Pravidlo se vyhodnotí a přidaný produkt se objeví v seznamu nalezených produktů vlevo dole.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Jeden výrobek může obsahovat několik klíčových pravidel. Pokud je na disku počítače nalezen alespoň jeden soubor nebo záznam v registru, který odpovídá klíčovému pravidlu, systém považuje produkt za nalezený    </div>

    <h3>Vytváření pravidel zaškrtávacích políček</h3>
    <p>
        Pokud produkt obsahuje další spustitelné soubory nebo knihovny, zobrazí se tyto soubory v seznamu nerozpoznaných souborů v horní části okna <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software">Detail detekce softwaru</a>. Pokud je v seznamu nechcete vidět, vytvořte pro ně pravidlo "zaškrtnutí" následujícím způsobem    </p>
    <ol>
        <li>V seznamu produktů vlevo dole vyberte aktuální produkt, ke kterému soubory patří.</li>
        <li>V seznamu nerozpoznaných souborů vyberte jeden soubor, který chcete vyloučit, klikněte na něj pravým tlačítkem myši a z nabídky vyberte příkaz -. Navrhněte pravidlo pro odstranění.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tab-view/detection/detail/software/file-general">Nové pravidlo pro rozpoznávání souborů</a>, které přednastaví rozpoznávací znaky na základě vybraného souboru. V případě potřeby můžete hodnoty upravit. Poté pravidlo uložte klepnutím na tlačítko <strong>OK</strong>.</li>
        <li>Všechny soubory odpovídající vytvořenému pravidlu zmizí ze seznamu nerozpoznaných souborů.</li>
        <li>Pokud nemůžete pokrýt všechny soubory jedním pravidlem, vytvořte postupně další pravidla pro odškrtávání dalších souborů produktu.</li>
    </ol>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pravidla pro certifikované produkty z knihovny softwaru nelze vytvářet, upravovat ani odstraňovat    </div>


    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Detektory jsou nejprve vyhodnocovány podle klíčových pravidel a poté podle pravidel pro kontrolu, takže pokud se pravidlo pro kontrolu překrývá s klíčovým pravidlem, má přednost klíčové pravidlo    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Ačkoli jsou pravidla zaškrtávacích políček přiřazena ke konkrétním produktům, toto přiřazení má pouze informativní charakter. Pravidla zaškrtávacích políček nemají vliv na to, jaké produkty systém v počítači najde    </div>

    <h3>Žádost o přidání nového produktu do standardní knihovny</h3>
    <ol>
        <li>V hlavní nabídce použijte příkaz <strong>Software - Produkty (software</strong> ).</li>
        <li>Zobrazí se okno <a href="../../list-of-windows/alvao-asset-management-console/software/products">Produkty (software</a> ), ve kterém stiskněte tlačítko <strong>Přidat.</strong> </li>
        <li>Vyplňte podrobné informace o produktu, který chcete přidat do standardní knihovny, například vydavatele, název, verzi a další údaje. Povolte možnost <strong>Přidat do standardní knihovny produktů softwaru</strong> a stiskněte tlačítko <strong>OK</strong>.</li>
        <li>Nový produkt se objeví v seznamu produktů a můžete jej ihned začít používat (vytvářet licence atd.). Současně se připraví požadavek na přidání nového produktu, který Collector odešle našim specialistům na knihovny softwarových produktů.</li>
        <li>Jakmile je nový produkt do knihovny přidán a nová knihovna je v systému, systém automaticky nahradí uživatelův produkt novým produktem ze standardní knihovny.</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Aby bylo možné odeslat požadavek o přidání nového produktu do standardní knihovny, je nutné v <a href="../../list-of-windows/alvao-webapp/administration/asset-management/servers/create-server">administraci serveru</a> Collector připojeného k internetu povolit možnost <strong>Odesílat žádosti o změny v knihovně softwarových produktů přes internet</strong>. Tuto možnost naleznete v části Nastavení knihovny SW. Data jsou odesílána anonymně, případně můžete uvést kontaktní e-mail. To může usnadnit práci našim specialistům, pokud budou potřebovat další informace o novém produktu    </div>
</asp:Content>
