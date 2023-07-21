<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Deník</h1>

    Deník obsahuje všechny záznamy týkající se objektu vybraného ve stromu.<br />
    Pokud je povoleno zobrazení včetně podstromu, zobrazí se také záznamy všech jeho podobjektů.<br />
    Typy záznamů v <em>Deníku:</em>   <ul>
        <li><strong>Historie</strong> - automaticky generované záznamy o <a href="../../../alvao-asset-management/object-log">pohybech objektů</a> ve stromu (tj. počítače a příslušenství mezi uživateli nebo pohyby uživatelů ve struktuře organizace).</li>
        <li><strong>Poznámky</strong> - <a href="../../../alvao-asset-management/object-notes">poznámky</a> uživatele, např. o poruchách počítače, opravách apod.</li>
        <li><strong>Detekce</strong> - záznamy o údajích o <a href="../../../alvao-asset-management/implementation/detection">detekcích</a>implementace počítačů            <ul>
                <li><strong>Upozornění</strong> - záznamy o neshodách mezi detekcí a záznamy, které nebylo možné automaticky aktualizovat.</li>
                <li><strong>Chyba</strong> - chyba v detekci.</li>
            </ul>
        </li>
        <li><strong>Registr instalací</strong> - záznamy o detekovaných instalacích nebo odinstalacích softwaru.</li>
        <li><strong>Dokumenty</strong> - <a href="../../../alvao-asset-management/documents">dokumenty</a> týkající se počítačů nebo jiného majetku, jako jsou faktury, dodací listy, předávací protokoly apod. Zobrazují se také záznamy o <strong>nezaplacených dokladech</strong>.</li>
        <li><strong>Informace</strong> - záznamy o změnách hodnot <a href="../../../alvao-asset-management/objects-and-properties">vlastností</a>, druhu objektu a aktualizace záznamů podle detekce.</li>
        <li><strong>Evidence licencí</strong> - záznamy o přidělení nebo odebrání <a href="../../../alvao-asset-management/software-management/licenses">licence</a> k vybranému objektu.</li>
        <li><strong>Oznámení o chybějící licenci</strong> - záznamy o odeslaných <a href="../../../modules/alvao-sam-assistant/sam-alerting">upozorněních SAM</a>.</li>
        <li><strong>Inventura majetku</strong> - veškeré záznamy o akcích provedených při <a href="../../../modules/alvao-inventory-audits/stocktaking">inventuře majetku</a>.</li>
        <li><strong>Výpůjčka</strong> - záznamy o výpůjčce a vrácení <a href="../../../alvao-asset-management/software-management/licenses#media">média</a>.</li>
        <li><strong>Požadavek</strong> - záznam o <a href="../../../alvao-service-desk/request-object-links">požadavku</a> souvisejícím s objektem v <a href="../../../alvao-service-desk">ALVAO Service Desk</a> (pokud jej používáte).</li>
        <li><strong>Vazby </strong> - záznamy o přidání a odebrání <a href="links">odkazů</a>.</li>
    </ul>
    <p>Možnosti místní nabídky záložky <em>Deník</em>:</p>
    <ul>
        <li><strong>Přidat</strong>      <ul>
                <li><a href="../edit/note">Poznámka</a> - zapíše novou poznámku do deníku objektu vybraného ve stromu.</li>
                <li><a href="../tools/lists/documents/document-edit">Nový dokument</a> - vytvoření nového dokumentu a přidání odkazu na něj do deníku.</li>
                <li><a href="../tools/lists/documents">Odkaz na dokument</a> - přidání odkazu na existující dokument k objektu v deníku.</li>
            </ul>
        </li>
        <li><strong>Otevřít přílohu</strong> - otevře přílohu vybraného záznamu protokolu.</li>
        <li><strong>Najít ve stromu</strong>     <ul>
                <li><strong>Objekt</strong> - zvýrazní ve <a href="../object-tree">stromu objektů</a> objekt, v jehož protokolu je záznam zapsán (je uveden ve sloupci <strong>Objekt</strong> ).</li>
                <li><strong>Související objekt</strong> - zvýrazní ve <a href="../object-tree">stromu objektů</a> objekt, k němuž se záznam vztahuje (například přidaný monitor uvedený ve sloupci <strong>Zpráva</strong> ).</li>
            </ul>
        </li>
        <li><a href="../../../alvao-service-desk">Zobrazit v Service Desku</a> - zobrazí vybraný záznam typu <a href="../../../alvao-service-desk/requests">Požadavek</a>.</li>
        <li><a href="properties/table-options">Tabulka</a>- nabídka umožňuje <a href="../../../alvao-asset-management/working-with-tables">přizpůsobit tabulku</a>. Například vytvořit filtry, <a href="../../../alvao-asset-management/working-with-tables/table-views">pohledy</a> nebo zobrazit více řádků.</li>
        <li><a href="properties/find">Najít</a> - vyhledávání textu v zobrazené tabulce.</li>
        <li><strong>Odstranit</strong> - odstranění vybraného záznamu.</li>
        <li><strong>Upravit</strong> - editace vybraného záznamu (v závislosti na typu záznamu se otevře okno): <a href="../tools/lists/documents/document-edit">Dokument</a>, <a href="../software/installation-registry/alter-installation">Evidence instalací</a> nebo <a href="../edit/note">Poznámka</a>        <div class="caution">
               <div class="icon"></div>
                <div class="title">Upozornění:</div> 
                <div>   <strong>Upravit</strong> či <strong>Odstranit</strong> lze pouze některé záznamy v deníku a tyto operace mohou provádět pouze uživatelé s rolí <strong>Administrátor </strong>nebo <strong>Správce majetku</strong>.<br />
                Výjimku tvoří <strong>Správce softwarových licencí</strong>, který může upravovat dokumenty a záznamy ze <a href="../software/installation-registry">Evidence instalaci</a>, a <strong>Účetní,</strong> který může upravovat dokumenty (faktury).<br />
                    Žádné záznamy nelze mazat absolutně, smazané záznamy se zobrazují pomocí místní nabídky - <strong>Tabulka</strong> - <strong>Zobrazit odtsraněné položky</strong>.       </div>
        </li>
    </ul>


</asp:Content>
