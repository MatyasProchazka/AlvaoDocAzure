<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Předávací protokoly</h1>

    <p>
        Předávací protokol je dokument, který při předání majetku slouží jako doklad o tom, že předávající předal majetek příjemci a že příjemce majetek převzal. 
    </p>

    <p>
        Systém Alvao obsahuje následující typy předávacích protokolů    </p>

    <ul>
        <li><b>Interní</b> - pohyb majetku v rámci organizace, obvykle mezi skladem majetku a zaměstnancem. 
            <ul>
                <li><b>Mezipředávací</b> - v protokolu je uveden pouze majetek, který je aktuálně předáván. Pro zdokumentování majetku, který je aktuálně v držení konkrétního příjemce, je nutné dohledat všechny historické předávací protokoly pro daného příjemce nebo předávajícího.</li>
                <li><b>Souhrnný</b> - obsahuje úplný seznam majetku, který má příjemce v držení v době vystavení protokolu, tj. majetek byl příjemci předán někdy v minulosti a dosud nebyl vrácen. Poslední protokol vydaný pro daného příjemce nahrazuje všechny jeho předchozí protokoly, které proto není třeba archivovat          <br />
                    Tento typ protokolu doporučujeme používat pro předávání svěřeného majetku zaměstnancům. Na druhou stranu u příjemců, kteří odpovídají za velké množství majetku, nemusí být praktické vystavovat několikastránkový souhrnný protokol pro každé předání majetku. V takovém případě je jedinou možností archivace rozdílových protokolů. Případně můžete u těchto příjemců oba přístupy kombinovat, např. vydávat rozdílové listy v průběhu roku a jednou ročně vydat souhrnnou zprávu, která nahradí archiv do té doby vydaných rozdílových listů a může také sloužit jako podklad pro příjemce k inventarizaci majetku, za který je odpovědný.  </li>
            </ul>
        </li>
        <li><b>Externí</b> - převod majetku mimo organizaci, např. mezi organizací a servisní společností.</li>
    </ul>

    <h2>Přípravný sklad</h2>
    <p>Technik, který předává majetek zaměstnanci, musí často nejprve majetek připravit k používání, např. nainstalovat do počítače potřebné aplikace apod. Stejně tak při převzetí vráceného majetku od zaměstnance je třeba majetek připravit ke skladování, např. vymazat obsah pevných disků počítače apod. Ve stromu objektů můžete pro každého technika vytvořit objekt pro tyto úkoly podle šablony <i>Příprava skladu</i>. Ve vlastnosti <a href="../implementation/tree-design">Odpovědný za majetek</a> zadejte jméno technika.</p>
    <p>Pokud technik připravuje několik přesunů aktiv najednou, může pro každý připravovaný přesun vytvořit samostatnou pracovní složku ve svém přípravném skladu.</p>

    <h2>Převod majetku na zaměstnance</h2>
    <ol>
        <li>Přesuňte majetek ve stromu objektů <a href="../objects-and-properties/moving-object">ze skladu do svého stagingového skladu</a>, pokud jej používáte.</li>
        <li>Připravte majetek k použití.</li>
        <li>Fyzicky přeneste majetek na příjemce a zároveň:</li>
        <li>Ve stromu objektů přesuňte majetek pod příjemce.</li>
        <li>Pokud chcete vystavit <b>souhrnnou</b> zprávu, vyberte ve stromu příjemce. Pokud chcete vystavit <b>rozdělovací</b> sestavu, vyberte ve stromu (nebo na kartě Podřazené objekty) pouze právě přesunutý majetek.</li>
        <li>Použijte příkaz <b>Tisk</b> a vyberte příslušnou šablonu protokolu.</li>
        <li>Upravte nebo doplňte chybějící údaje.</li>
        <li>Vytiskněte protokol dvakrát na papír.</li>
        <li>Obě kopie podepište vy a příjemce.</li>
        <li>Jednu kopii předejte příjemci a druhou založte do archivu.</li>
    </ol>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Interní předávací protokoly nemusíte tisknout na papír ani je archivovat v papírové podobě či skenovat do elektronického archivu. Příjemci je mohou potvrdit přímo v aplikaci ve formátu PDF. Tato funkce je součástí modulu <a href="../../modules/alvao-electronic-handover-forms">ALVAO Elektronické předávací protokoly</a>   </div>

    <h2>Přijetí vráceného majetku od zaměstnance</h2>
    <ol>
        <li>Fyzicky převezměte vrácený majetek od zaměstnance a zároveň:</li>
        <li>Majetek přesuňte ve <a href="../objects-and-properties/moving-object">stromu objektů</a> do skladu na uskladnění, pokud jej používáte.</li>
        <li>Pokud chcete vystavit <b>souhrnné</b> hlášení, vyberte zaměstnance ve stromu. Chcete-li vystavit <b>rozdělovací</b> protokol, vyberte ve stromu (nebo na kartě Dílčí objekty) pouze právě vrácený majetek.</li>
        <li>Použijte povel <b>Tisk</b> a vyberte příslušnou šablonu protokolu.</li>
        <li>Upravte nebo doplňte chybějící údaje.</li>
        <li>Vytiskněte protokol dvakrát na papír.</li>
        <li>Obě kopie podepište vy a příjemce.</li>
        <li>Jednu kopii předejte zaměstnanci a druhou založte do archivu.</li>
        <li>Následně vrácený majetek připravte k uložení.</li>
        <li>Fyzicky uložte vrácený majetek do skladu a přesuňte objekty ve stromu objektů.</li>
    </ol>

    <h2>Mzda zaměstnance</h2>
    <p>Zaměstnanci, který odchází z organizace, po vrácení veškerého svěřeného majetku vystavte (nevyplněný) <b>souhrnný</b> předávací protokol v listinné podobě jako doklad o tom, že byl vrácen veškerý svěřený majetek.</p>

    <h2>Archiv předávacích protokolů</h2>
    <p>
        Archiv vystavených interních předávacích protokolů naleznete v <b>AM Console - Nástroje - Seznamy - </b><a href="../../list-of-windows/alvao-asset-management-console/tools/lists/documents">Dokumenty</a>. Pro každý interní předávací protokol se automaticky vytvoří <a href="../documents">dokument,</a> jehož přílohou je předávací protokol ve formátu PDF   </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Viz část <i>Interní předávací protokol - Generovat nový dokument</i> nebo <i>Webová aplikace - Správa - Asset Management - Nastavení - <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/general">Obecné</a> - Ve výchozím nastavení bude v předávacím protokolu povolena volba "Generovat nový dokument</i>"    </div>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Čísla interních předávacích protokolů lze automaticky generovat v <a href="sequences">číselné řadě</a>   </div>

</asp:Content>
