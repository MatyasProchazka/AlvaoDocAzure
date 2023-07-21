<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Přesun objektu</h1>
    <p>
        Objekty ve stromu můžete snadno přesouvat přetažením nebo pomocí schránky oken<span class="key">(</span><span class="key">Ctrl+X</span>a <span class="key">Ctrl+V</span>). Pokud je strom větší, může být přetahování objektů pomocí myši nebo schránky nepohodlné. V takovém případě postupujte následovně    </p>
    <ol>
        <li>Ve stromu klikněte pravým tlačítkem myši na objekt, který chcete přesunout.<br />
            Poznámka: Podržením klávesy Ctrl nebo Shift můžete také vybrat více objektů najednou.</li>
        <li>V místní nabídce vyberte příkaz - <strong>Přesunout</strong>.</li>
        <li>Zobrazí se okno <a href="../../list-of-windows/alvao-asset-management-console/object/choose-object">Výběr cílového objektu</a>, ve kterém vyberte objekt, do kterého chcete přesunout první objekt, a stiskněte tlačítko <strong>OK</strong>.</li>
        <li>Můžete zobrazit <a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a> a zadat aktuální datum a čas přesunu, pokud přesun provádíte zpětně.</li>
        <li>Objekt se zobrazí na novém místě. 
            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip: V případě, že chcete přesunout objekt na jiné místo, můžete jej přesunout na jiné místo:</div>
                Pokud v okně <a href="../../list-of-windows/alvao-asset-management-console/date-time">Datum a čas</a> pro zadání data a času povolíte možnost <strong>Nezobrazovat toto okno příště a použít aktuální datum a čas</strong>, okno se příště neotevře. Můžete ji opět povolit pomocí <strong>Nástroje - Nastavení</strong>, kde na kartě <strong>Obecné</strong> zakažte možnost <strong>Vytvářet záznamy historie s aktuálním datem a časem</strong>     </div>
        </li>

        <li>Po přesunu objektu můžete vytisknout <a href="../documents/transfer-protocols">předávací protokol</a>.</li>
    </ol>

    <h2>Vrátit poslední přesunutý objekt</h2>

    <p>Chcete-li vrátit naposledy přesunutý objekt na jeho původní pozici, proveďte následující kroky:</p>
    <ol>
        <li>Použijte příkaz <strong>Úpravy-Vrátit naposledy přesunutý</strong> objekt z hlavní nabídky<span class="key">(</span><span class="key">Ctrl+Z</span>).</li>
        <li>Objekt se vrátí na svou původní pozici ve stromu objektů.</li>
        <li>V historii se zobrazí přesuny tam i zpět.</li>
    </ol>
    <div class="tooltip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Při přesunu zpět se práva ve stromu objektů ignorují. Proto lze vrátit i objekty, které byly omylem odstraněny (přesunuty do koše)    </div>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Trvale odstraněné objekty (odstraněné objekty z koše) nelze přesunout zpět    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Upozornění: V případě, že je koš vysypán do koše, je možné jej vysypat:</div>
        Vlastnosti historie posledního přesunu:<ul>
            <li>Historie se uchovává pouze o posledním přesunu</li>
            <li>Historie je uchovávána pouze po dobu, kdy je spuštěno aktivní okno Konzoly AM</li>
            <li>Historie je smazána:<ul>
                <li>trvalým smazáním objektu</li>
                <li>přepnutím do jiné databáze</li>
            </ul>
            </li>
        </ul>
    </div>
</asp:Content>
