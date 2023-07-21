<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Pravidelná kontrola čistoty licence</h1>

    <p>Správce licencí pravidelně kontroluje stav licencí (např. 1x/měsíc) následujícím způsobem:</p>
   <ol>
       <li>V <strong>konzole ALVAO Asset Management Console</strong> vyberte <strong>Software - Přehled licencí a instalací</strong>.</li> <li>V okně <a href="../../list-of-windows/alvao-asset-management-console/software/license-and-install-overview">Přehled licencí a instalací</a> postupně projděte produkty, u kterých je zobrazen vykřičník. Vyberte jednotlivé produkty a podívejte se na chybové hlášení u položek s vykřičníkem v seznamu níže. </li> 
       <li>
        Pokud vám v počítači chybí licence a máte k dispozici volnou licenci, můžete ji přiřadit pomocí příkazu "Přiřadit licenci...", "Přidělit licenci automaticky" z místní nabídky.  &gt </ol>  <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Neauditované produkty lze zobrazit zapnutím příkazu <strong>Zobrazit - Neauditované produkty</strong> v hlavní nabídce okna    </div>


    <h2>Nastavení alternativního schváleného SW</h2>
    <ol>
        <li>V AM Console použijte příkaz <strong>Software - Products (software)....</strong>.</li>
        <li>Zobrazí se seznam všech produktů. Vyberte produkty a v místní nabídce použijte příkaz <strong>Set Alternate Approved Software... (Nastavit alternativní schválený software</strong> ).</li>
        <li>Zobrazí se okno <strong>Set Alternate Approved Software (Nastavit alternativní schválený software</strong> ), ve kterém zadáte seznam alternativních produktů, které mohou uživatelé používat místo zakázaných produktů.</li>
        <li>Nakonec stiskněte tlačítko <strong>OK</strong> </li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        <ul>
            <li>Nastavená hodnota má pouze informativní charakter.</li>
            <li>Alternativní software lze nastavit i hromadně. Pokud vyberete více produktů s různými hodnotami, je při zobrazení okna úprav <strong>Alternativní schválený software</strong> prázdný.</li>
        </ul>
    </div>


    <h2>Nastavení osoby, která je zodpovědná za software na konkrétním počítači (pokud není spravován oddělením IT)</h2>

    <ol>
        <li>V AM Console přejděte ve stromu na šablonu počítače a upravte hodnotu vlastnosti "Odpovědný za software"  <ol>
      <li>Pokud většinu počítačů spravuje oddělení IT, nastavte hodnotu na "Správce software na počítačích" (výchozí nastavení).</li>
      <li>Pokud většinu počítačů spravují uživatelé - nastavte hodnotu na "[Uživatel PC]".</li>
  </ol>
        </li>
        <li>Vyberte šablonu počítače a použijte příkaz "Objekt - Sjednotit objekty", čímž přidáte vlastnost "Odpovědný za software" ke všem počítačům v inventáři a nastavíte jim příslušnou hodnotu.</li>
    </ol>
    Volitelně: Pokud většinu počítačů spravuje oddělení IT, ale některé počítače spravuje uživatel, vyhledejte tyto počítače a upravte hodnotu vlastnosti "Responsible for software" (Odpovědný za software) na "[PC user]" <br />
    <br />
    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        <ul>
            <li>Do hodnoty vlastnosti "Responsible for software" můžete zadat název jakékoli jiné skupiny uživatelů.</li>
            <li>V následujícím případě systém automaticky deleguje odpovědnost na systémovou skupinu "Správce software na počítačích"         <ul>
                    <li>Pokud počítač nemá vlastnost "Odpovědný za software".</li>
                    <li>Pokud není žádný počítač zařazen pod žádného uživatele ve stromu a hodnota vlastnosti "Odpovědný za software" je "[uživatel PC]".</li>
                    <li>Pokud hodnota vlastnosti "Odpovědný za software" neodpovídá žádnému názvu skupiny ani "[Uživatel PC]".</li>
                </ul>
            </li>
        </ul>
    </div>

    <h2>Příklad interní směrnice</h2>

    <h3>Počítače a další IT vybavení</h3>

    <ol>
        <li>Počítače a další vybavení IT svěřené uživatelům jsou registrovány v systému správy majetku ALVAO.</li>
        <li>Každý uživatel si může zobrazit seznam zařízení, která jsou u něj registrována, na <span class="console">adrese https://server/asset</span>.</li>
    </ol>

    <h3>Software</h3>

    <ol>
        <li>Uživatel IT nesmí používat software způsobem, který není v souladu s licenčními podmínkami pro daný typ softwaru (např. instalace nelegálního softwaru, kopírování, šíření nebo úprava softwaru).</li>
        <li>Každý počítač má svého <strong>správce softwaru</strong>, který odpovídá za legálnost softwaru v počítači. Pokud má uživatel počítače (tj. uživatel, kterému je počítač svěřen do užívání) povolena práva k instalaci softwaru, je správcem softwaru v počítači uživatel počítače. V opačném případě je správcem softwaru určený interní pracovník IT.</li>
        <li>Licence na software jsou registrovány v interním systému správy majetku ALVAO. Registraci licencí zajišťuje interní oddělení IT.</li>
        <li>Software nainstalovaný na firemních počítačích je automaticky inventarizován nejméně jednou ročně.</li>
        <li>Pokud oddělení IT při inventarizaci zjistí závažné porušení licenčních podmínek některého softwaru, neprodleně vyzve správce softwaru daného počítače, aby přijal nápravná opatření. Po odstranění problému může správce počítače zkontrolovat výsledek poslední inventury na <a href="https://server/asset">adrese https://server/asset</a>. Inventura softwaru v počítači se provádí automaticky každých 24 hodin po zjištění problému. Po 1 měsíci se provede automatická kontrola stavu. Pokud problém s produktem stále není odstraněn, je správci softwaru počítače znovu zaslána výzva. Tato druhá výzva je rovněž zkopírována přímému nadřízenému správce softwaru. Je také zaznamenána v interním Service Desku jako úkol k vyřešení.</li>
    </ol>



</asp:Content>
