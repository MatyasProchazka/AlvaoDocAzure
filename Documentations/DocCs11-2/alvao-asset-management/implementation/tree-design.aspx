<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Návrh stromové struktury</h1>

    <p>Nyní vytvoříte strom objektů. Strom se zobrazí v levé části <a href="../../list-of-windows/alvao-asset-management-console">hlavního okna</a>.</p>
    <p>Strom by měl mít následující základní strukturu:</p>
    <ul>
        <li>organizace (objekt Organizace)           <ul>
                <li>organizační členění (objekty Organizační složka, Budova,...)           <ul>
                        <li>..  <ul>
                                <li>zaměstnanec (objekt User)<ul>
                                    <li>majetek (objekty Montáž, Kopírka, Telefon,...)</li>
                                </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    <p>V kořeni stromu je objekt Organizace, který se dále dělí na menší jednotky podle příslušného organizačního členění. V nejmenších organizačních jednotkách (např. oddělení, divize apod.) jsou umístěni jednotliví pracovníci (objekt Uživatel) a pod každým pracovníkem je veden majetek, který byl pracovníkovi svěřen do užívání (např. počítače, mobilní telefon,...).</p>

    <h2>Dědičnost</h2>
    <p>
        Uspořádání objektů ve stromu využívá dědičnosti určitých vlastností. Například obchodní oddělení bude reprezentováno objektem Department, který bude popsán vlastností Department s hodnotou &quot;Obchodní oddělení&quot;    </p>
    <ul>
        <li>Organizace<ul>
            <li>Department=&quot;Sales Department&quot; (objekt Department)<ul>
                <li>..  <ul>
                            <li>User=&quot;Petr Pěnička&quot; (objekt User)<ul>
                                <li>asset</li>
                            </ul>
                            </li>
                        </ul>
                </li>
            </ul>
            </li>
        </ul>
        </li>
    </ul>
    <p>Vlastnost Department se <em>dědí na</em> všechny podřazené objekty v oddělení Business Department. To znamená, že pokud se podíváme na vlastnosti například objektu Petr Pěnička, najdeme také vlastnost Department s hodnotou &quot;Obchodní oddělení&quot;. Tato vlastnost je však definována v nadřazeném objektu Department a dědí se pouze do objektu Petr Pěnička. Hodnota vlastnosti Department, kterou vidíme v objektu Petr Pěnička, tedy závisí na tom, v jakém oddělení se Petr Pěnička ve stromu nachází. To nám usnadní práci v situaci, kdy se pracovník přesune do jiného oddělení, protože pak stačí přesunout příslušný objekt reprezentující pracovníka na jiné místo ve stromu. Stejná situace je i při přesunu majetku mezi pracovníky, protože objekt, který reprezentuje majetek, dědí jméno uživatele (vlastnost User), kterému byl majetek přiřazen.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Zda se bude určitá vlastnost dědit na podřazené objekty, můžete nastavit v okně <strong>Vlastnosti</strong>, které se otevře po použití příkazu <strong>Vlastnost</strong> v seznamu vlastností na kartě <strong>Vlastnosti</strong> <strong>Upravit</strong> z místní nabídky na příslušnou vlastnost    </div>

    <h2>Organizační členění</h2>
    <p>
        V této kapitole si popíšeme postup vytváření stromu organizačního členění. Pokud nevidíte šablony objektů a koše ve stromu na levé straně <a href="../../list-of-windows/alvao-asset-management-console">hlavního okna</a>, máte zakázáno zobrazování skrytých objektů. K jejich zobrazení použijte příkaz <strong>Zobrazit - Skryté objekty</strong>   </p>
    <p>Nejprve upravte objekt v kořeni stromu tak, aby představoval naši organizaci/firmu.</p>
    <ol>
        <li>Nová databáze by již měla obsahovat vytvořený objekt <strong>&lt;Organization&gt;</strong>. Vyberte tento objekt ve stromu.</li>
        <li>Na kartě <strong>Vlastnosti</strong> vpravo nahoře dvakrát klikněte myší na vlastnost <em>Název organizace</em> a zadejte skutečný název organizace a hodnotu uložte klávesou ENTER. Tato vlastnost je nastavena tak, aby tvořila název objektu ve stromu, a proto se název organizace změní i ve stromu objektů.</li>
        <li>Podobně zadejte adresu organizace ve formátu <em>Název;Ulice;PSČ Město</em> jako hodnotu vlastnosti <em>Adresa</em> a kód organizace (zkratku) do vlastnosti <em>Kód organizace</em>. .</li>
    </ol>
    <p>Organizaci dále rozdělíme na menší jednotky podle členění, které je pro vás běžné. Pokud má vaše organizace jedno ústředí a několik poboček v různých městech, může členění vypadat takto:</p>
    <ul>
        <li>Organizace <ul>
            <li>Ústředí v Praze</li>
            <li>Pobočka v Ostravě</li>
            <li>Pobočka Brno</li>
        </ul>
        </li>
    </ul>
    <p>Zde je uveden postup pro vložení centrály:</p>
    <ol>
        <li>Ve stromu klikněte pravým tlačítkem myši na objekt organizace a z nabídky vyberte příkaz - Nový objekt.</li>
        <li>V nabídce <a href="../../list-of-windows/alvao-asset-management-console/edit/new-object/object-template">Nový objekt - Vyberte vzorový objekt - Šablony objektů</a>, ve složce Organizační struktura vyberte <em>&lt;Závod&gt;</em> a potvrďte tlačítkem OK.</li>
        <li>Typ objektu podniku se vloží do stromu. Vyberte jej pomocí myši.</li>
        <li>Na kartě <strong>Vlastnosti</strong> vpravo nahoře vyberte vlastnost <em>podniku</em> a upravte její hodnotu na &quot;Sídlo Praha&quot; a potvrďte klávesou ENTER. Vlastnost opět určuje název ve stromu, takže se název objektu ve stromu automaticky změní.</li>
    </ol>
    <p>Obdobně vložte do stromu objekty pro pobočky Ostrava a Brno. Každá větev bude mít pravděpodobně další členění na jednotlivá oddělení apod. Oddělení vložíme do stromu podobně jako pobočku, jen místo objektu Závod použijeme objekt Oddělení.</p>
    <p>Pro členění organizace můžeme použít objekty, které jsou ve složce <em>Organizační struktura</em> při přidávání objektu do stromu, tj:</p>
    <ul>
        <li>Budova </li>
        <li>Podlaží</li>
        <li>Místnost</li>
        <li>Pracoviště</li>
        <li>Oddělení</li>
        <li>Oddělení</li>
        <li>Oddělení</li>
        <li>Síť</li>
        <li>Podsíť</li>
        <li>Síťová pobočka</li>
        <li>Úložiště</li>
        <li>Vyřazený majetek</li>
        <li>Závod</li>
        <li>Sekce</li>
        <li>Středisko</li>
    </ul>
    <p>Pro popis objektů jsou k dispozici následující vlastnosti: </p>
    <ul>
        <li>Budova</li>
        <li>Divize</li>
        <li>Kancelář</li>
        <li>Místnost</li>
        <li>Oddělení</li>
        <li>Oddělení</li>
        <li>Podlaží</li>
        <li>Pracoviště</li>
        <li>Sekce</li>
        <li>Centrum</li>
        <li>Umístění</li>
        <li>Sekce</li>
        <li>Jednotka</li>
        <li>Závod</li>
    </ul>
    <p>Objekty nemusí být popsány pouze jednou vlastností, ale můžete jich použít více. Pokud se například celé obchodní oddělení nachází ve druhém patře, můžete jej popsat objektem Department s vlastnostmi Department=&quot;business&quot; a Floor=&quot;2&quot;.</p>

    <h2>Zaměstnanci organizace</h2>
    <p>Zaměstnanci organizace jsou ve stromu reprezentováni objektem <em>User</em> a do stromu se vkládají podobně jako objekty organizace. Stačí vybrat objekt <em>&lt;Uživatel&gt;</em> v nabídce objektů v příkazu - Nový objekt. Každý uživatel je standardně popsán vlastnostmi Office (číslo úřadu), User (jméno zaměstnance), Personal number (osobní číslo) atd.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Uživatele můžete popsat dalšími vlastnostmi a můžete také vytvořit zcela nové vlastnosti, které systém standardně nenabízí, viz <a href="customization">Uživatelské úpravy</a>.  </div>

    <h2>Majetek</h2>
    <p>Evidovaný majetek (počítače, tiskárny, telefony atd.) je ve stromu reprezentován také objekty. Obecně se s nimi pracuje stejně jako s organizačními objekty nebo zaměstnanci.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Majetek je jakýkoli objekt,<span> který obsahuje vlastnost "Inventární číslo" nebo "Evidenční číslo</span>".<span> Hodnoty majetku mohou být i prázdné.</span></div>

    <p>Za každý majetek v organizaci obvykle odpovídá určitá osoba, např. za počítač odpovídá uživatel, kterému byl počítač přidělen. V takovém případě by počítač a další objekty měly být vloženy do stromu jako podřazené objekty příslušného zaměstnance:</p>
    <ul>
        <li>Václav Pěnička (uživatel)<ul>
            <li>Nokia 6610 (mobilní telefon)</li>
            <li>PC154 (počítačová sestava)</li>
        </ul>
        </li>
    </ul>


    <p>Pokud majetek ve stromové struktuře nelze umístit pod konkrétní osobu (například sdílená tiskárna na chodbě), umístěte jej jako podřazený objekt pod některou složku organizační struktury (například oddělení). Poté na složce ve vlastnosti <strong>Odpovědný za</strong> majetek zadejte osobu odpovědnou za majetek v této složce:</p>
    <ul>
        <li>Oddělení IT (Department) - Hodnota vlastnosti "Odpovědný za majetek" = "Michal Nový"      <ul>
                    <li>HP LaserJet Pro (tiskárna)</li>
                    <li>Václav Pěnička (uživatel) - Hodnota vlastnosti "Odpovědný za majetek" = "Václav Pěnička"          <ul>
                            <li>Nokia 6610 (mobilní telefon)</li>
                            <li>PC154 (počítačová sestava)</li>
                        </ul>
                    </li>
                </ul>
        </li>
    </ul>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Hodnota vlastnosti "Responsible for property" je děděna podřízenými objekty. Pro objekt typu "Uživatel" je hodnota automaticky nastavena na danou osobu. Za majetek pod uživatelem tedy stále odpovídá "Václav Pěnička"    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o osobu, která je na pracovišti, je možné, že se jedná o osobu, která je na pracovišti:</div>
        Pokud chcete evidovat odpovědnost za majetek, který není ve stromu umístěn pod konkrétními uživateli, doporučujeme přidat vlastnost "Odpovědný za majetek" do šablon objektů organizační struktury a do šablony objektu typu "Uživatel". Žádný objekt tuto vlastnost standardně neobsahuje    </div>


    <p>Pokud potřebujete, aby za majetek v místnosti odpovídala například více než jedna osoba, rozdělte majetek do různých složek a ve vlastnosti "Odpovědný za majetek" nastavte na tyto složky různé osoby. Například:</p>
    <ul>
        <li>Místnost se serverem (Místnost) - hodnota vlastnosti "Odpovědný za majetek" = "Michal Nový"      <ul>
                    <li>Servery (Servers), Václav Pěnička - hodnota majetku "Odpovědný za majetek" = "Václav Pěnička"          <ul>
                            <li>Dell PowerEdge 2950 (Počítač/Server)</li>
                        </ul>
                    </li>
                    <li>Síťové prvky, Petr Omáčka - hodnota vlastnosti "Odpovědný za majetek" = "Petr Omáčka"         <ul>
                            <li>HP 1810 (Switch)</li>
                        </ul>
                    </li>
                    <li>PowerEdge 2420 (Rack)</li>
                </ul>
        </li>
    </ul>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Vlastnost "Responsible for asset" můžete také vložit přímo do objektů majetku. Pro snazší přesouvání majetku však doporučujeme tuto vlastnost do majetkových objektů pouze dědit z organizačních složek a objektů druhu Uživatel.</div>



    <p>Uživatelé mohou kdykoli zkontrolovat své záznamy o majetku v aplikaci ALVAO WebApp - uživatelské menu - <a href="../../list-of-windows/alvao-webapp/search/persons/person">Můj řízený majetek</a>. Příkaz se zobrazí pouze uživatelům, kteří jsou zaregistrováni ve stromu objektů a mají vyplněnou vlastnost <em>User Name (Jméno uživatele)</em>. V <i>aplikaci WebApp - Správa - <a href="../../list-of-windows/alvao-webapp/administration/users">Uživatelé</a></i> nemusí být uživatelé zaregistrováni.  Pokud není aktivována služba ALVAO Service Desk, ale pouze služba ALVAO Asset Management, je výchozím nastavením stránka <em>Můj svěřený majetek</em>.</p>
    <p>
        Počítače, monitory a některé tiskárny může systém detekovat v síti a přidat je do záznamů, viz <a href="detection">Detekce hardware a software</a>. Ostatní objekty, jako jsou kopírky, telefony, elektronické diáře apod. je třeba do evidence zadat jako každý jiný objekt, tj. příkazem - Nový objekt. Standardní typy zařízení a objektů pak najdete v šablonách objektů ve složkách          <ul>
                <li>Evidence IT</li>
                <li>Ostatní inventář</li>
                <li>Zásoby</li>
            </ul>

        <h2>Čtení informací o organizaci, zaměstnancích a počítačích ze služby Active Directory</h2>
        <p>Kromě ručního vytváření objektů organizační struktury a objektů reprezentujících pracovníky organizace, jak je popsáno v předchozích částech, můžete tyto objekty automaticky načítat ze služby Microsoft Active Directory. Rozsah načítaných dat může být definován uživatelem.</p>
        <p>Proces načítání objektů ze služby Active Directory:</p>
        <ol>
            <li>Vyberte objekt ve stromu, do kterého chcete načíst organizační strukturu, a v nabídce vyberte <strong>Objekt - Načíst z Active Directory</strong>. Pokud chcete načíst organizační strukturu do kořene stromu, nevybírejte žádný objekt.</li>
            <li>V okně <a href="../../list-of-windows/alvao-asset-management-console/object/retrieve-objects-ad">Načíst objekty z Active Directory</a> zadejte cestu <strong>LDAP</strong> ke složce s organizační strukturou v Active Directory, zaškrtněte políčko <strong>Organizační struktura</strong>, <strong>Uživatel</strong>, <strong>Počítač</strong> a stiskněte tlačítko <strong>Načíst</strong>       <p><strong>Příklad 1. Cesty LDAP</strong></p>
                <p>Cesta ke složce ALVAO organizační struktury ALVAO na doméně ALVAO.CZ</p>
                <p>LDAP://server/ou=alvao,dc=alvao,dc=en</p>
                <p>Cesta ke složce IT v organizační struktuře ALVAO na doméně ALVAO.CZ</p>
                <p>LDAP://server/ou=it,ou=alvao,dc=alvao,dc=en</p>

            </li>
            <li>Program vytvoří nové objekty a přidá je do stromu, což může trvat několik minut v závislosti na rozsahu struktury v AD.</li>
        </ol>
        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Při načítání objektů ze služby Active Directory program načte pouze objekty, které nejsou ve službě AD zakázány        </div>
        <div class="tip">
           <div class="icon"></div>
            <div class="title">Tip:</div>
            Informace ze služby Active Directory můžete začít načítat automaticky viz <a href="users/authentication/ad/import-ad">ImportAD</a>       </div>
</asp:Content>
