<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Úprava šablon sestav REP pro tisk</h1>
    <p>Pokud potřebujete upravit šablonu tiskové sestavy ve formátu REP, postupujte následovně:</p>
    <ol>
        <li>Přejděte do <strong>WebApp - Administration - Asset Management</strong> - <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print Report Templates</a>.</li>
        <li>Vyberte požadovanou šablonu a použijte příkaz <strong>Upravit</strong>.</li>
        <li>Stáhněte všechny soubory tiskových sestav do libovolné složky na disku.</li>
        <li>Nyní upravte zdrojové soubory šablony podle potřeby.</li>
        <li>Po provedení všech změn přejděte znovu do <strong>aplikace WebApp</strong> a v editaci šablony použijte příkaz <strong>Přidat soubory</strong>.</li>
        <li>Vyberte změněné soubory ze složky na disku a přepište jimi stávající soubory šablony.</li>
        <li>Uložte změny v šabloně.</li>
    </ol>

    <h2>Přidání loga společnosti do záhlaví tiskových sestav</h2>
    <ol>
        <li>Přejděte do <strong>aplikace WebApp - Správa - Asset Management-</strong> <a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Šablony tiskových sestav</a>.</li>
        <li>U každé šablony nahraďte soubor <strong>logo.png</strong> souborem s logem společnosti. Obrázek by neměl být větší než 100 pixelů.</li>
    </ol>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <p>
            Při zobrazení tiskové sestavy není logo na obrazovce viditelné. Logo se zobrazí pouze v náhledu tiskové stránky. 
        </p>
    </div>

    <h2>Přidání textu prohlášení do předávacího protokolu</h2>
    <p>
        V souboru XSL předávacího protokolu vyhledejte řetězec &quot;<em>Text prohlášení</em>&quot; a za nalezenou poznámku vložte vlastní text HTML    </p>

    <h2>Úprava tabulky majetku v předávacím protokolu</h2>
    <ol>
        <li>Upravte soubor XSL předávacího protokolu.</li>
        <li>Najděte záhlaví tabulky majetku - vyhledejte text "Tabulka majetku - záhlaví". Změňte záhlaví sloupců, případně přidejte nová záhlaví sloupců nebo některé sloupce odstraňte, např:<br />
            <div style="font-family: Consolas; font-size: 10pt; line-height: 140%;">
               <span style="color: #A31515">&lt;td</span> <span style="color: red">class=</span><span style="color: blue">&quot;Frame&gt;</span><br />
               <span style="color: blue">&lt;b&gt;IMEI&lt;/b&gt;</span><br />
               <span style="color: blue">&lt;/td&gt </span>         </div>
        </li>
        <li>Najděte řádky s hodnotami tabulky - hledejte text "Asset table - values". Upravte kód tak, abyste získali hodnotu v příslušném sloupci, např. změňte název vlastnosti objektu, přidejte hodnoty pro nové sloupce nebo odstraňte hodnoty pro odstraněné sloupce.<br />
            Příklad jedné buňky tabulky:<br />
            <div style="font-family: Consolas; font-size: 10pt; line-height: 140%;">
               <span style="color: #A31515">&lt;td</span> <span style="color: red">class=</span><span style="color: blue">&quot;Frame&gt;</span><br />
               <span style="color: blue">&lt;xsl</span><span style="color: #2B91AF">:valueof</span> <span style="color: red">select=</span><span style="color: blue">&quot;proplist/prop[kind='IMEI']/value&quot;/&gt;</span><br />
               <span style="color: blue">&lt;/td&gt </span>         </div>
           <em>IMEI</em> je název vlastnosti objektu, jejíž hodnota se zobrazuje v tabulce vlastností.<br />
            Hodnoty sloupců tabulky musí být uvedeny ve stejném pořadí jako nadpisy sloupců v záhlaví tabulky.  </li>
    </ol>

    <h2>Změna nastavení okrajů, orientace papíru a číslování stránek</h2>
    <p>
        Upravte následující skript SQL a nastavte hodnoty požadovaných atributů podle níže uvedené tabulky    </p>
    <pre translate="no">
<span style="color: fuchsia">update</span> <span style="color: black">tProperty</span> <span style="color: blue">set</span> <span style="color: black">sPropertyValue</span><span style="color: lightgray">=</span><span style="color: red">'PageOrientation=Portrait;Margins=10,10,15,15;PageNumbering=0;'</span>
<span style="color: blue">where</span> <span style="color: black">sProperty</span><span style="color: lightgray">=</span><span style="color: red">'AssetManagement.TransferProtocol.PageSettings'</span></span></span></span></span></span><span style="color: red">
  </pre>
    <p>
        Význam a možné hodnoty jednotlivých nastavení    </p>

    <table>
        <tr>
            <th>Název atributu</th>
            <th>Význam</th>
            <th>Možné hodnoty</th>
        </tr>
        <tr>
            <td>PageOrientation</td>
            <td>Orientace stránky</td>
            <td>
                <ul style="margin-bottom: 0px;">
                    <li>Portrait = na výšku</li>
                    <li>Landscape = na šířku</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Margins</td>
            <td>Okraje papíru</td>
            <td>Pole čtyř celých čísel oddělených čárkami s významem:<br />
                &lt;vlevo&gt;,&lt;vpravo&gt;,&lt;nahoře&gt;,&lt;dole&gt;                <br />
                Poznámka: číslo označuje okraj papíru v milimetrech.  </td>
        </tr>
        <tr>
            <td>PageNumbering</td>
            <td>Číslování stránek</td>
            <td>
                <ul style="margin-bottom: 0px;">
                    <li>0 = číslování stránek vypnuto (nezobrazuje se)</li>
                    <li>1 = číslování stránek zapnuto (zobrazuje se v patě každé stránky ve formátu &lt;číslo stránky/celkový počet stránek&gt;)</li>
                </ul>
            </td>
        </tr>
    </table>
    <p>Poté spusťte skript na databázi Alvao (např. pomocí <em>Microsoft SQL Server Management Studio</em>).</p>
</asp:Content>

