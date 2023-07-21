<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Šablony tiskových sestav REP</h1>

    <p>
        Šablony tiskových sestav můžete spravovat v aplikaci <i>WebApp - Administration - Asset Management - </i><a href="../../../../list-of-windows/alvao-webapp/administration/asset-management/print-report-templates">Print report templates</a>. Každá šablona obsahuje několik souborů, které definují obsah a vzhled výsledné tiskové sestavy    </p>
    <p>Výsledné tiskové sestavy se ze šablon generují následujícím způsobem:</p>
    <ol>
        <li>Poté, co uživatel ve stromu objektů aplikace vybere objekty, které chce vytisknout, aplikace vygeneruje pracovní XML soubor obsahující podrobnosti o vybraných objektech podle nastavení v souboru REP.</li>
        <li>Pracovní soubor XML pak projde transformací XSL, jejímž výsledkem je dokument HTML. Tento dokument HTML může využívat další soubory v šabloně, například soubory CSS, PNG, JPG atd.</li>
        <li>Obsah dokumentu HTML se uživateli zobrazí jako náhled tiskové sestavy.</li>
        <li>Po schválení náhledu uživatelem se dokument HTML převede do formátu PDF, ve kterém jej lze vytisknout nebo uložit do úložiště dokumentů.</li>
    </ol>

    <h2 id="rep">Soubor Rep</h2>

    <p>
        Soubor REP je textový soubor, který definuje výstupní tiskovou sestavu. 
    </p>
    <p>Soubor obsahuje několik řádků ve formátu:</p>
    <p class="console">Proměnná=Hodnota</p>
    <p>Například:</p>
    <p class="console">VERSION=XMLReport1</p>

    <table>
        <thead>
            <tr>
                <th>Proměnná</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>VERSION</td>
                <td>Určuje verzi formátu tiskové sestavy. Tato proměnná musí být uvedena na prvním řádku souboru REP a musí mít hodnotu XMLReport1.</td>
            </tr>
            <tr>
                <td>TYPE</td>
                <td>Hodnota této proměnné určuje zvláštní postup pro generování souboru XML, který je zdrojem dat pro tiskovou sestavu.<br />
                    <br />
                    <table>
                        <thead>
                            <tr>
                                <th>Hodnota</th>
                                <th>Popis</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Null</td>
                                <td>Je-li zadána výchozí hodnota Null, bude XML soubor obsahovat pouze objekt (včetně podřízených objektů), který je vybrán ve stromu objektů při vytváření tiskové sestavy.</td>
                            </tr>
                            <tr>
                                <td>Přenést vnitřní</td>
                                <td>Tisková sestava typu &quot;přenosová sestava vnitřní&quot;.</td>
                            </tr>
                            <tr>
                                <td>Přehled vnitřního přenosu</td>
                                <td>Tisková sestava typu &quot;interní souhrn předávacího protokolu&quot;. Lze použít pouze na objektu typu <i>Uživatel</i>.</td>
                            </tr>

                            <tr>
                                <td>Vnější přenos</td>
                                <td>Tisk sestavy typu &quot;předávací protokol vnější&quot;.</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="sequence">SEQUENCE</td>
                <td>Název číselné řady, která bude použita pro generování čísla dokladu tiskové sestavy typu &quot;Přenosová zpráva&quot;. Například: &quot;Výpůjčky&quot;.<br />
                    Poznámka: Pokud je hodnota prázdná, bude pro interní předávací protokoly použita systémová řada "předávací protokoly". Pro externí předávací protokoly se nepoužívá žádná řada.  </td>
            </tr>
            <tr>
                <td>HTML</td>
                <td>Název souboru HTML, který se použije jako výchozí soubor pro zobrazení tiskové sestavy. Název souboru se zadává relativně k cestě k souboru REP. Pokud je soubor HTML uložen ve stejném adresáři jako soubor REP, stačí zadat pouze název souboru.</td>
            </tr>
            <tr>
                <td>FLAGS</td>
                <td>Hodnotou může být prázdný řetězec (např. &quot;FLAGS=&quot;) nebo čárkou oddělený seznam níže uvedených položek, např. &quot;FLAGS=children,ownprop,inheritedprop&quot;. Každá položka seznamu umožňuje zapsat některé informace do souboru XML. Seznam položek je uveden v následující tabulce:<br />
                    <br />
                    <table>
                        <thead>
                            <tr>
                                <th>Položka</th>
                                <th>Popis</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>oznámení</td>
                                <td>poznámky k objektům (prvek &lt;noticelist&gt;), pouze záznamy, které nebyly v deníku smazány (skryty).</td>
                            </tr>
                            <tr>
                                <td>historie</td>
                                <td>historie objektů (element &lt;historylist&gt;), pouze záznamy, které nebyly smazány (skryty) v Journal.</td>
                            </tr>
                            <tr>
                                <td>children</td>
                                <td>Podřazené objekty (element &lt;nodelist&gt;)</td>
                            </tr>
                            <tr>
                                <td>odpovědnost</td>
                                <td>Nové podstromy se generují pod objekty typu Uživatel. Obsahují objekty, které mají ve vlastnosti "Odpovědnost za vlastnost" hodnotu objektu uživatel.</td>
                            </tr>
                            <tr>
                                <td>ownprop</td>
                                <td>vlastnost (element &lt;prop&gt; v &lt;proplist&gt;)</td>
                            </tr>
                            <tr>
                                <td>inheritedprop</td>
                                <td>zděděné vlastnosti (prvek &lt;prop&gt; v &lt;proplist&gt;)</td>
                            </tr>
                            <tr>
                                <td>owninfo</td>
                                <td>element &lt;own&gt;1&lt;/own&gt; pro vlastní vlastnosti</td>
                            </tr>
                            <tr>
                                <td>inhritedinfo</td>
                                <td>element &lt;iherited&gt;1&lt;/inherited&gt; pro zděděné vlastnosti</td>
                            </tr>
                            <tr>
                                <td>specialinfo</td>
                                <td>element &lt;special&gt;1&lt;/special&gt; pro speciální vlastnosti (vlastnosti pro interní použití při vzdáleném sběru dat atd.)</td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <p>Příklad obsahu souboru Evidence Card.rep:</p>
    <p class="console">
        VERSION=XMLReport1        <br />
        TYPE=Null<br />
        HTML=Evidence Card.ht       <br />
        FLAGS=children,ownprop,inheritedprop,notice    </p>

    <h2>Soubor XML</h2>

    <p>
        Tato kapitola popisuje strukturu souboru XML, který se používá při vytváření tiskové sestavy. Do souboru se zapisuje obraz objektu (včetně podřízených objektů), nad kterým se tisková sestava vytváří (tj. objektu, který je vybrán ve stromu objektů). Které prvky budou do souboru XML zahrnuty a které nikoli, závisí na nastavení položky FLAGS v souboru REP   </p>
    <p>Formát souboru XML (DTD):</p>
    <pre class="console" translate="no">
&lt;!ENTITY ONE &quot;1&quot;&gt;

&lt;!ELEMENT report (node*)&gt;

&lt;!ELEMENT node (name, icon, proplist?, responsiblefor?, noticelist?, historylist?, nodelist?)&gt;
&lt;!ELEMENT name (#PCDATA)&gt;
&lt;!ELEMENT path (#PCDATA)&gt;
&lt;!ELEMENT icon (#PCDATA)&gt;
&lt;!ELEMENT proplist (prop*)&gt;
&lt;!ELEMENT noticelist (notice*)&gt;
&lt;!ELEMENT historylist (history*)&gt;
&lt;!ELEMENT nodelist (node*)&gt;

&lt;!ELEMENT prop (value, kind, own?, inherited?, special?)&gt;
&lt;!ELEMENT value (#PCDATA)&gt;
&lt;!ELEMENT kind (#PCDATA)&gt;
&lt;!ELEMENT own (&amp;ONE;)&gt;
&lt;!ELEMENT inherited (&amp;ONE;)&gt;
&lt;!ELEMENT special (&amp;ONE;)&gt;

&lt;!ELEMENT notice (date, desc, user)&gt;
&lt;!ELEMENT date (#PCDATA)&gt;
&lt;!ELEMENT desc (#PCDATA)&gt;
&lt;!ELEMENT user (#PCDATA)&gt;

&lt;!ELEMENT history (date, desc, user)&gt;</pre>
    <p>Význam prvků:</p>
    <table>
        <thead>
            <tr>
                <th>Element</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>uzel</td>
                <td>objekt</td>
            </tr>
            <tr>
                <td>cesta</td>
                <td>cesta k objektu ve stromu objektů</td>
            </tr>
            <tr>
                <td>prop</td>
                <td>vlastnost</td>
            </tr>
            <tr>
                <td>poznámky</td>
                <td>poznámka k objektu</td>
            </tr>
            <tr>
                <td>historie</td>
                <td>záznam historie</td>
            </tr>
            <tr>
                <td>nodelist</td>
                <td>seznam podřízených objektů</td>
            </tr>
        </tbody>
    </table>

    <h2>Soubor HTML</h2>

    <p>Soubor REP obsahuje také název souboru HTML tiskové sestavy, který se po nahrazení maker zobrazí v náhledu před tiskem. Tento soubor se používá pouze při tisku z konzoly AM.</p>

    <p>V souboru HTML lze použít následující makra:</p>

    <table>
        <thead>
            <tr>
                <th>Makra</th>
                <th class="auto-style1">Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>%HTMLPATH%</td>
                <td class="auto-style1">Absolutní cesta k souboru HTML na pevném disku.<br />
                    <br />
                    Pokud je například soubor style.css uložen ve stejném adresáři jako soubor HTML, lze pro jeho načtení použít následující konstrukci:<br />
                    <br />
                    &lt;link rel=&quot;stylesheet&quot; href=&quot;%HTMLPATH%\style.css&quot;&gt;</td>
            </tr>
            <tr>
                <td>%XMLPATH_C%</td>
                <td class="auto-style1">Název s cestou k pracovnímu souboru XML ve formátu pro použití v javascriptu.</td>
            </tr>
        </tbody>
    </table>

    <h2>Úprava HTML pro tisk z webové aplikace ALVAO</h2>

    <p>Všechny šablony vytištěné z aplikace ALVAO WebApp používají jednotné HTML, které je uloženo v databázi. Chcete-li jej upravit, musíte spustit následující SQL skript, který přidá požadované HTML:</p>
    <pre translate="no"><span style="color: fuchsia">update</span> <span style="color: black">tProperty</span> <span style="color: blue">set</span> <span style="color: black">sPropertyValue</span><span style="color: lightgray">=</span><span style="color: red">'&lt;own HTML&gt;'</span> <span style="color: blue">where</span> <span style="color: black">sProperty</span><span style="color: lightgray">=</span><span style="color: red">'AssetManagement.PrintTemplateHtml'</span>
        </pre>
  <p>V html pro tiskovou sestavu pro web je třeba použít proměnné zapsané jako [$&lt;jméno&gt;$], které jsou při tisku nahrazeny soubory připojenými k tiskové sestavě.</p>
  <p>Pokud použitá proměnná neobsahuje tečku (např. "CSS" nebo "XSL"), použije se první soubor připojený k šabloně s danou příponou (tj. *.css nebo *.xsl). Pokud použitá proměnná obsahuje tečku (např. "logo.png"), použije se soubor připojený k šabloně s daným názvem (tj. logo.png). </p>
  <p>Výjimkou je proměnná [$PrintTemplateName$], která je nahrazena proměnnou <i>Name</i> pro tiskovou sestavu.</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

