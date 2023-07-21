<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Licence ALVAO Service Desk</h1>
    <h2>Typy licencí</h2>
    <p>
        Každý uživatel ALVAO Service Desk čerpá licenci na uživatele nebo na řešitele, případně nečerpá žádnou licenci. Celkové čerpání těchto licencí se zobrazuje v nabídce <strong>Správa</strong> - <a href="../../../list-of-windows/alvao-webapp/administration/licenses">Licence</a>a vypočítává se v souladu s <a href="../../license">licenční smlouvou</a>   </p>

    <p>Uživatel čerpá <b>uživatelskou licenci</b>, pokud jsou splněny všechny následující podmínky:</p>
    <ul>
        <li>Uživatel nečerpá licenci řešitele. </li>
        <li>Uživatel je členem řešitelského týmu nebo žadatelem o službu, u které uživatel Host <b>nemá</b> SLA (tj. služba neslouží anonymním žadatelům)        </li>
    </ul>

    <p>Uživatel čerpá <b>licenci řešitele</b>, pokud je splněna alespoň jedna z následujících podmínek:</p>
    <ul>
        <li>Uživatel je členem výzkumného týmu (tj. řešitelem, manažerem nebo speciálním řešitelem) služby, ve které <b>má</b> uživatel Host SLA (tj. anonymní žadatel může ve službě vytvořit požadavek)        </li>

        <li>Uživatel je členem týmu služby, pro kterou je povolena možnost <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Vyžadovat licenci řešitele</a>       </li>


    </ul>



    <h2>Překročení licence</h2>
    <p>
        V případě překročení licence se automaticky zobrazí upozornění v nabídce <em>Správa - Nastavení - </em><a href="../../../list-of-windows/alvao-webapp/administration/settings/settings-check">Kontrola nastavení</a>. V takovém případě zvyšte licenci zadáním <a href="../../../list-of-windows/alvao-webapp/administration/licenses/activation">nového aktivačního klíče</a> nebo upravte nastavení oprávnění ve službách (viz níže). Poté na stránce <a href="../../../list-of-windows/alvao-webapp/administration/settings/settings-check">Kontrola nastavení</a> ověřte, zda je licence již v pořádku. Na stránce se zobrazí poslední zjištěné informace o využití licence, které se obvykle automaticky aktualizují 1x/den. Pokud je však licence přečerpána, aktualizuje se při každém zobrazení stránky <em>Kontrola nastavení</em>. Aktualizace může trvat až 15 minut    </p>


    <h2>Zajištění čerpání pouze licencí na uživatele</h2>
    <p>Pokud máte licence pouze na uživatele a aplikace hlásí přečerpání řešitelů, je třeba změnit nastavení služby tak, aby vyžadovala pouze licence na uživatele. Postupujte podle následujících kroků:</p>

    <ul>
        <li>V nabídce <strong>Správa - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Služby</a> přepněte zobrazení pomocí možnosti <strong>Zobrazit jako tabulku</strong>. Poté zobrazte sloupec <strong>Čerpání licencí</strong>       </li>
        <li>Vyfiltrujte služby, které mají v tomto sloupci hodnotu <strong>Solver</strong>     </li>
        <li>U všech těchto služeb se ujistěte, že uživatel Hostitel (který je součástí skupiny "Everyone") nemá u této služby SLA. Místo skupiny "Everyone" doporučujeme použít jiné skupiny, například skupinu "Registered Users", která obsahuje všechny uživatele kromě uživatele Hostitel        <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Pokud uživatel Hostitel musí mít ve službě SLA, bude služba potřebovat licenci řešitele. 
            </div>
        </li>
    </ul>



    <h2>Zajištění čerpání pouze licencí řešitele</h2>
    <p>Pokud máte pouze licenci řešitele a aplikace hlásí přebytek uživatelů, je třeba změnit nastavení služby tak, aby vyžadovala pouze licence řešitele. Postupujte podle následujících kroků:</p>

    <ul>
        <li>V nabídce <strong>Správa - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Služby</a> přepněte zobrazení pomocí možnosti <strong>Zobrazit jako tabulku</strong>. Poté zobrazte sloupec <strong>Čerpání licencí</strong>.</li>
        <li>Vyfiltrujte služby, které mají v tomto sloupci hodnotu <strong>na uživatele</strong>.</li>
        <li>Vyberte tyto služby a pomocí příkazu <strong>Upravit</strong> u nich povolte možnost <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Vyžadovat licenci na řešitele</a>.</li>
    </ul>


    <h2>Kontrola využití licencí pro uživatele pro kombinovanou licenci</h2>
    <p>Pokud používáte kombinovanou licenci pro uživatele a řešitele a potřebujete zjistit, kteří uživatelé používají kterou licenci, proveďte následující kroky:</p>

    <ul>
        <li>V nabídce <strong>Správa - </strong><a href="../../../list-of-windows/alvao-webapp/administration/users">Uživatelé</a> v tabulce uživatelů zobrazte sloupec <strong>Čerpání licence</strong>, který zobrazuje typ licence, kterou uživatel čerpá.</li>
        <li>Pokud uživatel čerpá licenci, kterou by neměl (např. uživatel čerpá licenci řešitele, ale měl by mít licenci uživatele), vyberte uživatele a použijte příkaz <strong>Upravit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/users/detail/user-rights">Práva</a>.</li>
        <li>V oprávněních zobrazte sloupec <strong>Licence čerpá</strong>. Pokud služba čerpá licenci řešitele, musí být uživateli přidělena licence řešitele          <ul>
                <li>Chcete-li zajistit, aby služba čerpala licenci na řešitele, odstraňte ve službě hostitelskou licenci SLA uživatele a zakažte možnost <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">Vyžadovat licenci na řešitele</a>         </li>
                <li>Chcete-li zajistit, aby služba čerpala licenci řešitele, povolte možnost <em>Vyžadovat licenci řešitele</em>         </li>

            </ul>
        </li>
    </ul>

    <h2>Kontrola využívání licencí službami</h2>
    <p>Pokud se počet využívaných licencí neočekávaně zvýšil a potřebujete zjistit, kolik licencí a jaký druh licencí jednotlivé služby vyžadují, pak:</p>

    <ul>
        <li>V nabídce <strong>Správa - Service Desk - </strong><a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service">Služby</a>. Přepněte zobrazení pomocí možnosti <strong>Zobrazit jako tabulku</strong>.</li>
        <li>Dále zobrazte sloupce <strong>Čerpání licencí</strong> a <strong>Čerpání licencí (počet</strong> ).</li>
        <li>Zkontrolujte počty licencí a zjistěte, zda některá služba nečerpá neočekávaný počet licencí nebo nesprávný typ licence.</li>
    </ul>


</asp:Content>