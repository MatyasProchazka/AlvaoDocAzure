<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vzory formátování</h1>
    <p>Tato stránka je určena autorům této uživatelské dokumentace jako vzor pro formátování stránek.</p>
    <p>Na stránkách nepoužívejte žádné html značky ani styly, které nejsou uvedeny na této stránce.</p>
    <p>Další informace naleznete v části <a href="https://alvao.sharepoint.com/Doc/Vývoj%20produktů/Uživatelská%20dokumentace%20k%20produktům.docx?web=1">Uživatelská dokumentace</a>.</p>

    <h2>Formátování</h2>

    <p>Úvodní odstavec s <strong>tučným</strong> písmem a <em>kurzívou</em>.</p>

    <table>
        <thead>
            <tr>
                <th>Sloupec1</th>
                <th>Sloupec2</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>AA</td>
                <td>BB</td>
            </tr>
            <tr>
                <td>CC</td>
                <td>DD</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td>Celkem1</td>
                <td>Celkem2</td>
            </tr>
        </tfoot>
    </table>

    <p>
        <img src="alvao-service-desk/requests/superior_subordinated.png" alt="Child requests" /></p>

    <h3>Postup 1</h3>

    <ol>
        <li>Spustit <strong>ALVAO Admin.</strong></li>
        <li>V hlavní nabídce vyberte <strong>Otevřít - Soubor.</strong>.. nebo použijte klávesovou zkratku <span class="key">Ctrl+O</span>.</li>
        <li>Zadejte název souboru ve formátu &quot;<em>cesta\logfile</em>.txt&quot; <div class="tip">
    <div class="icon"></div>
     <div class="title">Tip:</div>
     Název souboru vyberte ze seznamu kliknutím myší </div>
        </li>
        <li>Vyberte režim <strong>Normální</strong> použití.</li>
        <li>Zadejte příkaz:<br />
            příkaz: <span class="console">admin.exe /command</span>       </li>
        <li>Na obrazovce se zobrazí okno <a href="#settings">Nastavení</a>.</li>
    </ol>


    <h3>Okno a index příkazů - formulář</h3>
    <p>Na této stránce můžete spravovat skupiny uživatelů.</p>
    <p>Možnosti: V nabídce je možné nastavit skupiny uživatelů, které mají být sdruženy do skupin:</p>
    <ul>
        <li id="commands"><strong>Panel příkazů</strong><ul>
            <li><strong>Nová skupina</strong> - vytvoření <a href="list-of-windows/alvao-webapp/administration/groups/create-group">nové skupiny</a>.</li>
            <li><strong>Upravit -</strong> upravte vlastnosti a oprávnění uživatele. Nabídka obsahuje stejné příkazy jako bloky v <a href="list-of-windows/alvao-webapp/administration/groups/detail">náhledu</a> skupin. </li>
            <li><strong>Odstranit</strong> - odstranění vybrané skupiny.<br />
            </li>
        </ul>
        </li>
        <li><strong>Tabulka skupin</strong> - obsahuje všechny skupiny Alvao a jejich vybrané atributy. <a href="alvao-asset-management/working-with-tables">Tabulku</a> můžete <a href="alvao-asset-management/working-with-tables">upravit podle potřeby</a>.</li>
        <li><strong>Vybraná skupina</strong> - po výběru skupiny v tabulce se vpravo zobrazí <a href="list-of-windows/alvao-webapp/administration/groups/detail">zobrazení</a> s informacemi o vybrané skupině, jejími oprávněními a dalšími nastaveními. V jednotlivých blocích náhledu se zobrazuje příkaz <em>Upravit</em>, který umožňuje upravit nastavení skupiny.</li>
    </ul>

    <h3>Značky v textu</h3>
    <p>Umístěte označené části do textu v následujícím pořadí:</p>
    <ol>
        <li>Zvýraznění</li>
        <li>Hlavní text</li>
        <li>Tip</li>
        <li>Poznámka</li>
    </ol>
    <p>
        Například    </p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Pozor...!<br />
        Upozornění varuje čtenáře před určitým nebezpečím    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Doporučujeme...<br />
        Tip je doporučení, jak postupovat v situaci, která okrajově souvisí s článkem    </div>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pro informaci..    </div>

    <p>Nebo:</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Pro informaci...<br />
        Poznámka je okrajovou doplňující informací k článku    </div>

    <h3>Slovník pojmů</h3>

    <dl>
        <dt>Svazek 1</dt>
        <dd>Důležitost ...</dd>
        <dt>Položka 2</dt>
        <dd>Význam ...</dd>
    </dl>

    <h1>Nadpis H1</h1>
    <h2>Nadpis H2</h2>
    <h3>H3</h3>
    <h4>Nadpis H4</h4>
    <h5>Nadpis H5</h5>
    <p>Normální text odstavce.</p>
    <h2>Ukázka textu kopie</h2>
    <p>Upravte tabulku <a href="alvao-asset-management/working-with-tables">podle potřeby</a>.</p>
    <p>- zadejte alespoň část jména uživatele a poté vyberte tohoto uživatele z rozevírací nabídky.</p>
    <p>
        (za tímto řádkem následuje &lt;br /&gt; pro kopírování)<br />
        (konec)    </p>
    <p>Označte místo pro obalení dlouhého řetězce znakem nula s mezerou.</p>


</asp:Content>
