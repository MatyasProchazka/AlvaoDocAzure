<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Neaktivní uživatelské účty</h1>

    <p>V systému Alvao existují tři typy omezení uživatelských účtů.</p>
    <p>
        Tato omezení se spravují ve webové aplikaci ALVAO: v části <strong>Správa</strong> - <strong>Uživatelé</strong> zobrazte uživatelské účty.<br />
        Vyberte uživatelský účet a v místní nabídce zvolte možnost <strong>Smazat</strong> nebo <strong>Skrýt účty</strong>.<br />
        Nebo v místní nabídce vyberte možnost <strong>Upravit - </strong><a href="../../../list-of-windows/alvao-webapp/administration/users/create-user">Vlastnosti</a> a v <strong>nabídkách</strong> zaškrtněte políčko <strong>Účet je zakázán</strong> nebo <strong>Skrýt</strong>   </p>

    <h2>Zakázaný účet</h2>
    <p>
        Očekává se, že zakázaný uživatel bude brzy zrušen. Zakázaní nebo skrytí uživatelé proto nečerpají <a href="sd-licenses">licence</a>.<br />
        Zakázání účtu lze také nastavit přímo v administraci nebo nastavit při <a href="../../../alvao-asset-management/implementation/users/authentication/ad">importu z AD</a> (kdy se účet zakáže například po třech neúspěšných přihlášeních)    </p>

    <p>Uživatel, jehož účet byl zakázán, se dočasně nemůže přihlásit do Alvao, nezobrazuje se v nabídkách a přestanou mu chodit oznámení. Na rozdíl od odebraného účtu je zakázaný účet v systému Alvao stále "aktivní" a uživatel se po zrušení zakázání vrátí k práci "bez přerušení".</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud zaměstnanec odchází, doporučujeme účet místo deaktivace odebrat    </div>

    <h2>Odstraněný účet</h2>
    <p>V případě potřeby lze účet obnovit, ale obnovení se nepředpokládá. Odstraněný uživatel tedy <a href="sd-licenses">nečerpá licenci</a>.</p>

    <p>Uživatel nemá přístup do systému, nezobrazuje se v nabídkách, nedostává oznámení a v systému Alvao "neexistuje".</p>
    <p>Chcete-li obnovit odstraněné účty, zobrazte je v uživatelských účtech pomocí příkazu <strong>Zobrazit odstraněné účty</strong>. U vybraných smazaných účtů pak v místní nabídce vyberte příkaz <strong>Obnovit smazané</strong>.</p>

    <h2>Účet skrytý v nabídkách</h2>
    <p>Předpokládá se, že účet není používán skutečným uživatelem, ale zároveň jej nelze odstranit. Typicky se jedná o systémový účet v Active Directory, který by se znovu vytvořil při každém importu.</p>

    <p>Skrytý účet se nezobrazuje v nabídkách, nepřijímá oznámení a v systému Alvao "neexistuje".</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Pokud se účet zobrazuje v nabídkách, můžete jeho uživatele přiřadit do skupiny, požádat o schválení nebo například přiřadit požadavek na řešení    </div>

</asp:Content>