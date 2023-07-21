<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Satisfaction Feedback</h1>
    <p>Tento modul obsahuje dotazník spokojenosti, který mohou žadatelé o službu vyplnit po vyřešení každého svého požadavku nebo v jeho průběhu.</p>

    <h2>Technické požadavky</h2>
    <ul>
        <li>ALVAO Service Desk</li>
    </ul>

    <h2>Dotazník spokojenosti</h2>

    <ol>
        <li>V <strong>aplikaci ALVAO WebApp - Administration - Service Desk</strong> přejděte na stránku <strong>Služby</strong>.</li>
        <li>Ve stromu služeb vyberte službu, u které chcete dotazník povolit, a použijte příkaz <strong>Upravit - Vlastnosti</strong>.</li>
        <li>V části <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/extended">Rozšířené</a> povolte možnost <strong>Použít dotazník spokojenosti</strong>.</li>
    </ol>

    <p>Tím se ke standardním oznámením pro žadatele přidá prvek pro vyhodnocení celkové spokojenosti. Dotazník bude žadatelům přístupný také po celou dobu řešení požadavku v ALVAO WebApp v nabídce příkazů na stránce požadavku.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Hodnoty, které žadatel vyplní v dotazníku, se uloží jako běžné položky požadavku    </div>

    <h2>Pole dotazníku spokojenosti</h2>
    <p>Standardní dotazník spokojenosti obsahuje následující pole:</p>
    <ul>
        <li>Celková spokojenost</li>
        <li>Rychlost řešení</li>
        <li>Rychlost reakce</li>
        <li>Profesionalita</li>
    </ul>

    <p>Možnosti odpovědí pro celkovou spokojenost:</p>

    <table>
        <thead>
            <tr>
                <th>Textová hodnota</th>
                <th>Číselná hodnota</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Spokojen</td>
                <td>1</td>
            </tr>
            <tr>
                <td>Nespokojen</td>
                <td>4</td>
            </tr>
        </tbody>
    </table>

    <p>Ostatní standardní pole mají následující možnosti odpovědí:</p>

    <table>
        <thead>
            <tr>
                <th>Textová hodnota</th>
                <th>Číselná hodnota</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Spokojen</td>
                <td>1</td>
            </tr>
            <tr>
                <td>Částečně spokojen</td>
                <td>2</td>
            </tr>
            <tr>
                <td>Spokojen</td>
                <td>3</td>
            </tr>
            <tr>
                <td>Spokojen</td>
                <td>4</td>
            </tr>
        </tbody>
    </table>

    <p>Textová hodnota se zobrazí v tabulce požadavků. Číselná hodnota se používá v analýze spokojenosti.</p>

    <h2 id="special">Vytvoření vlastního dotazníku</h2>

    <p>Zkopírujte složku <em>Custom/Templates/Feedback</em> do složky <em>Custom/</em>. Přiložené soubory <em>Feedback.cshtml</em> a <em>Feedback.cs</em> můžete přejmenovat, ale oba soubory (.cshtml a .cs) pojmenujte stejně. Můžete také přejmenovat název složky.</p>
    <ol>
        <li>V souboru .cs na začátku souboru za slovem <em>namespace</em>uveďte pojmenování jmenného prostoru Alvao.ServiceDesk.ServiceDeskWebApp.Controllers.&lt;název složky průzkumu spokojenosti&gt;.</li>
        <li>V souboru .cs na začátku souboru u klíčového slova <em>class</em>změňte název na <em>&lt;jméno souboru&gt;Controller</em>, pokud jste soubor přejmenovali.</li>
    </ol>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Všechny použité názvy formulářů musí být jedinečné    </div>

    <p>Povolte anonymní přístup k novému dotazníku přidáním následujícího oddílu do souboru web.config:</p>
    <div class="wide">
        <pre translate="no">
&lt;location path=&quot;Custom/&lt;folder name with satisfaction questionnaire&gt;/Feedback&quot;
    &lt;system.web&gt;
        &lt;authorization&gt; 
            &lt;allow users=&quot;*&gt; 
        &lt;/authorization&gt; 
    &lt;/system.web&gt;
&lt;/location&gt;
&lt;location path=&quot;Custom/&lt;folder name with satisfaction questionnaire&gt;/FeedbackAccepted&quot; 
    &lt;system.web&gt; 
        &lt;authorization&gt; 
            &lt;allow users=&quot;*&quot;/&gt; 
        &lt;/authorization&gt;
    &lt;/system.web&gt;
&lt;/location&gt;</pre>
    </div>

    <p>
        Slovo <em>Feedback</em>nahraďte názvem dotazníku    </p>

    <h3>Úprava dotazníku</h3>

    <p>
        Ve vlastním dotazníku v souboru .cshtml (obvykle <em>Custom/Feedback/Feedback.cshtml</em>) najděte značku HTML div s id <em>CustomFormContent</em>.<br />
        Zde se nachází seznamy <em>ShowColumns</em> a <em>RequiredColumns</em>   </p>
    <ul>
        <li><em>ShowColumns</em> je seznam položek, které se budou zobrazovat.</li>
        <li><em>RequiredColumns</em> určuje položky, které musí být vyplněny pro odeslání formuláře. Tyto sloupce musí být rovněž v atributu <em>ShowColumns</em>. </li>
    </ul>
    <p>
        Omezení sloupců, které lze zobrazit, je dáno atributem <a href="../modules/alvao-sd-custom-apps/columns-control">alvao:ColumnsControl</a>   </p>
    <p>
        Nové sloupce a jejich hodnoty můžete přidávat v nabídce <strong>ALVAO WebApp - Manage - Custom fields (Vlastní pole)</strong>   </p>

    <p>
        Lze provádět i další úpravy, podobně jako při vytváření <a href="../modules/alvao-sd-custom-apps/custom-form-template">vlastních formulářů pro odeslání nového požadavku</a>   </p>

    <p>Pro uložení hodnot do vlastních polí, která nejsou zobrazena a spravována ovládacím prvkem ColumnsControl, použijte následující strukturu v metodě Process(...) implementované v souboru .cs vlastního dotazníku:</p>
    <div class="wide">
        <span class="console">
            <pre translate="no">
int ticketId = ((ColumnsControl)Model.ColumnsControl0).TicketId;
var customCols = tHdTicket.Get(ticketId).CustomColumns();
customCols.Values.Single(cc => cc.Column.sColumn == &quot;feedbackImprovement&quot;).Value = Model.NametKeImprovements.Value;
customCols.SaveTicketChanges();
customCols.UpdateValues();</pre>
        </span>
    </div>
    <p>Po provedení tohoto kódu se data uloží do vlastního pole, jehož sloupec v databázi odpovídá hodnotě <em>feedbackImprovement</em>. Pro uložení se převezme hodnota <em>NametKeImprovement</em> z modelu dotazníku.</p>

    <h3>Nastavení adresy vlastního dotazníku</h3>

    <p>
        V <strong>aplikaci ALVAO WebApp - Administrace - Service Desk - Služby</strong> - sekce <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/extended">Rozšířené</a> - v části <strong>Vlastní dotazník (URL)</strong> zadejte adresu vlastního dotazníku, tj. obvykle <em>Vlastní/Odpověď/Zpětná vazba</em>   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud adresa začíná &quot;http&quot; nebo &quot;https&quot;, použije se tak, jak je. V opačném případě se na začátek automaticky doplní cesta ke kořenovému adresáři webové aplikace ALVAO    </div>

    <h2>Vlastní oznámení</h2>

    <p>Pokud používáte vlastní oznámení o vyřešení požadavku, přidejte prvek pro vyhodnocení celkové spokojenosti pomocí proměnné [$FeedbackGeneralForm$]. Případně můžete vyzvat k vyplnění dotazníku spokojenosti vložením proměnné [$FeedbackURL$].</p>
    <h2>Analýza spokojenosti</h2>
    <p>
        Spokojenost žadatelů můžete analyzovat v sešitě MS Excel <a href="../alvao-service-desk/evaluation-of-system-operation/data-analysis">Service Desk Analysis</a> na listu <strong>Dotazník spokojenosti</strong>   </p>

</asp:Content>
