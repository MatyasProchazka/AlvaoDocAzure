<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Podepisování přes web</h1>

    <p>
        Při tomto způsobu podepisování předávacího protokolu příjemce potvrdí převzetí vlastnosti stisknutím tlačítka v aplikaci. Předávací protokol není nutné tisknout na papír a příjemce jej může potvrdit jakýmkoli zařízením s webovým prohlížečem (počítač, mobilní telefon, tablet, ...) bez zvláštního technického vybavení. 
    </p>

    <h2>Nastavení</h2>
    <p>
        Po vystavení nového předávacího protokolu aplikace automaticky upozorní příjemce e-mailem na nutnost jeho podepsání. Ve <b>Webové aplikaci - Správa - Asset Management - Nastavení - </b><a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/electronic-handover-forms">Podepisování dokumentů přes web</a> nejprve nastavte text zprávy a další parametry oznámení. 
    </p>

    <h2>Zveřejnění předávacího protokolu</h2>
    <ol>
        <li>Při <a href="../../alvao-asset-management/documents/transfer-protocols">sestavování předávacího protokolu</a> vyberte šablonu <b>Interní souhrnný</b> protokol <b>předávacího</b> protokolu  <div class="note">
         <div class="icon"></div>
          <div class="title">Poznámka:</div>
          Vrácení jednotlivých aktiv prostřednictvím <i>rozdílového předávacího protokolu</i> nelze elektronicky potvrdit, proto doporučujeme použít <i>Souhrnný předávací protokol</i>. Podepsáním protokolu uživatel vždy potvrdí kompletní seznam majetku a má tak lepší přehled o aktuálním stavu svěřeného majetku      </div>
        </li>
        <li>Ve <a href="../../list-of-windows/alvao-webapp/objects/object/print">formuláři</a> vyberte možnost <b>Způsob podepisování</b> <i>přes web.</i></li>
        <li>Po stisknutí tlačítka <b>OK</b> se zobrazí <a href="../../list-of-windows/alvao-webapp/objects/object/print/preview">náhled</a> tiskové sestavy, kde si můžete zkontrolovat předávací protokol.</li>
        <li>Protokol odešlete pomocí příkazu <b>Odeslat</b>. Příjemci bude odeslán e-mail s odkazem na webovou aplikaci ALVAO, kde si může předávací protokol prohlédnout a podepsat.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        E-mailová adresa příjemce pochází z <i>aplikace ALVAO WebApp - Administration - Users</i>, nikoli ze stromu objektů. Párování uživatelů mezi <i>administrací</i> a objekty je založeno na GUID, osobním čísle, uživatelském jménu a e-mailu (v tomto pořadí)    </div>

    <h2>Podepisování protokolu přes web</h2>
    <p>
        Zaměstnanec, kterému je majetek předáván, obdrží e-mail se zprávou, že mu byl majetek předán a je vyžadován jeho podpis.<br />
        V textu e-mailu je odkaz na stránku s dokumenty uživatele ve webové aplikaci ALVAO    </p>
    <p>Podepsání předávacího protokolu:</p>
    <ol>
        <li>Přejděte na stránku <b>Moje dokumenty</b>.</li>
        <li>Otevřete požadovaný dokument a prohlédněte si jej.</li>
        <li>Klepněte na tlačítko <b>Podepsat</b> vedle dokumentu.</li>
        <li>Poté budete dotázáni, zda s obsahem dokumentu souhlasíte.</li>
        <li>Výběrem možnosti <b>Potvrdit</b> podepište předávací protokol a zaznamenejte datum, osobu, která jej podepsala, a název počítače, ze kterého byl podpis proveden.</li>
    </ol>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Při podepisování protokolu můžete také vynutit přihlašovací heslo, aby bylo podepisování průkaznější. Toto chování lze nastavit ve <i>webové aplikaci ALVAO - Správa - Asset Management - Nastavení - </i> <a href="../../list-of-windows/alvao-webapp/administration/asset-management/settings/electronic-handover-forms">Podepisování dokumentů přes web</a> zaškrtnutím volby <i>Vyžadovat při podepisování přihlašovací heslo</i>   </div>

    <h2>Kontrola podpisu</h2>
    <p>Chcete-li zkontrolovat stav podepsání dokumentu, použijte následující postup:</p>
    <ol>
        <li>V <b>AM Console</b> zvolte v hlavní nabídce <b>Nástroje - Seznamy - Dokumenty</b>.</li>
        <li>V zobrazeném seznamu si prohlédněte sloupce <b>Způsob podpisu, Podepsáno, Podepsal a Podepsáno z počítače</b>.</li>
        <li>Vyhledejte (např. pomocí filtru) požadovaný dokument, metoda podepisování má <b>podepisování z webu</b>.</li>
        <li>Dokument je podepsán, pokud sloupce <b>Podepsáno</b> a <b>Podepsáno od</b> obsahují datum a osobu, která dokument podepsala. Sloupec <b>Podepsáno z počítače</b> pak obsahuje název počítače, ze kterého byl dokument podepsán.</li>
    </ol>

    <h2>Změna způsobu podepisování</h2>
    <p>Pokud byl protokol podepsán jiným způsobem (např. jste dodatečně vytiskli předávací protokol a příjemce jej podepsal ručně) a chcete změnit způsob podepisování, postupujte následovně:</p>
    <ol>
        <li>V <b>AM Console</b> zvolte v hlavní nabídce <b>Nástroje - Seznamy - Dokumenty</b>.</li>
        <li>V seznamu vyberte požadovaný předávací protokol a zvolte možnost <b>Upravit</b>.</li>
        <li>Nastavte položku <i>Metoda podepisování</i> na požadovanou hodnotu.</li>
    </ol>

</asp:Content>
