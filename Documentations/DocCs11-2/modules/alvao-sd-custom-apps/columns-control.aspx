<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>ColumnsControl elementl</h1>

    <p>Ovládací prvek ColumnsControl zobrazuje na formuláři vstupní pole pro zadávání hodnot přímo do položek požadavku.</p>

    <p>
        ColumnsControl generuje celé vstupní pole formuláře s popisem. Pro základní funkčnost je třeba nastavit zobrazované položky (např. ShowColumns = &quot;tHdTicket.mHdTicketNotice&quot;), případně povinné položky (např. RequiredColumns=&quot;tHdTicket.mHdTicketNotice&quot;). Položky se zobrazují v zadaném pořadí shora dolů    </p>
    <p>
        Každý prvek ColumnControl je třeba inicializovat. V souboru <strong>.cs</strong> ve funkci ConfigControls() použijte pro každý prvek ColumnsControl použitý ve formuláři následující řádek:<br />
       <em>((DynamicModel)Model).GetControl</em><columnscontrol><em>&lt;ColumnsControl&gt;(&quot;ColumnsControl0&quot;) </em>;<em><br />Místo </em> <em>ColumnsControl0</em> použijte název vašeho prvku    </p>
    <p>Pokud tento ovládací prvek vložíte do formuláře mezi &lt;div id=&quot;CustomFormContent&quot; a &lt;/div&gt;, hodnoty se automaticky uloží při volání funkce CreateTicket. Tento ovládací prvek lze na jedné stránce použít vícekrát. Možné další nastavení a příklad naleznete níže.</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Doporučujeme nastavit <em>ovládací prvek ColumnsControl</em> pomocí atributů na stránce (.<strong>cshml</strong>). <em>ColumnsControl</em> lze konfigurovat také v kódu (.<strong>cs</strong>)    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Aby se tyto položky nepřidávaly do textu požadavku, je třeba je umístit mimo <strong>&lt;div id=&quot;CustomFormContent&quot;</strong> a <strong>&lt;/div&gt;</strong>, ale pak je třeba ručně uložit vyplněné hodnoty voláním funkce <strong>UpdateColumns(.</strong>..) pro každý <em>ColumnsControl</em>a každý vytvořený požadavek    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při zobrazení stránky se <em>ColumnsControl</em> pokusí získat <em>SectionId</em>automaticky ze zadané webové adresy. Pokud webová adresa obsahuje parametr adresy <strong>iHdSectionId=cislo</strong>, použije se <em>&quot;cislo&quot;</em> jako ID vybrané služby, pokud není nastaveno jinak. ( <em>Např.</em>http://www.servicedesk.cz/Custom/ALVAO/NewTicket_Template/?iHdSectionId=11 obsahuje ID služby #11. To se automaticky nastaví jako <em>SectionId</em>.)<br />
        Tuto funkci lze vypnout nastavením <em>SectionId=&quot;0</em> &quot; nebo nastavením konkrétní služby    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <p><em>ColumnsControl</em> provádí základní kontrolu práv:</p>
        <ul>
            <!-- Cancelled: <li>If <em>SectionId</em> or <em>SectionName</em> is set, the logged in user must have at least one SLA on that service, otherwise the user is redirected to an error page.</li> -->
            <li>Pokud je nastaveno <em>TicketId</em>, musí mít přihlášený uživatel možnost tento požadavek zobrazit, jinak je uživatel přesměrován na chybovou stránku.</li>
        </ul>
    </div>

    <h2>Formát parametru</h2>
    <p>V popisech atributů a funkcí se používají následující formáty parametrů:</p>
    <ul>
       <li><strong>sloupce -</strong> seznam sloupců ve formátu &quot;<strong>table1.column1, table1.column2, .</strong>..&quot;. Tímto způsobem lze definovat jeden nebo více sloupců pro aktuální <em>ColumnsControl</em>. <strong>Povolené sloupce:</strong> <div class="wide" style="width: 624px"> <table> <thead> <tr> <th>table.column</th> <th>Položka požadavku</th> <th>Poznámky</th> </tr> </thead> <tbody> <tr> <td>tHdTicket.mHdTicketNotice</td> <td>Poznámky</td> <td></td></tr> <tr> <td>tHdTicket.sHdTicketGroup</td> <td>Skupina</td> <td>Povoluje jiné než předdefinované hodnoty</td> </tr> <tr> <td>.</td> </tr> <tr> <td>tHdTicket</td> </tr> <tr> <td>.</td> </tr><tr><td>sHdTicketDeviceCode</td> </tr> <tr> <td>Číslo</td> <td>zařízení</td> </tr></tbody></table></div></li> <li> <div class="wide" style="width: 624px"> <table> <tbody> <tr> <td></td></tr> <tr> <td>Místo hvězdičky zadejte název konkrétního sloupce.</td> </tr> </tbody> </table> </div> </li> <li><strong>sectionId-</strong> id služby</li> <li><strong>sectionName-</strong> úplný název služby včetně cesty (</li>např. <li> <em>&quot;Helpdesk/Problems</em></li>&quot;) <li><strong>mode-</strong> jedna z možností <strong>Edit</strong>(výchozí) a <strong>View</strong></li> <li><strong>msg-</strong> řetězec obsahující text zobrazený pro nevyplněnou požadovanou položku</li> <li><strong>ticketId-</strong> číslo požadavku k zobrazení/uložení</li></ul>

    <h2>Atributy v cshtml</h2>
    <ul>
        <li><strong>ShowColumns=</strong> <em>sloupce-</em> sloupce, které se generují na formulář a ukládají do db. Sloupce se zobrazí v zadaném pořadí shora dolů.</li>
        <li><strong>RequiredColumns=</strong> <em>sloupce </em>- sloupce, které musí být vyplněny, aby bylo umožněno uložení. Tyto sloupce musí být rovněž v atributu <em>ShowColumns</em>. Na pořadí nezáleží.</li>
        <li><strong>SectionId=</strong> <em>sectionId-</em> nastavuje ID a název služby. To ovlivňuje hodnoty, které se mají vybrat pro položky číselníku (pokud jsou hodnoty definovány pro konkrétní službu).</li>
        <li><strong>SectionName=</strong> <em>sectionName-</em> nastavuje ID a název služby. To ovlivňuje hodnoty, které se mají vybrat pro položky číselníku (pokud jsou hodnoty definovány pro konkrétní službu).</li>
        <li><strong>Mode=</strong> <em>režim </em>- nastavuje režim zobrazení.</li>
        <li><strong>TicketId=</strong> <em>ticketId-</em> nastavuje ID požadavku, který se má upravit/zobrazit/uložit.</li>
        <li><strong>CssClass-</strong> třída stylu css.</li>
        <li><strong>IgnoreColumns </strong>= <em>sloupce </em>- sloupce, které se nebudou zobrazovat.</li>
        <li><strong>IncludeServiceColumns-</strong> příznak, zda se mají zobrazit sloupce podle procesu služby zadaného v SectionId</li>
        <li><strong>IncludeRequiredColumns-</strong> příznak, zda se mají zobrazit požadované sloupce podle servisního procesu zadaného v SectionId.</li>
    </ul>

    <h2>Funkce</h2>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pro základní funkčnost prvku <em>ColumnsControl</em> není nutné tyto funkce používat    </div>
    <ul>
        <li><strong>UpdateColumns() </strong>- uloží vyplněné hodnoty do db v požadavku, jehož id je nastaveno atributem <em>TicketId</em>.</li>
        <li><strong>UpdateColumns(int ticketId) </strong>- uloží vyplněné hodnoty v db k požadavku číslo <em>ticketId</em>.</li>
    </ul>

    <h2>Příklad použití</h2>
    <p>Příklad zobrazení položek Skupina<em>(tHdTicket.sHdTicketGroup</em>) a Poznámky<em>(tHdTicket.mHdTicketNotes</em>). Položka Skupina je povinná:</p>
    <ul>
        <li>.cshml + automatické uložení (pomocí volání funkce <em>CreateTicket</em> ) <p>
    <span class="console">.... Obsah vašeho formuláře....<br />
         <br /><strong>@Html.EditorFor(m=&gt; m[&quot;ColumnsControl0&quot;], &quot;ColumnsControl&quot;, new { ShowColumns=&quot;tHdTicket.sHdTicketGroup,tHdTicket.mHdTicketNotice&quot;,RequiredColumns=&quot;tHdTicket.sHdTicketGroup&quot; })</strong><br />.... Zbyek Forms... <br /></span> </strong></li>
    </ul>
    <p>
        Další příklad použití naleznete na adrese <strong>&quot;~/Custom/Templates/NewTicket_Template.cshtml&quot;</strong>a z ní odvozených    </p>

</asp:Content>
