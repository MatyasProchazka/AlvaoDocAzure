<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Nástroj ImportAD</h1>

    <h2>Popis funkce</h2>

    <p>Tento nástroj slouží k importu (synchronizaci) uživatelů a skupin z Active Directory pro celý systém Alvao. Nástroj také umožňuje importovat objekty (uživatele, počítače a organizační jednotky) do modulu Asset Management.</p>

    <p>
        Nástroj naleznete v instalační složce konzoly ALVAO Asset Management Console ("%ProgramFiles%\ALVAO\Asset Management Console\ImportUtilities") nebo jej můžete zkopírovat z aplikačního serveru z instalační složky služby ALVAO ("%ProgramFiles%\ALVAO\AlvaoService\utilities")    </p>

    <p>
        Účet, pod kterým nástroj spouštíte, musí být členem skupiny <em>Domain Admins</em> nebo mít delegované oprávnění <em>Číst všechny informace o uživatelích</em>   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud se v importovaných skupinách objeví členové z jiných důvěryhodných domén, bude v některých případech nutné tyto domény uvést v tabulce <a href="ad-trusted-domains">AdTrustedDomain</a>   </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Jazyk uživatele je při importu ze služby Active Directory nastaven atributem <em>prefferedLanguage</em> nebo <em>countryCode</em>   </div>

    <h2>Syntaxe příkazových řádků</h2>

    <p>
       <strong>ImportAD.exe /adpath</strong> <em>&quot;cesta LDAP&quot;</em> <strong>{/conn</strong> <em>&quot;připojovací řetězec&quot;</em> | <strong>/server</strong>&quot; <em>název databázového serveru&quot;</em> <strong>/db</strong> <em>&quot;název databáze&quot;</em>}<strong>[/users</strong>[remove,outsidegroups]]<strong>[/usermap</strong> <em>&quot;mapování atributů&quot;</em>]<strong>[/objects</strong>{users,computers,ou,flat}]<strong>[/objectparentid</strong> &quot;NodeId&quot;] [<strong>/login</strong> <em>&quot;login name&quot;]</em><strong>[/pswd</strong> <em>&quot;password&quot;]</em><strong>[/log</strong>&quot; <em>file&quot;]</em><strong>[/progress</strong>]<strong>[/wait</strong>]<strong>[/help</strong>]<strong> </strong><span><strong>[/noportraits</strong></span>]    </p>

    <h2>Podrobný popis parametrů</h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Parametr</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>/adpath &lt;cesta kLDAP&gt;</td>
                <td>Cesta ke službě Active Directory ve formátu LDAP. Podporovány jsou tři varianty        <ol>
                        <li>Import DC (celý AD) - importují se všichni uživatelé a skupiny včetně nastavení členství ve skupinách a uživatelích (&quot;kopie&quot; celého AD).</li>
                        <li>Import konkrétní OU (organizační jednotky) - importují se všichni uživatelé a skupiny v rámci zadané OU. Je možné použít i <strong>outsidegroups</strong>, podrobnější popis viz níže.</li>
                        <li>Import konkrétní CN (skupiny) - importují se všichni uživatelé a skupiny, kteří jsou členy konkrétní skupiny (do hloubky - viz poznámka níže).</li>
                    </ol>
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Pokud potřebujete použít LDAPS, musíte před zadáním variant přidat název hostitele a port serveru Active Directory: "LDAP:<b>//&lt;název hostitele serveru AD&gt;:636/</b>..."               </div>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Poznámka: </div>

                        <ul>
                            <li>Procházení členství ve skupinách do hloubky zahrnuje procházení všech skupin, které jsou členy určité skupiny, pak procházení jejich členů, opět procházení jejich členů atd.<br />
                                Příklad: Skupina C je členem skupiny B, která je členem skupiny A. Import importuje všechny skupiny A+B+C. </li>
                            <li>Přepínač <strong>/objects</strong> (import objektů do Asset Managementu) nefunguje s cestou směrovanou z konkrétní skupiny (CN).</li>
                        </ul>
                    </div>
                </td>
            </tr>
            <tr>
                <td>/conn &lt;řetězec&gt;<br />
                    /server&lt;název serveru&gt;<br />
                    /db &lt;název databáze&gt;</td>
                <td>Tyto parametry slouží k nastavení připojení k databázi Alvao. Je možné použít řetězec připojení (např. <strong>/conn</strong> <em>&quot;Zdroj dat=.\sqlexpress;Počáteční katalog=test;Integrované zabezpečení = True;TrustServerCertificate=True&quot;)</em> nebo jednoduše zadat konkrétní SQL server a DB (např. <strong>/server</strong> <em>&quot;.\sqlexpress</em>&quot; <strong>/db</strong><em>&quot;test&quot;)</em>.<br />
                    V případě, že použijete parametry <strong>/server</strong> a <strong>/db</strong>, připojení k databázi se provede pomocí integrovaného ověřování systému Windows. Pokud zadáte všechny tyto parametry, použije se pouze parametr <strong>/conn</strong>, <strong>/server</strong> a <strong>/db</strong>budou ignorovány. </td>
            </tr>
            <tr>
                <td>/users &lt;parametry&gt;</td>
                <td>Import uživatelů a skupin do správy. Parametry jsou odděleny čárkou        <br />
                    <br />
                    Popis možných parametrů          <table class="wide">
                        <thead>
                            <tr>
                                <th>Parametr</th>
                                <th>Význam</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>remove</td>
                                <td>Odebere uživatele, které nemůže najít v AD. Tento příznak funguje pouze při importu skupiny, organizační jednotky, kontejneru nebo celé služby AD (DC)    <br />
                                    Odstraněny jsou pouze účty, které byly původně importovány z AD. Ručně vytvořené účty se neodstraní. </td>
                            </tr>
                            <tr>
                                <td>outsidegroups</td>
                                <td>Pokud import probíhá v OU (organizační jednotce), importuje také členy skupin (skupin v rámci OU) ležících mimo vybranou OU.<div class="note">
                                   <div class="icon"></div>
                                    <div class="title">Poznámka:</div>
                                    vyhledávání členů skupin jde do libovolné hloubky       </div>
                                   <strong>Příklad </strong>        <br />
                                    Příklad: Importujeme OU &quot;CZ&quot;, ve které je skupina &quot;CZA&quot;. Členem skupiny &quot;CZA&quot; je skupina &quot;SKA&quot;, která se nachází v jiné OU &quot;SK&quot;. Členem skupiny &quot;SKA&quot; je osoba &quot;Petr&quot;.<br />
                                    Použijeme-li tento přepínač, jsou skupiny &quot;SKA&quot; a &quot;Peter&quot; importovány (i když leží mimo importovanou OU &quot;SK&quot;). Případní další členové skupiny &quot;SKA&quot; jsou rovněž importováni do neomezené hloubky (členové skupiny).<br />
                                    Pokud přepínač nepoužijete, skupina &quot;SKA&quot; ani osoba &quot;Peter&quot; se nevytvoří.</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td>/usermap &lt;mapping&gt;</td>
                <td>Tento přepínač slouží k určení mapování určitých atributů při importu uživatelů a skupin do aplikace Administration. Přepínač funguje pouze v kombinaci s přepínačem <strong>/users</strong>.<br />
                    <br />
                    Podporované atributy:<br />
                    <table class="wide">
                        <thead>
                            <tr>
                                <th>Atribut</th>
                                <th>Název pole v administraci</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Společnost</td>
                                <td>Organizace</td>
                            </tr>
                            <tr>
                                <td>PersonalNumber</td>
                                <td>Osobní číslo</td>
                            </tr>
                            <tr>
                                <td>@tPersonCust.Column</td>
                                <td>Vlastní položky osoby - viz poznámka</td>
                            </tr>

                        </tbody>
                    </table>
                    <br />
                    Atributy lze namapovat buď na konstantní řetězec v příkazovém řádku (např. chcete, aby všechny osoby měly ručně zadanou stejnou Organizaci), nebo na konkrétní pole z AD. Podrobnější informace naleznete v příkladech použití.<br />
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        <br />
                        Atributy lze také mapovat na jakákoli existující vlastní položky z tabulky <em>tPersonCust</em> (kromě polí typu <em>int</em>, která používají seznam hodnot, a typu <em>users</em>). Název atributu musí být <em>&quot;@&quot;+[tPersonCust] +[název sloupce databáze]</em>, např. <em>@tPersonCust.Title</em>                 </div>
                    <div class="tip">
                       <div class="icon"></div>
                        <div class="title">Tip:</div>
                        Přepínač lze použít pouze při importu do Správa. Pro mapování atributů AD na vlastnosti objektů ve Správě aktiv použijte článek <a href="ad-object-property-mapping">Mapování atributů Active Directory na vlastnosti objektů</a>       </div>
                </td>
            </tr>
            <tr>
                <td>/objects &lt;parametry&gt;</td>
                <td>Import objektů do Správy aktiv. Parametry se oddělují čárkami.<br />
                    <br />
                    Popis možných parametrů: <table class="wide">. <thead> <tr> <th>parametr</th> <th>Význam</th> </tr> </thead> <tbody> <tr> <td>uživatelé</td> <td>Importovat uživatele.</td> </tr> <tr> <td>počítače</td> <td>Importovat počítače.</td> </tr> <tr> <td>ou</td> <td>Importovat organizační členění.</td> </tr> <tr> <td>flat</td> <td>Importovat pouze objekty v zadané cestě a nevyhledávat včetně podsložek</td> </tr> </tbody> </table>         <div class="caution">
                       <div class="icon"></div>
                        <div class="title">Upozornění:</div>
                        Je nutné zadat alespoň jeden z následujících parametrů: <strong>users, computers, ou</strong></div>
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka: </div>
                        Mapování atributů AD na vlastnosti AM se nastavuje pomocí <a href="ad-object-property-mapping">tabulky tblADMap</a>.<br />
                        Importem se ve <em>složce</em> vytvoří nové objekty. Objekty načtené ze služby Active Directory</em></div>

                </td>
            </tr>
            <tr>
                <td>/objectparentid &lt;NodeId&gt;</td>
                <td>Vytvoří nové objekty jako podřazené objekty pod objektem s ID: &lt;NodeId&gt;. Funguje pouze ve spojení s přepínačem /objects.<br />
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka: </div>
                        Hodnotu NodeId můžete zjistit v AM Console na kartě <em>Objekty</em>. zobrazením systémového sloupce NodeId nebo v tabulce tblNode. intNodeId         </div>
                </td>
            </tr>
            <tr>
                <td>/noportrét</td>
                <td>Import bez portrétů.</td>
            </tr>
            <tr>
                <td>/wait</td>
                <td>Počká na stisknutí klávesy na konci importu.</td>
            </tr>
            <tr>
                <td>/progress</td>
                <td>Zobrazí průběh importu.</td>
            </tr>
            <tr>
                <td>/login &lt;login&gt;</td>
                <td>Přihlašovací jméno uživatele. Tento účet bude použit pro přístup k službě AD.<br />
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka: </div>
                        Pokud tento parametr není zadán, bude import přistupovat k službě AD pod účtem, pod kterým byl nástroj spuštěn (aktuálně přihlášený uživatel systému Windows)        </div>
                </td>
            </tr>
            <tr>
                <td>/pswd &lt;heslo&gt;</td>
                <td>Heslo uživatele, jehož účet bude použit pro přístup ke službě Active Directory. </td>
            </tr>
            <tr>
                <td>/log &lt;soubor&gt;</td>
                <td>Záznam do souboru. Zadejte cestu a název souboru.<br />
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka: </div>
                        Při každém spuštění bude protokol přepsán         </div>
                </td>
            </tr>
            <tr>
                <td>/datetimeformat</td>
                <td>Formát data v textových řetězcích (např. dd/mm/rrrr). Pokud není parametr zadán, formát se při převodu rozpozná automaticky.<br />
                    Podrobný popis možných formátů najdete v <a href="https://msdn.microsoft.com/en-us/library/8kb3ddd4%28v=vs.110%29">MSDN</a>.</td>
            </tr>

        </tbody>
    </table>

    <h2>Mapování polí na atributy AD u osob</h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Název pole</th>
                <th>Název atributu v systému AD</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Jméno a příjmení</td>
                <td>cn<br />
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Výchozí <a href="name-template">šablonu uživatelského jména</a> můžete změnit       </div>
                </td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>e-mail</td>
            </tr>
            <tr>
                <td>Telefon</td>
                <td>telefonní číslo</td>
            </tr>
            <tr>
                <td>Mobilní telefon</td>
                <td>mobilní</td>
            </tr>
            <tr>
                <td>Kancelář</td>
                <td>physicalDeliveryOfficeName</td>
            </tr>
            <tr>
                <td>Organizace</td>
                <td>společnost</td>
            </tr>
            <tr>
                <td>Divize</td>
                <td>oddělení</td>
            </tr>
            <tr>
                <td>Pracovní pozice</td>
                <td>název</td>
            </tr>
            <tr>
                <td>Jméno uživatele</td>
                <td>userPrincipalName</td>
            </tr>
            <tr>
                <td>UserName (pro starší systémy)</td>
                <td>sAMaccountName</td>
            </tr>
            <tr>
                <td>Supervisor</td>
                <td>manager</td>
            </tr>
            <tr>
                <td>Účet je zablokován</td>
                <td>userAccountControl</td>
            </tr>
        </tbody>
    </table>

    <h2>Příklady použití</h2>
    <ol>
        <li>
            <p>
                Import všech členů skupiny <em>mygroup</em> zadáním jednoduchého přihlášení k serveru SQL:<br />
               <strong>ImportAD.exe /adpath</strong> &quot;LDAP://CN=mygroup,DC=my,DC=domain&quot; <strong>/server</strong> &quot;server\sql2005&quot; <strong>/db</strong> &quot;alvao&quot;<strong> /users</strong>     </p>
        </li>
        <li>
            <p>
                Import celého AD a konkrétního připojení k SQL Serveru, odstranění uživatelů, které nemůže v AD najít:<br />
               <strong>ImportAD.exe /adpath</strong>&quot;LDAP://DC=my,DC=domain&quot; <strong>/conn</strong> &quot;Data Source=.\sqlexpress;Initial Catalog=alvao;Integrated Security=True;TrustServerCertificate=True&quot; <strong>/users</strong> remove      </p>
        </li>
        <li>
            <p>
                Import konkrétní organizační složky a jednoduché přihlášení SQL. Pole <em>Organizace</em> bude pro všechny uživatele nastaveno na řetězec <em>ALVAO</em>. Pole <em>PersonalNumber</em> ponese hodnotu z atributu AD <em>PersonalNumber</em>. Vlastní položka <em>Title</em> ponese hodnotu z atributu AD <em>Personal</em>. PersonalTitle</em>. Importovány budou také skupiny mimo organizační jednotku, které jsou členy skupin uvnitř organizační jednotky:<br />
               <strong>ImportAD.exe /adpath</strong>&quot;LDAP://OU=ou1,DC=my,DC=domain&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/users</strong> outsidegroups<strong> /usermap</strong>&quot;Company='ALVAO'&quot; <strong>/usermap</strong>&quot;PersonalNumber=AD.EmployeeID&quot; <strong>/usermap</strong>&quot;@tPersonCust.Title=AD.PersonalTitle&quot;            </p>
        </li>
        <li>
            <p>
                Import nových zaměstnanců. Žádný z nich není na volné noze, všichni pracují na částečný úvazek a nastoupí 15. srpna v 10 hodin v budově na adrese Waterfront 12 v místnosti 007. Všichni budou zařazeni do vlastních položek příslušných typů.<br />
               <strong>ImportAD.exe</strong> <strong>/adpath</strong>&quot;LDAP://DC=new,DC=domain&quot; <strong>/conn</strong> &quot;Data Source=.\sqlexpress;Initial Catalog=alvao;Integrated Security=True;TrustServerCertificate=True&quot; <strong>/users</strong> <strong>/usermap</strong> &quot;@tPersonCust.Externist='0'&quot; <strong>/usermap</strong> &quot;@tPersonCust.Part_time='0,5'&quot; <strong>/usermap</strong>&quot;@tPersonCust.Date_of_onboard='8/15/2015 10:00:00'&quot; <strong>/usermap</strong>&quot;@tPersonCust.Building_address='Nábřežní 12'&quot; <strong>/usermap</strong>&quot;@tPersonCust.Room_number='007'&quot            </p>
        </li>
        <li>
            <p>
                Import objektů typu <em>Počítač</em> a <em>Uživatel</em> do Správy majetku:<br />
               <strong>ImportAD.exe /adpath</strong>&quot;LDAP://OU=ou1,DC=my,DC=doména&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/objects</strong> computers,users            </p>
        </li>
        <li>
            <p>
                Import objektů typu <em>Počítač</em> a <em>Uživatel</em> do Asset Management a také uživatelů a skupin do Administration:<br />
               <strong>ImportAD.exe /adpath</strong>&quot;LDAP://OU=ou1,DC=my,DC=doména&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/objects</strong> computers,users <strong>/users</strong>     </p>
        </li>
        <li>
            <p>
                Import počítačů ze standardního kontejneru Computers do Asset Management:<br />
               <strong>ImportAD.exe /adpath</strong>&quot;LDAP://CN=Computers,DC=my,DC=domain&quot; <strong>/server</strong>server1 <strong>/db</strong> alvao <strong>/objects</strong> computers         </p>
        </li>
    </ol>

    <h2>Klíčové identifikátory pro vytvoření nebo aktualizaci uživatele/PC </h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Entita</th>
                <th>Identifikátor</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>WebApp - Administration - Persons</td>
                <td>
                    <ul>
                        <li>GUID AD</li>
                        <li>přihlašovací jméno bez domény (a AD GIUD osoby je také NULL - tj. ručně vytvořený uživatel)</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>WebApp - Administration - Groups</td>
                <td>
                    <ul>
                        <li>AD GUID</li>
                        <li>Skupina (název)</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td>AM - Uživatelé/Počítače/Složky</td>
                <td>
                    <ul>
                        <li>AD GUID</li>
                        <li>klíčový atribut podle <a href="ad-object-property-mapping">tblAdMap</a> (a AD GUID objektu je také NULL)</li>
                    </ul>
                </td>
            </tr>
        </tbody>
    </table>


    <h2>Podporované scénáře</h2>

    <h3>Synchronizace s celým AD (včetně mazání uživatelů)</h3>

    <p>
        Proveďte import celého AD (LDAP://DC=...) a při importu skupin a uživatelů do Administration použijte parametr <strong>remove</strong> (/users remove)    </p>

    <h3>Import několika vybraných skupin AD do systému Alvao</h3>
    <ol>
        <li>Vytvořte v AD novou skupinu <em>ALVAO</em> a nastavte jako členy všechny vybrané skupiny, které chcete importovat do Alvao.</li>
        <li>Nastavte import a cestu v parametru <strong>/adpath</strong>. nastavte <em>ALVAO</em> na tuto skupinu.<br />
            Například: <strong>/adpath</strong>&quot;LDAP://CN=alvao,OU=import,DC=doména&quot;.</li>
        <li>Všechny vybrané skupiny a jejich členové (včetně uživatelů) se zobrazí v administraci. Členství ve skupinách bude nastaveno správně.</li>
    </ol>

    <h3>Import bez fotografií přímo z AD </h3>

    <p>
        Při importu uživatelů z AD se ve výchozím nastavení načítají také portréty z vlastností <em>thumbnailPhoto</em> a <em>jpegPhoto</em>. Portréty uživatelů jsou uloženy v databázi Alvao.<br />
        Pokud nechcete načítat portréty z AD, spusťte import z příkazového řádku a přidejte příkaz <em>/noportraits.</em><br />
        Příklad: V seznamu portrétů je uveden příkaz portrétů    </p>
    <p>
       <strong>ImportAD.exe /adpath</strong>&quot;LDAP://OU=ou1,DC=my,DC=doména&quot; <strong>/server</strong> server1 <strong>/db</strong> alvao <strong>/objects</strong>computers,users <strong>/users /portraits</strong>   </p>
    <div class="note">
        <div class="icon"></div>
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pro automatické načtení naplánované úlohy je tedy nutné upravit příkaz <em>ImportAD</em> přidáním parametru /noportraits    </div>

    <h3>Import objektů do správy aktiv</h3>

    <p>
        Spusťte import v celé službě AD (nelze importovat blokované účty) nebo ve vybrané organizační jednotce a pomocí přepínače <strong>Switch</strong>/objects</strong> určete, co se má importovat. Pomocí přepínače <strong>/objectparentid</strong> určete, kam se mají objekty importovat (volitelné)    </p>

    <h3>Vyhledání blokovaných uživatelů ze služby Active Directory</h3>
    <ol>
        <li>Ve stromu v hlavním okně konzoly AM vyberte celou organizaci a klikněte na kartu <em>Objekty - vše</em>.</li>
        <li>Zobrazte sloupec <em>Účet je blokován</em>.</li>
        <li>Nastavte filtr ve sloupci <em>Typ</em> na hodnotu <em>Uživatel</em>a filtr ve sloupci <em>Účet je blokován</em> na hodnotu <em>Ano</em>.</li>
        <li>Po vytvoření seznamu blokovaných uživatelů použijte příkaz <em>Zobrazit v seznamech objektů</em> pro snadnější navigaci v položkách seznamu.</li>
        <li>Filtrovaný seznam obsahuje uživatele, kteří mají ve službě Active Directory zablokovaný účet. Přesuňte tyto uživatele do složky pro vyloučené uživatele.</li>
    </ol>

    <h3>Odstranění starých uživatelů</h3>
    <p>Pokud chcete odstranit staré uživatele, kteří se již nějakou dobu nenacházejí v adresáři Active Directory, postupujte podle tohoto postupu:</p>
    <ol>
        <li>Na stránce Správa na stránce <em>Uživatelé</em> seřaďte uživatele podle sloupce <em>Naposledy importováno z AD</em> vzestupně.</li>
        <li>Vyberte a odstraňte uživatele, kteří již delší dobu nebyli nalezeni ve službě AD.</li>
    </ol>
    <h3>Odstranění starých objektů ze správy aktiv</h3>
    <p>Chcete-li odstranit staré objekty, které již delší dobu nebyly nalezeny ve službě Active Directory, postupujte podle tohoto postupu:</p>
    <ol>
        <li>V AM Console vyberte ve stromu objektů celou organizaci a přejděte na kartu <em>Objekty</em>.</li>
        <li>Zobrazte sloupec <em>Naposledy importováno z AD</em>.</li>
        <li>Pomocí filtru ve sloupci <em>Typ</em> zobrazte pouze počítače nebo uživatele.</li>
        <li>Nastavte filtr ve sloupci <em>Aktualizovat importované z AD</em> na hodnotu ne &quot;&quot; a seřaďte tabulku vzestupně.</li>
        <li>V místní nabídce použijte příkaz <em>Zobrazit v seznamech objektů</em>.</li>
        <li>V okně <em>Seznamy objektů</em> postupně procházejte staré objekty. Pokud měl uživatel nějaký objekt, doplňte jeho návrat.</li>
        <li>Přesuňte objekty do složky <em>Utajovaný majetek</em>.</li>
    </ol>
    <h3>Přejmenujte počítač</h3>
    <p>Pokud je počítač načten ze služby Active Directory (AD) a je třeba jej přejmenovat:</p>
    <ol>
        <li>Přejmenujte počítač v systému Windows (počítač bude mít v systému AD stejný GUID).</li>
    </ol>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka: </div>
        Při příštím importu ze služby AD nástroj ImportAD automaticky přejmenuje počítač i ve Správě aktiv    </div>
    <h3>Přeinstalování (reimage) počítače se zachováním názvu</h3>
    <p>Pokud je počítač načten ze služby Active Directory (AD) a vy potřebujete přeinstalovat jeho operační systém nebo jej obnovit z obrazu disku a zachovat jeho název v síti:</p>
    <ol>
        <li>Odeberte počítač ze služby AD.</li>
        <li>Přejděte do konzoly AM, vyhledejte počítač ve stromu a použijte příkaz <em>Upravit</em> z místní nabídky        <br />
            Odstraňte hodnotu v <em>poli GUID objektu ve službě Active Directory</em>.</li>
        <li>Znovu nainstalujte operační systém nebo jej obnovte z image disku. Dejte počítači jeho původní název.</li>
        <li>Znovu zaregistrujte počítač ve službě AD (počítač získá nový identifikátor GUID ve službě AD).</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka: </div>
        Při příštím importu ze služby AD nástroj ImportAD automaticky spáruje nový počítač ve službě AD s počítačem ve správě aktiv podle vlastnosti <em>Network Name</em>   </div>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

