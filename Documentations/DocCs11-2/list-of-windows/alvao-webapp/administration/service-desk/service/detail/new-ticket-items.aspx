<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nový formulář požadavku</h1>
    <p>V tomto okně můžete zadat podobu <em>formuláře Nový požadavek</em>, který žadatelé používají k samoobslužnému odesílání svých žádostí. Tento formulář může v každé službě vypadat jinak a může obsahovat různá pole. Hlavní řešitelé, kteří zadávají požadavky jménem žadatelů, vidí tento formulář rozšířený o další pole pro hlavní řešitele.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Panel příkazů</strong>         <ul>
                <li><strong>Uložit a zavřít</strong> - uloží změny a zavře toto okno.</li>
                <li><strong>Přidat položku</strong> - <a href="new-ticket-form-add-item">přidání</a> položky nebo oddílu na konec formuláře.</li>
                <li><strong>Návrh formuláře/Vlastní formulář (URL</strong> ) - vyberte, zda chcete formulář navrhnout výběrem položek požadavku, nebo použít <a href="../../../../../../modules/alvao-sd-custom-apps/custom-form-template">vlastní naprogramovaný formulář</a> a zadat pouze jeho URL.</li>
                <li><strong>.</strong>.  <ul>
                        <li><strong>Výchozí šablona požadavku</strong> - vyberte <a href="select-template">výchozí šablonu požadavku</a> pro vyplnění výchozích hodnot polí formuláře. Tento příkaz se zobrazuje pouze v režimu <i>návrhu formuláře</i>.</li>
                        <li><strong>JavaScript</strong> - zadejte vlastní javascript, který se přidá na stránku formuláře a může upravit jeho vzhled a chování. Tento příkaz je k dispozici pouze po aktivaci stránky <a href="../../../../../../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a>.</li>
                        <li><strong>Proces</strong> - zobrazí <a href="../../process/detail">stránku procesu</a> upravované služby.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>Režim <strong>návrhu formuláře</strong> - v tomto režimu se v okně zobrazují položky formuláře. Další položky lze do formuláře přidat pomocí příkazu <em>Přidat položku</em> v příkazovém řádku nebo kliknutím na tlačítko pod poslední položkou. Kliknutím na název položky se rozbalí tělo položky s dalšími možnostmi. Pořadí položek ve formuláři můžete změnit jejich přetažením myší. 
            <ul>
                <li>
                   <strong>Požadováno pro</strong> - pole se ve formuláři zobrazuje pouze členům systémové skupiny <em>Users (Uživatelé s oprávněním vytvářet požadavky pro jiné uživatele</em> ). Tuto položku nelze z formuláře odstranit ani přesunout na jiné místo.</li>
                <li><strong>Název požadavku</strong> - tato položka se zobrazí v editoru, i když je ve formuláři skrytá. 
                    <ul>
                        <li><strong>Zobrazit ve formuláři</strong> - tuto položku zapněte, pokud chcete ve formuláři zobrazit pole pro zadání názvu požadavku žadateli.</li>
                        <li><strong>Skrýt ve formuláři a název požadavku sestavit podle šablony</strong> - zapněte, pokud nechcete, aby žadatel zadával název požadavku ve formuláři, ale chcete, aby byl název sestaven automaticky z hodnot ostatních polí. Zadejte šablonu, podle které se má název automaticky sestavit. V šabloně můžete použít statický text a také proměnné reprezentující hodnoty polí požadavku. Šablona se použije pouze pro nově vytvořené požadavky. Pokud šablona obsahuje proměnné, není název požadavku při změně hodnoty pole požadavku (proměnné) automaticky změněn. 
                            <ul>
                                <li><strong>Vložit proměnnou</strong> - v šabloně názvu požadavku umístěte kurzor na místo, kam chcete proměnnou vložit, a poté vyberte proměnnou z této nabídky.</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><strong>Objekty</strong>      <ul>
                        <li><strong>Povinné</strong> - viz tato možnost v bloku <i>Ostatní pole</i> </li>
                        <li><strong>Vložit do šablony názvu požadavku</strong> - viz tato možnost v bloku <i>Ostatní pole</i> </li>
                        <li><strong>Omezit pole podle druhu objektu</strong> - pokud chcete, aby žadatel mohl při zadávání požadavku vyplnit do pole <i>Objekty</i> pouze objekty určitých typů, zadejte tyto povolené typy.</li>
                    </ul>
                </li>
                <li><strong>Sekce</strong> - pro zpřehlednění formuláře můžete jeho pole seskupit do sekcí a tyto sekce pojmenovat. Sekci vložte do formuláře pomocí příkazu <em>Přidat položku</em> a poté ji přesuňte na místo, kde má blok polí začínat. Blok bude obsahovat všechna následující pole až do konce formuláře nebo do začátku další sekce. Ve formuláři <a href="../../../../requests/new-request">Nový požadavek</a> pak může uživatel jednotlivé sekce polí sbalit nebo rozbalit podle potřeby        <ul>
                        <li><strong>Upravit (ikona tužky)</strong> - úprava názvu sekce.</li>
                        <li><strong>Odstranit z formuláře (ikona koše) </strong>- odstranění sekce. Podání obsažená v sekci se z formuláře neodstraní</li>
                        <li><strong>Další možnosti po rozbalení </strong>         <ul>
                                <li><strong>Při zobrazení formuláře sekce - Sbalit/rozbalit</strong> - výběr výchozího režimu zobrazení sekce na formuláři <a href="../../../../requests/new-request">Nový požadavek</a> </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>Další pole - seznam dalších polí formuláře. 
                    <ul>
                        <li>Záhlaví pole    <ul>
                                <li><strong>Pole formuláře (ikona zámku)</strong> - tato ikona označuje pole, která jsou ve formuláři pouze pro odeslání nového požadavku. Tato pole se na rozdíl od procesně definovaných polí nezobrazují na kartě <em>Obecné</em> žádosti a členové řešitelského týmu nemohou v žádosti měnit jejich hodnoty. Stejně jako pole definovaná procesem se tato pole zapisují do zprávy o vytvoření požadavku a lze je zobrazit ve sloupcích tabulky požadavků.</li>
                                <li><strong>Upravit (ikona tužky)</strong> - <a href="new-ticket-form-edit-item">editace</a> vybraného pole.</li>
                                <li><strong>Odstranit z formuláře (ikona koše)</strong> - odstranění vybraných polí z formuláře. Pole, která jsou nastavena jako povinná pro <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">proces</a> služby, nelze z formuláře odstranit.</li>
                            </ul>
                        </li>
                        <li>Tělo pole<ul>
                            <li><strong>Povinné</strong> - zapněte, pokud chcete žadateli zabránit v odeslání požadavku bez vyplnění hodnoty v tomto poli. U polí, která jsou nastavena jako povinná pro stav <em>Nový</em> v <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">procesu</a> služby, nelze tuto možnost vypnout. Pole <em>Název požadavku</em>, <em>Popis</em> a <em>Přílohy</em> nelze označit jako povinná.</li>
                            <li><strong>Vložit do šablony název požadavku</strong> - přidá proměnnou reprezentující hodnotu tohoto pole na konec šablony názvu požadavku, viz <em>Název požadavku</em>.</li>
                        </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>Režim <strong>vlastního formuláře (URL)</strong>    <ul>
                <li><strong>Vlastní formulář URL</strong> - zadejte cestu k <a href="../../../../../../modules/alvao-sd-custom-apps/custom-form-template">formuláři pro odeslání nového požadavku</a>, obvykle ve tvaru <em>~/Custom/&lt;název rozšíření&gt;/&lt;název formuláře bez .cshtml&gt;</em>.</li>
            </ul>
        </li>
    </ul>


    <p>
        Formulář pro zadání <em>nového požadavku</em> zobrazuje kromě vybraných nepovinných polí také všechna povinná pole pro stav <em>Nový</em> podle <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">nastavení procesu</a>   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        V části Servis - Úpravy - <a href="../extended">Rozšířená</a> sekce - možnost <em>Zobrazit volitelné položky žadateli</em> neurčuje pole zobrazená ve formuláři <em>Nového požadavku</em>   </div>
</asp:Content>
