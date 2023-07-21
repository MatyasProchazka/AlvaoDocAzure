<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Přenos služeb</h1>
    <p>
        Služby včetně jejich nastavení můžete přenést z jedné instance systému Alvao do jiné instance tak, že v jedné instanci vyexportujete nastavení vybraných služeb do souboru a ten pak importujete do druhé instance. Tímto způsobem můžete například přenést nové služby, které jste vytvořili a otestovali v testovacím prostředí, do produkčního prostředí    </p>
    <p>
        Importem souboru do cílové instance se vytvoří nové služby, procesy atd. Pokud v cílové instanci již existují stejně pojmenované služby, procesy atd. jako v importovaném souboru, tyto prvky se v cílové instanci neaktualizují. 
    </p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Upozornění:</div>
        <p>Přenášet lze pouze nové služby, které v cílovém prostředí ještě neexistují, stávající služby však nelze aktualizovat.</p>
    </div>

    <h3>Export služeb</h3>
    <ol>
        <li>V <strong>instanci prostředku</strong> (např. v testovacím prostředí) v <strong>ALVAO WebApp - Administration (Správa) - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services (Služby)</a> vyberte službu, kterou chcete přenést. Pokud nevyberete žádnou službu, přenesou se všechny služby ve stromu.</li>
        <li>Pomocí příkazu <strong>Exportovat</strong> určete, zda chcete službu uložit do souboru se všemi podřízenými službami nebo bez nich.</li>
        <li>Pojmenujte soubor a potvrďte export.</li>
    </ol>
    <h3>Import služeb</h3>
    <ol>
           <li>V <strong>cílové instanci</strong> (např. v produkčním prostředí) v <strong>ALVAO WebApp - Administration - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Services</a> ve stromu nebo v tabulce služeb vyberte jednu službu, do které chcete importovat služby ze souboru. Použijte příkaz <strong>Importovat</strong>. Pokud žádnou službu nevyberete, importují se nové služby do kořene stromu služeb. <li>Vyberte soubor s uloženými nastaveními z disku, viz <i>Export služeb</i>, a výběr souboru potvrďte tlačítkem OK.</li> <li>V zobrazeném dialogu zkontrolujte přehled importovaných nastavení a potvrďte import.</li> <li>Balíček se importuje postupně a nakonec se zobrazí report s přehledem importovaných nastavení. Poznámka: Zpráva o importovaných nastaveních se tak uloží do protokolu Windows <em>ALVAO Audit</em>.</li>Nastavení <li>dokončete podle pokynů v této zprávě</li>   </ol>
    <h3>Obsah souboru</h3>
    <p>Soubor obsahuje následující informace:</p>
    <ul>
        <li>Služba (včetně dílčích služeb)        <ul>
                    <li>Nastavení služby (název, pořadí ve stromu, klíčová slova, nastavení formuláře atd.)</li>
                    <li>Ikona</li>
                    <li>Nastavení zobrazení katalogu služeb</li>
                    <li>Formulář pro zadání nového požadavku, případně včetně výchozí šablony požadavku</li>
                    <li>Nastavení zástupce služby</li>
                    <li>Oznámení (včetně vlastních oznámení)</li>
                    <li>Vlastní položka služeb a jejich hodnoty</li>
                </ul>
        </li>
        <li>Procesy exportovaných služeb<ul>
            <li>Obecná nastavení procesu</li>
            <li>Položky požadavků nastavené v procesu</li>
            <li>Průběh řešení         <ul>
                        <li>Stavy požadavku<ul>
                            <li>Obecné nastavení stavu (název, popis, pokyny pro řešitele atd.)</li>
                            <li>Nastavení oznámení pro žadatele (včetně vlastní šablony)</li>
                            <li>Povinné položky pro přechod do stavu požadavku</li>
                            <li>Nastavení schvalování             <ul>
                                    <li>Cílové stavy požadavku</li>
                                    <li>Šablona hlášení pro schvalovatele</li>
                                    <li>Název schématu schvalování pro automaticky spouštěná schválení</li>
                                </ul>
                            </li>
                            <li>Pravidla pro <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/process/detail/status-request/automatic-request-creation">automatické vytváření požadavků</a> (viz modul <a href="../../../modules/alvao-sd-advanced-workflows">ALVAO Pokročilé pracovní postupy</a>) včetně příslušných šablon požadavků, ale pouze pro služby obsažené v exportovaném souboru.  </li>
                        </ul>
                        </li>
                    </ul>
            </li>
        </ul>
        </li>
        <li>Vlastní položky požadavků používané v exportovaných procesech a službách</li>
        <li>Vlastní položka pro stavy požadavků</li>
        <li>Ikony exportovaných služeb</li>

    </ul>
    <p>Uvedené entity jsou exportovány včetně překladů textu do jiných jazyků.</p>
    <p>Soubor neobsahuje:</p>
    <ul>
        <li>Uživatelé</li>
        <li>Skupiny uživatelů</li>
        <li>SLA</li>
        <li>Přístup ke službám</li>
        <li>Přiřazené SLA žadatelům o služby</li>
        <li>Schvalovací schémata</li>
        <li>Provozní doba</li>
        <li>Šablony požadavků kromě uvedených výjimek</li>
    </ul>

</asp:Content>