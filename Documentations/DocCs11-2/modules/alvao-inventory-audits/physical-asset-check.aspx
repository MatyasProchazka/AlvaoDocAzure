<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Fyzická inventura</h1>

    <p>Fyzická inventura spočívá ve skenování štítků pomocí mobilního snímače čárových kódů nebo mobilního telefonu s nainstalovanou aplikací.</p>

    <h2>Tisk štítků s čárovým kódem</h2>
    <ol>
        <li>V aplikaci <i>Microsoft Excel</i> vytvořte soubor, který bude obsahovat sloupec s názvem <i>Čárový kód</i> a pod ním hodnoty, které chcete na štítky vytisknout.</li>
        <li>Zaregistrujte se do aplikace <a href="https://orcascan.com">Orca Scan</a> a vytvořte nový pracovní list.</li>
        <li>Odstraňte z něj všechny sloupce kromě sloupce <i>Čárový kód</i>.</li>
        <li>Nahrajte vytvořený soubor XLSX pomocí příkazu <b>Importovat</b> nebo zadejte data do sloupce <i>Čárový kód</i> ručně.</li>
        <li>V tabulce vyberte hodnoty, které chcete vytisknout, a v levém panelu otevřete nabídku <i>Štítky čárových kódů</i>.</li>
        <li>V nabídce vyberte typ štítků, které chcete vytisknout (např. čárový kód nebo QR).</li>
        <li>Pomocí příkazu <i>Tisk štítků štít</i> ky vytiskněte nebo stáhněte do zařízení (soubor PDF).</li>
    </ol>

    <h2 id="orcascan">Inventář mobilní aplikace Orca Scan</h2>

    <p>
        Ke kontrole majetku pomocí čárových kódů můžete použít placenou aplikaci <a href="https://orcascan.com/">Orca Scan</a> pro mobilní telefony a některé čtečky čárových kódů. Postupujte podle následujících kroků    </p>

    <ol>
        <li><a href="stocktaking">Proveďte kontrolu majetku</a>, vytvořte soubor čtečky a přiřaďte k němu požadovaný majetek.</li>
        <li>Použijte příkaz <b>Soubor - Export XLSX</b> a vyberte majetek obsahující hodnoty čárových kódů. Pokud má aktivum hodnotu čárového kódu uloženou v jiné vlastnosti (např. <i>sériové číslo, inventární číslo</i>), otevřete soubor v aplikaci <i>Microsoft Excel</i> a zkopírujte hodnoty z příslušných buněk ve sloupci <i>Čárový kód</i>. Řádky, které nemají hodnotu ve sloupci <i>Čárový kód</i>, můžete ze sešitu odstranit, protože stejně nebudou inventarizovány.</li>
        <li>Zaregistrujte se pro <a href="https://orcascan.com/">Orca Scan</a> a nainstalujte aplikaci do mobilního telefonu nebo jiného zařízení.</li>
        <li>Vytvořte nový list ve webové aplikaci a odstraňte všechny sloupce kromě sloupce <i>Čárový kód</i>.</li>
        <li>Nahrajte soubor XLSX pomocí příkazu <b>Importovat</b>. Všechny potřebné sloupce se automaticky vytvoří a všechna data budou nahrazena daty z importovaného souboru.</li>
        <li>Pokud soubor importujete poprvé, klikněte pravým tlačítkem myši do záhlaví sloupce <b>Datum</b> a vyberte možnost <b>Upravit sloupec</b>. Nastavte položku <b>Typ dat</b> na hodnotu <b>Datum Čas (automatický</b>). Podobně u sloupce <b>ObjectId</b> zapněte možnost <b>Pouze pro čtení</b> <div class="tip">
     <div class="icon"></div>
      <div class="title">Tip:</div>
      U sloupců, které chcete zobrazit v seznamu aktiv v mobilní aplikaci, zapněte v nabídce <b>Zobrazit v mobilním seznamu</b> možnost <b>Upravit sloupec</b>. První sloupec s touto volbou se zobrazí jako název objektu, ostatní jako ostatní položky. Pokud tuto možnost povolíte ve sloupci <b>Datum</b>, budete pak moci řadit aktiva v mobilní aplikaci od nenalezených po již nalezená. V mobilní aplikaci použijte tlačítko filtru v horní liště a v nabídce Seřadit <b>podle</b> vyberte sloupec Seřadit <b>podle</b> </div>

            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                U sloupců, které nechcete při potvrzování majetku (nebo vytváření nového) upravovat, zapněte ve <b>skryté</b> nabídce možnost <b>Upravit sloupec</b>      </div>
        </li>
        <li>Otevřete mobilní aplikaci <i>Orca Scan</i> a spárujte ji s webovou aplikací.</li>
        <li>V mobilní aplikaci přepněte list na nově vytvořený a záložku na <i>cloud</i>.</li>
        <li>Pomocí tlačítka <b>Skenovat</b> v mobilní aplikaci načtěte postupně čárové kódy všech inventarizovaných zařízení. Po načtení čárového kódu vždy zkontrolujte správnost hodnot v polích a případně je změňte        <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                Pokud provádíte kontrolu majetku podle místnosti nebo uživatele, můžete záznamy seskupit podle těchto sloupců. V mobilní aplikaci použijte tlačítko filtru v horní liště a vyberte možnost <b>Seskupit podle</b>výběru příslušného sloupce       </div>
        </li>
        <li>Po dokončení kontroly majetku si pomocí příkazu <b>Export</b> ve webové aplikaci <i>Orca Scan</i> stáhněte soubor XLSX (Microsoft Excel) do počítače.</li>
        <li>Stažený soubor otevřete v aplikaci <i>Microsoft Excel</i>, povolte úpravy v horní žluté liště pod příkazovým řádkem a soubor uložte.</li>
        <li>V <i>AM Console</i> v okně <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">kontroly majetku</a> použijte příkaz <b>File - Import XLSX</b> a vyberte stažený soubor.</li>
        <li>Poté <a href="stocktaking">zpracujte výsledky</a> kontroly aktiv.</li>
    </ol>

</asp:Content>
