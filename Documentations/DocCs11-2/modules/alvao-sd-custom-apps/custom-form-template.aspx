<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vlastní formulář pro odeslání nového požadavku</h1>
    <p>
        Systémový formulář pro odeslání nového požadavku do ALVAO WebApp lze nahradit vlastním formulářem se specifickým obsahem a chováním. Vlastní formulář může také pojmout více požadavků najednou, a lze jej tak použít pro podporu složitých obchodních procesů, jako je například nástup nového zaměstnance    </p>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Místo vlastních formulářů doporučujeme použít kombinaci <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">standardního formuláře</a> pro odeslání nového požadavku na službu a <a href="../../modules/alvao-sd-custom-apps/javascript">vlastního javascriptu na formuláři pro odeslání nového požadavku</a>   </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Vlastní formulář může být také obecná stránka aplikace ALVAO WebApp, která se nepoužívá k vytváření požadavků. Vytvoření takové stránky vyžaduje pokročilé znalosti programování    </div>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Ve vlastním formuláři můžete ke zpracování požadavků použít <a href="../../alvao-asset-management/implementation/customization/alvao-api">rozhraní Alvao.API</a>, jeho použití však vyžaduje pokročilé znalosti programování    </div>


    <p>
        Šablony pro tvorbu vlastních formulářů najdete ve složce <strong>\Custom\Templates\</strong>v instalační složce aplikace ALVAO WebApp    </p>

    <p>Seznam standardních šablon:</p>
    <table>
        <thead>
            <tr>
                <th>Název</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>NewTicket</td>
                <td>Příklad formuláře pro vytvoření více žádostí ve vzájemné návaznosti. Ukazuje také, jak používat některé ovládací prvky a jak pracovat s prvkem pro hlášení času k vytvářenému požadavku.</td>
            </tr>
            <tr>
                <td>EmptyPage</td>
                <td>Prázdná šablona. Používá se pro stránky, které nejsou určeny k vytváření požadavků. Tento typ stránky se používá pouze pro speciální účely, například pro obsah vlastních záložek v požadavku.</td>
            </tr>
        </tbody>
    </table>

    <p>Soubor <strong>.cshtml</strong> definuje vzhled formuláře, soubor <strong>.cs</strong>, umístěný ve složce <strong>\Code</strong>, popisuje logiku odesílání dat z vyplněného formuláře.</p>


    <h2>Příprava nového formuláře</h2>
    <p>Ve složce <strong>\Custom</strong> nejprve vytvořte složku pro funkčnost, kterou bude nový vlastní formulář pokrývat, např. složku <em>HrProcessAutomation</em> (pro automatizaci HR procesů). Do jedné složky s funkčností lze umístit více formulářů.</p>
    <p>
        Poté ve složce <strong>\Custom\Templates</strong> vyberte šablonu formuláře, která se co nejvíce blíží vašemu záměru. Obsah složky šablony zkopírujte do složky <strong>Custom&lt;název funkčnosti&gt;</strong>. Soubory .cshtml a .cs vhodně přejmenujte. Oba soubory (.cshtml a .cs) pojmenujte stejně. Doporučujeme začínat název formuláře názvem funkce, pak názvem služby, pro kterou je určen, a nakonec operací, např. <em>HrProcessAutomation_Onboarding_NewTicket</em>, kde <em>HrProcessAutomation</em> je název funkce, <em>Onboarding</em>je název služby a <em>NewTicket</em> je název operace    </p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Názvy všech formulářů používaných ve všech funkcích musí být jedinečné    </div>


    <p>Nyní je třeba podle nového názvu upravit také vnitřek formuláře:</p>
    <ul>
        <li>V souboru .cs na začátku souboru za slovem <strong>namespace</strong> uveďte název jmenného prostoru <em>Alvao.ServiceDesk.ServiceDeskWebApp.Custom.&lt;název_funkce&gt;</em>. Pro název funkce uveďte název složky na disku, ve které se formulář nachází, např: <em>Alvao.ServiceDesk.ServiceDeskWebApp.Custom.HrProcessAutomation</em>.</li>
        <li>V souboru .cs na začátku souboru u klíčového slova <strong>class</strong> změňte název třídy. Název třídy musí být <em>&lt;název stránky cshtml&gt;Controller</em>, např. ve tvaru <em>HrProcessAutomation_Onboarding_NewTicket.cshtml</em> by se třída jmenovala <em>HrProcessAutomation_Onboarding_NewTicketController</em>.</li>
    </ul>
    <h2>Definice rozvržení formuláře</h2>
    <p>
        Soubor .cshtml obsahuje popis rozvržení formuláře a určuje prvky, které se mají zobrazit. Když uživatel odešle data, údaje zadané do zobrazených prvků se převedou na text a tento text lze dále použít v definici chování    </p>
    <p>
        V souboru .cshtml upravte pouze část ohraničenou mezi řádky <strong>&lt;div id=&quot;CustomFormContent&quot; &gt; a &lt;/div&gt;,</strong> prvky formuláře se převedou na text pouze v této části. Prvky mimo CustomFormContent nebudou převedeny na text požadavku, ale budou zobrazeny ve formuláři    </p>

    <p>Na text požadavku se převedou následující prvky formuláře:</p>

    <table>
        <thead>
            <tr>
                <th>Název prvku</th>
                <th>Metoda převodu</th>
                <th>Řádkování</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>&lt;label&gt;</td>
                <td>Zobrazený text je vložen do textu požadavku a následuje za ním dvojtečka.</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Editor &quot;StringField&quot;</td>
                <td>Do textu požadavku se vloží text, který uživatel zadá do vstupního řádku. Pokud do parametru prvku přidáte hodnotu "UniquedId = Model.TicketBodyGuid", bude možné zadávat formátovaný text (HTML)  <div class="note">
     <div class="icon"></div>
      <div class="title">Poznámka:</div>
      V jednom formuláři může být maximálně jeden formátovaný prvek HTML  </div>


                </td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;BoolField&quot;</td>
                <td>Zobrazený text je vložen do textu požadavku a následuje za ním Ano nebo Ne, podle volby uživatele.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;DateTimeField&quot;</td>
                <td>Do textu požadavku se vloží datum zadané uživatelem.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;DropDownListField&quot;</td>
                <td>Vybraná položka se vloží do textu požadavku.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;RadioButtonList&quot;</td>
                <td>Vybraná položka je vložena do textu požadavku.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;CheckBoxList&quot;</td>
                <td>Do textu požadavku se postupně vloží všechny vybrané položky.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;DoubleField&quot;</td>
                <td>Do textu požadavku se vloží celé nebo desetinné číslo zadané uživatelem.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td><a href="columns-control">Editor &quot;ColumnsControl&quot;</a> </td>
                <td>Do textu požadavku se postupně vloží všechny zobrazené položky. Vkládá také hodnoty přímo do vlastností založeného požadavku.</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Editor &quot;AttachmentField&quot;</td>
                <td>Přílohy se vloží do zprávy o vytvoření požadavku.</td>
                <td>Ne</td>
            </tr>
        </tbody>
        <tfoot>
        </tfoot>
    </table>



    <p>Prvky neuvedené v tabulce se do textu nevkládají. Příklady použití všech prvků najdete v šabloně NewTicket.</p>
    <p>V souboru .cshtml přidání třídy &quot;btn-command&quot; k tlačítku zajistí, že se tlačítko zkopíruje jako příkaz do příkazového řádku. </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Formát čísla v poli DoubleField je při odesílání formuláře kontrolován, a pokud není správný, je zvýrazněn červeně a zobrazí se <em>zadání čísla ve správném formátu</em>.<br />
        Správný český formát pro zápis desetinného čísla je s desetinnou tečkou    </div>

    <h2>Definice chování formuláře</h2>
    <p>Popis chování je v souboru .cs. V první části kódu je komentářem označena oblast, která je určena k úpravám. Nezasahujte do ostatních částí kódu!</p>
    <p>Nejdůležitější je zde vytváření požadavků. V souboru je již uveden příklad vytvoření požadavku, který můžete použít pro vlastní úpravy.</p>
    <p>Základní struktura příkazu pro vytvoření požadavku je následující:</p>
   <strong><span class="console">CreateTicket(&quot;Název služby&quot;, &quot;Název požadavku&quot;, &quot;Vlastní text požadavku&quot; + TicketBody)</span></strong>   <p>Kde <em>TicketBody</em> je již připravený text požadavku, který byl vytvořen převodem obsahu formuláře na text. V případě potřeby lze doplnění textu použít ve všech položkách, jak je uvedeno na obrázku. Chcete-li do vlastního textu vložit zalomení řádků, použijte značku \n.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud je ve formuláři použit prvek &quot;StringField&quot;, který lze použít k zadání textu ve formátu HTML, použijte řetězec &quot;&lt;br&gt;&quot;    </div>


    <p>Název služby musí být vyplněn přesně tak, jak se název služby zobrazuje v administraci. Dílčí služby se oddělují znakem /, například &quot;Interní/Personalita/Zápis zaměstnanců&quot;. Je nutné zadat celou cestu od kořenové služby.</p>

    <p>K dispozici je také verze příkazu pro vytvoření požadavku, která je rozšířena o vytváření odkazů:</p>
   <strong><span class="console">VytvořitTicket(&quot;Název služby&quot;, &quot;Název požadavku&quot;, &quot;Vlastní text požadavku&quot; + TicketBody, MainTicketId, TicketRelationType. SystemTicketRelationType.IsChildOf)</span></strong>   <p>
        Kde <em>MainTicketId</em> je číslo propojeného požadavku. Příklad získání ID z hlavního požadavku je rovněž součástí šablony. Hodnota <em>TicketRelationType.SystemTicketRelationType.IsChildOf</em> definuje typ propojení    </p>
    <table>
        <thead>
            <tr>
                <th>Hodnota</th>
                <th>Typ odkazu</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>RelatesTo</td>
                <td>Vztahuje se k</td>
            </tr>
            <tr>
                <td>IsParentOf</td>
                <td>IsParentOf</td>
            </tr>

            <tr>
                <td>IsChildOf</td>
                <td>Je potomkem</td>
            </tr>

            <tr>
                <td>PrecedesBefore</td>
                <td>Předchází před</td>
            </tr>
            <tr>
                <td>FollowsAfter</td>
                <td>Následuje po</td>
            </tr>
            <tr>
                <td>Blokuje</td>
                <td>Bloky</td>
            </tr>
            <tr>
                <td>IsBlockedBy</td>
                <td>Je blokován</td>
            </tr>
            <tr>
                <td>IsDuplicatedBy</td>
                <td>Is duplicated</td>
            </tr>
            <tr>
                <td>Duplicates</td>
                <td>Duplicates</td>
            </tr>
        </tbody>
    </table>
    <p>
        Například v případě <em>TicketRelationType.SystemTicketRelationType.IsChildOf</em> bude aktuálně vytvořený požadavek dítětem a požadavek s číslem předaným v MainTicketId bude rodičem    </p>
    <p>Pro přístup k hodnotám vlastních polí použijte následující strukturu (příklad pro položky &quot;NoveName&quot; a &quot;NoveNumber&quot;):</p>
   <strong><span class="console">noveName = ((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NoveJmeno&quot;).Value as string;<br />int NoveCislo = (int)((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NoveCislo&quot;).Value<span class="console">
</span></span></strong><h2>Připojení formuláře k aplikaci</h2>
    <p>Pokud v nastavení služby zadáte cestu k formuláři, zobrazí se tento formulář ve webové aplikaci ALVAO místo běžného formuláře pro odeslání nového požadavku. Viz také <a href="../../alvao-service-desk/implementation/services/service-tree">nastavení služby Service Desk</a>.</p>
    <ol>
        <li>V nabídce <strong>WebApp - Administration (Správa) - Service Desk - Services (Služby)</strong> vyberte službu, ve které chcete zobrazit vlastní formulář. </li>
        <li>V části <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">Nový formulář požadavku na</a> panelu příkazů přepněte režim ze systémového návrhu formuláře na <em>vlastní formulář (URL</em>).</li>
        <li>Zadejte cestu k vlastnímu formuláři ve tvaru <strong>~/Custom/&lt;název funkce&gt;/&lt;název formuláře bez</strong> přípony <strong>.cshtml&gt;</strong>.</li>
    </ol>
    <h2>Dynamické přepínání jazyka formuláře</h2>
    <p>Při úpravách souborů .cs a .cshtml můžete použít soubory .resx, které obsahují lokalizované řetězce pro jednotlivé jazyky. Každému uživateli se pak tyto řetězce načtené ze souboru zobrazí podle jeho preferovaného jazyka. Pokud není soubor .resx pro daný jazyk vytvořen, použije se soubor .resx pro angličtinu.</p>
    <h3>Vytvoření souboru .resx pro daný jazyk</h3>
    <p>
        Nejprve vytvořte soubor .resx pro angličtinu. Ze složky <b>Custom\Templates\Resources</b> zkopírujte soubor <b>SampleController.resx</b> do složky <b>Custom&lt;functionality&gt;\Resources</b> a přejmenujte jej na <b>&lt;cshtml název stránky&gt;Controller.resx</b>   </p>
    <p>
        Tento soubor otevřete v textovém editoru. Za řádek <em>&quot;&lt;!-- Insert --!&gt;&quot;</em>vložte řádky    </p>
    <p>
       <em>&lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;</em> <em> <br />&lt;hodnota&gt;name&lt;/value&gt;<br />&lt;/data&gt </em>   </p>
    <p>Výsledek by měl být následující:</p>
    <p>
       <em>&lt;!-- Vložit --!&gt;<br />&lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;<br />&lt;value&gt;name&lt;/value&gt;<br />&lt;/data&gt;<br />&lt;!-- Neměnit --!&gt;<br />&lt;/root&gt </em>   </p>
    <p>Řádky:</p>
    <p>
       <em>. &lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;<br />&lt;value&gt;name&lt;/value&gt;<br />&lt;/data&gt </em>   </p>
    <p>lze zkopírovat a znovu upravit pro vytvoření více lokalizovaných řetězců. Každá hodnota &quot;&lt;data name=&quot;<b>jméno</b>&quot; musí být v rámci souboru jedinečná.</p>
    <p>&lt;data name=&quot;<b>name</b>&quot; určuje název použitý jako parametr ve funkci <b>GetResources()</b> popsané v části <b>Použití souboru .resx v souborech .cs a .cshtml</b>. <b>&lt;hodnota&gt;Name&lt;/value&gt;</b> určuje hodnotu, kterou tato funkce vrací.</p>
    <p>
        Vytvořme nyní soubor .resx pro češtinu. Zkopírujte upravený soubor <b>&lt;cshtml název stránky&gt;Controller.resx</b>. do stejné složky a pojmenujte jej <b>&lt;cshtml název stránky&gt;Controller.cs.resx</b>. Upravte <em>&lt;hodnota&gt;Název&lt;/hodnota&gt;</em> tak, aby v tomto souboru byl následující text    </p>
    <p>
       <em>&lt;!-- Vložte --!&gt;<br />&lt;data name=&quot;name&quot; xml:space=&quot;preserve&quot;&gt;<br />&lt;value&gt;name&lt;/value&gt;<br />&lt;/data&gt;<br />&lt;!-- Neměňte --!&gt;<br />&lt;/root&gt </em>   </p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Neměňte žádné další části souborů resx    </div>

    <p>
        Stejným způsobem, jakým se kopíruje a upravuje soubor <b>&lt;cshtml název stránky&gt;Controller.cs.resx</b>, lze kopírovat a upravovat soubory pro další jazyky, které lze nastavit jako preferované jazyky uživatele. Tyto soubory se vždy jmenují <b>&lt;cshtml název stránky&gt;Controller.&lt;zkratka jazyka&gt;.resx</b> (například <b>&lt;cshtml název stránky&gt;Controller.de.resx</b>). Zkratky jazyků, které lze použít, jsou definovány na adrese    </p>
    <p>
       <a href="http://msdn.microsoft.com/en-us/goglobal/bb896001">http://msdn.microsoft.com/en-us/goglobal/bb896001</a>   </p>
    <h3>Použití souboru .resx v souborech .cs a .cshtml</h3>
    <p>Některé položky vytvořené v souborech .resx lze použít v souborech .cs i .cshtml.</p>
    <p>
        V souboru .cshtml použijte místo řetězce <b>label = &quot;Name</b> &quot; řetězec <b>label = Model.GetResource(&quot;name&quot;</b>). Uživatel, který nastavil jako preferovaný jazyk angličtinu, uvidí popisek pole <b>Name</b>. Ostatní uživatelé uvidí štítek <b>Name</b>   </p>
    <p>
        Při použití v souboru .cs by se stejné funkce dosáhlo použitím <b>GetResource(&quot;name&quot;</b>), namísto řetězce    </p>
</asp:Content>


