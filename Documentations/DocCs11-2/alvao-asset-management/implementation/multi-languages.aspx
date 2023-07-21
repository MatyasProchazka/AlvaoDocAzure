<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vícejazyčné prostředí</h1>
    <p>
        Ve vícejazyčném prostředí doporučujeme zvolit jako <a href="supported-languages">jazyk systému Alvao</a> <strong>angličtinu</strong>, která obvykle slouží jako společný komunikační jazyk všech týmů. Poté definujte všechny konfigurační položky, například názvy druhů objektů, v angličtině. Některé položky můžete dále přeložit do jiných jazyků. Přeložit lze následující hodnoty    </p>
    <ul>
        <li>Druh objektu</li>
        <li>Název objektu</li>
    </ul>

    <h2>Překlad</h2>
    <ol>
        <li>V <strong>aplikaci ALVAO WebApp</strong> zvolte <strong>Správa - Nastavení - Jazyky</strong>.</li>
        <li>Na stránce Jazyky vyberte možnost <strong>Stáhnout překladový sešit</strong> a zadejte název souboru, do kterého se mají ukládat překladové dokumenty. Uložený soubor je ve formátu XML.</li>
        <li>Soubor otevřete v aplikaci Microsoft Excel.</li>
        <li>Každý řádek tabulky odpovídá jedné položce, která má být přeložena. Sloupec s <strong>hodnotou</strong> obsahuje původní text v angličtině (nebo v jazyce systému Alvao). Do sloupců pro vybrané preferované jazyky přidejte jeho překlady         <div class="tip">
                   <div class="icon"></div>
                    <div class="title">Tip:</div>
                    Pole, do kterých je třeba přidat překlady, jsou podtržená. Požadovaná akce je rovněž popsána ve sloupcích <strong>K provedení</strong> pro každý preferovaný jazyk. Sloupce mohou obsahovat následující hodnoty       </div>
            <ul>
                <li>přeložit - text musí být původně přeložen.</li>
                <li>aktualizovat překlad - stávající překlad je třeba aktualizovat, protože původní text ve sloupci s <em>hodnotou</em> byl od posledního překladu změněn.</li>
                <li>- (pomlčka) - překlad již existuje a je aktuální.</li>
            </ul>
        </li>
        <li>Po dokončení překladu v aplikaci Microsoft Excel soubor opět uložte ve formátu XML.</li>
        <li>Ve <strong>webové aplikaci ALVAO</strong> opět zvolte <strong>Správa - Nastavení - Jazyky</strong> a pomocí příkazu <strong>Nahrát překlady</strong> soubor načtěte.</li>
    </ol>
    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že se jedná o překlady, které jsou v rozporu s pravidly pro překlad, můžete použít příkaz</div>
        Pokud budou jednotlivé jazyky překládat různí překladatelé, pošlete každému překladateli tabulku pouze s preferovanými jazyky, do kterých překládá. Ostatní preferované jazyky z tabulky před odesláním překladateli odstraňte. Při importu tabulky do systému Alvao se načtou pouze překlady do jazyků, které jsou v souboru obsaženy. Neodstraňujte ze souboru první 4 sloupce, které identifikují text určený k překladu    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Typ překládané položky (např. název služby, název SLA atd.) lze určit podle hodnot ve sloupcích <em>tabulky</em> a <em>atributu</em>, které obsahují název <a href="customization/database">databázové tabulky a sloupec,</a> v němž je text uložen    </div>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Nastavení zobrazení v tabulkách obvykle obsahují filtry, které závisí na preferovaném jazyce uživatele. Přidáním překladů se může stát, že uživatelé zjistí, že filtry již nefungují, a budou je muset znovu nastavit ve svém preferovaném jazyce    </div>
</asp:Content>
