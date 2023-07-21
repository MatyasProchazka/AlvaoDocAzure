<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Šablony tiskových sestav HTML</h1>
    <p>Šablona tiskové sestavy HTML je dokument ve formátu HTML. Dokument obsahuje proměnné, které jsou při generování tiskové sestavy nahrazeny konkrétními údaji.  Příklady šablon (např. Interní předávací protokol, kumulativní.html) najdete v instalační složce <b>AM Console</b> ve složce <b>Enu/ReportTemplates</b> nebo ve složkách pro jiné jazyky.</p>

    <h2>Vytvoření šablony</h2>
    <p>Pro vytvoření dokumentu HTML doporučujeme použít libovolný vizuální editor HTML (např. MS Word).</p>
    <p>Navrhněte, jak bude sestava vypadat - jaký bude nadpis, kde bude tabulka s informacemi o vybraných objektech, případně text deklarace apod. Vložte příslušné proměnné na místa, kam mají být vloženy konkrétní údaje z Alvao, viz níže.  Vytvořený HTML soubor a případně obrázek loga společnosti s názvem "logo.png" nahrajte do databáze pomocí <em>WebApp - Administrace - Správa majetku</em> - <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Šablony tiskových sestav</a>.</p>

    <h2>Typ tiskové sestavy</h2>
    <p>Tisková sestava může být jednoho z následujících typů:</p>
    <table>
        <tr>
            <th>Typ tiskové sestavy</th>
            <th>Popis</th>
        </tr>
        <tr>
            <td>General</td>
            <td>Obecná tisková sestava (výchozí typ).</td>
        </tr>
        <tr>
            <td>TransferInnerDifferential</td>
            <td>interní diferenční<a href="../../../documents/transfer-protocols">přenosový protokol</a>. Před vygenerováním tiskové sestavy aplikace zobrazí formulář pro výběr předávajícího a příjemce.</td>
        </tr>
        <tr>
            <td>TransferInnerSummary</td>
            <td>Interní shrnutí<a href="../../../documents/transfer-protocols">přenosového protokolu</a>. Tuto sestavu lze vygenerovat pouze pro objekt typu User. Před vygenerováním tiskové sestavy aplikace zobrazí formulář pro výběr předávajícího a příjemce.</td>
        </tr>
    </table>
    <p>Typ sestavy můžete zadat na začátku těla HTML dokumentu. Například pro typ <em>zprávy o převodu interního rozdílu</em> zadejte:</p>
    <div class="wide">
        <pre translate="no">@Model.PrintTemplateType = TransferInnerDifferential</pre>
    </div>
    <p>Pokud typ sestavy není v dokumentu HTML uveden, použije se výchozí typ <em>Obecné</em>.</p>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Pozn:</div>
        K úpravě souboru html doporučujeme použít Poznámkový blok++ nebo podobný textový editor</div>


    <h2>Proměnné</h2>
    <h3>Obecné proměnné</h3>

    <table>
        <tr>
            <th>Proměnná</th>
            <th>Popis</th>
        </tr>
        <tr>
            <td>@Model.CompanyLogo</td>
            <td>CompanyLogo. Při generování sestavy je proměnná nahrazena obrázkem v souboru s názvem "logo.png", který musí být uložen v databázi spolu se souborem HTML tiskové sestavy.</td>
        </tr>
        <tr>
            <td>@Model.CreatedByPerson</td>
            <td>Jméno uživatele, který vygeneroval tiskovou sestavu (přihlášený uživatel).</td>
        </tr>
    </table>

<h3>Protokoly přenosu</h3>
    <p>V šablonách tiskových sestav typu <em>TransferInnerDifferential</em> a <em>TransferInnerSummary</em> můžete použít proměnné, které představují údaje zadané ve formuláři "odesílatel a příjemce":</p>

    <table>
        <tr>
            <th>Proměnná</th>
            <th>Popis</th>
        </tr>
        <tr>
            <td>@Model.DocumentNumber</td>
            <td>DocumentNumber</td>
        </tr>
        <tr>
            <td>@Model.IssueDate</td>
            <td>Datum vydání</td>
        </tr>
        <tr>
            <td>@Model.TransferDate</td>
            <td>Datum převodu</td>
        </tr>
        <tr>
            <td>@Model.Text</td>
            <td>Text zadaný ve formuláři</td>
        </tr>
        <tr>
            <td>@Model.Receiver.Name</td>
            <td>Jméno a příjmení příjemce</td>
        </tr>
        <tr>
            <td>@Model.Receiver.PersonalNumber</td>
            <td>Osobní číslo příjemce</td>
        </tr>
        <tr>
            <td>@Model.Receiver.Location</td>
            <td>Recipient Location</td>
        </tr>
        <tr>
            <td>@Model.Receiver.Signature</td>
            <td>Podpis příjemce <a href="../../../../modules/alvao-electronic-handover-forms/sign-with-electronic-pen">elektronickým perem</a> v interním předávacím protokolu. Při jiných způsobech podepisování protokolu je hodnota proměnné prázdná.</td>
        </tr>
        <tr>
            <td>@Model.Originator.Name</td>
            <td>Jméno a příjmení původce</td>
        </tr>
        <tr>
            <td>@Model.Originator.PersonalNumber</td>
            <td>Osobní číslo předávajícího</td>
        </tr>
        <tr>
            <td>@Model.Originator.Location</td>
            <td>Místo odesílatele</td>
        </tr>
        <tr>
            <td>@Model.Originator.Signature</td>
            <td>Podpis předkladatele <a href="../../../../modules/alvao-electronic-handover-forms/sign-with-electronic-pen">s-elektronickým perem</a> v interním předávacím protokolu. Při ostatních způsobech podepisování protokolu je hodnota proměnné prázdná.</td>
        </tr>

    </table>

    <h3>Objekty</h3>
    <p>Informace o objektech jsou uvedeny ve formě tabulky v tiskových sestavách. V šabloně protokolu vytvořte tabulku (< table >) se záhlavími sloupců a jedním řádkem údajů a podle potřeby uveďte následující proměnné. Ve výsledné sestavě se pro každý vybraný objekt vytvoří v tabulce jeden řádek.</p>

    <table>
        <tr>
            <th>Proměnná</th>
            <th>Popis</th>
        </tr>
        <tr>
            <td>@Node.Name</td>
            <td>Název vybraného objektu</td>
        </tr>
        <tr>
            <td>@Node.Class</td>
            <td>Třída objektu</td>
        </tr>
        <tr>
            <td>@Node.Path</td>
            <td>Cesta ve stromu</td>
        </tr>
        <tr>
            <td>@Node[<property name>]</td>
            <td>Hodnota konkrétní vlastnosti objektu, např: <em>@Node[Inventární číslo]</em>. Název vlastnosti je v <a href="../../supported-languages">jazyce systému Alvao</a>.</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode.Name</td>
            <td>Název objektu, za který je vybraný uživatel dále odpovědný. Proměnné <em>@ResponsibleForNode.</em>.. jsou k dispozici pouze v tiskových sestavách typu <em>TransferInnerSummary</em>.</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode.Class</td>
            <td>Druh objektu</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode.Path</td>
            <td>Cesta ve stromu</td>
        </tr>
        <tr>
            <td>@ResponsibleForNode [<property name>]</td>
            <td>Hodnota konkrétní vlastnosti objektu, např: <em>@ResponsibleForNode[Inventární číslo]</em>.</td>
        </tr>

    </table>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <ul>
            <li>V tabulce se zobrazí pouze objekty, které mají vlastnost <em>Inventární číslo</em> nebo <em>Evidenční číslo</em>.</li>
            <li>Pokud tabulka neobsahuje žádné údaje (např. uživatel není zodpovědný za žádný jiný majetek), zobrazí se místo toho v tiskové sestavě pomlčka (-).</li>
        </ul>
</asp:Content>


