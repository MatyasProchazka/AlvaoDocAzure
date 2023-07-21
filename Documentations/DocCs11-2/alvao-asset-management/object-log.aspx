<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Historie objektu</h1>
    <p>
        Změny provedené ve stromu objektů lze automaticky zaznamenat do historie objektů. Historie je viditelná v <a href="../list-of-windows/alvao-asset-management-console">hlavním okně</a> vpravo na kartě <strong>Deník</strong> nebo v deníku ve spodní části okna na kartě <strong>Vlastnosti</strong> a <strong>objekty</strong>. Na kartách <strong>Deník</strong> a <strong>Vlastnosti</strong> se zobrazují pouze záznamy týkající se objektu, který je ve stromu aktuálně vybrán. Na kartě <strong>Objekty</strong> se v deníku zobrazují záznamy týkající se všech objektů, které jsou vybrány v horní části okna na kartě <strong>Objekty</strong>   </p>
    <p>Při vytvoření nového objektu nebo kopírování objektu se provede záznam v historii jak vytvořeného objektu, tak objektu, ve kterém byl nový objekt vytvořen.</p>
    <p>Při přesunu objektu A na jiné místo ve stromu se vytvoří záznam v historii těchto objektů:</p>
    <ul>
        <li>v objektu A</li>
        <li>v jeho nadřazeném objektu (tj. v objektu, ze kterého byl odstraněn)</li>
        <li>v objektu, do kterého byl objekt A přesunut</li>
    </ul>

    <p>
        Některé záznamy obsahují informace o souvisejícím objektu, např. při přesunu objektu na jiné místo se vytvoří záznam &quot;Přesunuto do <em>názvu cílového objektu</em>&quot;. Cílový objekt můžete ve stromu najít kliknutím pravým tlačítkem myši na záznam a výběrem možnosti <strong>Označit ve stromu</strong>. Tím se objekt ve stromu zobrazí tučným písmem    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Záznamy historie starší než 3 měsíce jsou automaticky přesunuty do archivu. Archivované záznamy se v historii objektů nezobrazují. Pokud chcete zobrazit i archiv, aktivujte v místní nabídce možnost <strong>Tabulka - Zobrazit archiv</strong> nebo stiskněte tlačítko v pravém dolním rohu tabulky    </div>



    <h2>Práce se záznamy v deníku</h2>
    <p>
        Většina záznamů v deníku se vytváří automaticky.<br />
        Pouze oprávnění uživatelé mohou ručně vytvářet, upravovat a mazat jednotlivé záznamy v deníku, viz následující tabulka    </p>

    <table class="wide">
        <thead>
            <tr>
                <th>Typ záznamu</th>
                <th>Správce</th>
                <th>SW lic.</th>
                <th>Čtenář</th>
                <th>Správce majetku</th>
                <th>Zpráva o detekci</th>
                <th>Účetní</th>
                <th>Vazba Právníci</th>
                <th>Čtenáři dluhopisů</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Dokument, zneplatněný <sup>dokument1</sup></td>
                <td>Přidat<br />
                    Upravit<br />
                    Smazat</td>
                <td>Přidat<br />
                    Upravit<br />
                    Smazat</td>
                <td></td>
                <td>Přidat<br />
                    Upravit<br />
                    Smazat</td>
                <td></td>
                <td>Přidat<br />
                    Upravit</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Registr instalací</td>
                <td>Upravit</td>
                <td>Upravit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Evidence licencí</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Historie objektů</td>
                <td>Odebrat</td>
                <td></td>
                <td></td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Porucha (detekce)</td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Informace</td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Inventarizace majetku</td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><sup>Poznámka2</sup></td>
                <td>Přidat<br />
                    Upravit<br />
                    Odstranit</td>
                <td></td>
                <td></td>
                <td>Přidat<br />
                    Upravit<br />
                    Smazat</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Požadavek</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Půjčovna</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Varování (detekce)</td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td>Odstranit</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Upozornění SAM</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="9"><sup>1Vytvoří</sup>se a odstraní se <sup>pouze</sup>vazbu na dokument.<br />
                   <sup>2Pouze</sup>autor může poznámku upravovat, ostatní mohou pouze zobrazit text poznámky a otevřít její přílohy.<br />
                    Poznámku může odstranit její autor a uživatelé s rolí <i>správce správy majetku</i>.</td>
            </tr>
        </tfoot>
    </table>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka: V případě, že je poznámka v seznamu poznámek, může být použita pouze jedna:</div>
        Žádné záznamy nelze trvale odstranit, lze je pouze "skrýt"    </div>

    <h2>Zobrazení smazaných (skrytých) záznamů v deníku</h2>

    <p>
        Chcete-li zobrazit smazané záznamy v deníku, aktivujte možnost umístěnou na kartě <strong>Deník</strong> v místní nabídce <strong>Tabulka - Zobrazit smazané záznamy</strong>.<br />
        Uživatel pak může v deníku vidět i smazané záznamy, jejichž je autorem nebo měl právo je smazat (viz tabulka výše).<br />
        Smazané záznamy jsou zobrazeny šedě.<br />
        V deníku si můžete zobrazit sloupce "Odstraněno" a "Smazáno". U smazaných (skrytých) záznamů se zde zobrazuje jméno osoby, která záznam smazala, a datum smazání záznamu    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Možnost "Zobrazit smazané záznamy" se nachází také v místní nabídce Deníky na kartách <strong>Vlastnosti</strong>, <strong>Objekty</strong> a <strong>Zjištění</strong>   </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud je v jednom z deníků odstraněna položka, změny se projeví ve všech ostatních denících    </div>
    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Správci mohou obnovit smazané záznamy pomocí Nástroje - Databáze -<strong>Obnovit smazané záznamy</strong>   </div>

</asp:Content>
