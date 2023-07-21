<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Inventura majetku pomocí snímače čárových kódů Zebra řady MC3xxx</h1>

    <p>
        Provádění fyzické inventury majetku pomocí mobilních snímačů čárových kódů Motorola/Zebra/Symbol MCxxxx s Microsoft Windows CE / Microsoft Embeded CE / Microsoft Windows Embeded Compact. Jedná se např. o čtečky: MC3000, MC3100, MC3190, MC32N0, MC3200. 
    </p>

    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Vzhledem k typu čteček čárových kódů se jedná o zastaralou metodu kontroly majetku, která již nebude v budoucích verzích systému Alvao podporována. 
    </div>

    <h2>Import aktiv</h2>
    <ol>
       <li>V AM Console <a href="stocktaking">spusťte kontrolu majetku</a> a podle potřeby připravte soubor(y) čtečky čárových kódů.</li> <li>V konzoli AM v okně <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">kontroly majetku</a> použijte příkaz <b>Soubor - Mobilní inventura ALVAO (zastaralé) - Export IXM</b>. exportujte soubor(y) čtečky a <a href="barcode-reader/copy-files">zkopírujte</a> je do čtečky(ek)</li>. <li>V hlavním okně mobilní aplikace použijte příkaz <b>Menu - Import</b> z hlavní nabídky.</li> <li>Vyberte daný soubor IXM.</li> <li>Po dokončení importu můžete zkontrolovat obsah databáze pomocí <b>Menu - Databáze - Zobrazit</b></li>   </ol>


    <h2>Nastavení filtru</h2>
    <p>Vhodné např. při provádění kontroly majetku &quot;podle místnosti&quot;.</p>
    <ol>
        <li>V hlavním okně aplikace stiskněte v hlavní nabídce <img alt="filter" src="barcode-reader/filter.png" />(filtr).</li>
        <li>Zobrazí se okno, ve kterém můžete zvolit, zda chcete filtrovat podle místa, střediska nebo uživatele.</li>
        <li>Filtr potvrďte tlačítkem OK.</li>
    </ol>

    <h2>Skenování kódů</h2>
    <p>
        Vyhledejte štítek s čárovým kódem na majetku a sejměte jej pomocí skeneru. Naskenovaný kód se porovná se sériovým, kontrolním a evidenčním číslem majetku zaznamenaným v evidenci.<br />
        Může se vyskytnout několik variant    </p>
    <ol>
        <li>Aktivum bylo v evidenci nalezeno - informace o aktivu se zobrazí v hlavním okně a aktivum je označeno jako &quot;nalezené&quot;.</li>
        <li>Aktivum bylo nalezeno v záznamech, ale údaje neodpovídají nastavenému filtru - zobrazí se okno s upozorněním, že zachycované aktivum neodpovídá filtru. Aktivum je možné přenést na jiné místo, do jiného střediska nebo k jinému uživateli.</li>
        <li>Aktivum nebylo nalezeno v evidenci - aplikace nabídne vytvoření nového objektu a doplnění jeho údajů.</li>
        <li>Skenovací kód je zachován pro více aktiv - aplikace nabídne naskenování dalšího kódu na aktivu (např. sériového čísla) pro jednoznačnou identifikaci objektu.</li>
    </ol>

    <h2>Seznam zbývajících aktiv</h2>
    <p>V hlavním okně aplikace se zobrazuje, kolik aktiv zbývá vyjmout. Tento počet závisí na zvoleném filtru.</p>
    <ol>
        <li>V hlavním okně aplikace stiskněte tlačítko <img alt="devicelist" src="barcode-reader/devicelist.png" width="14" height="13" />v hlavní nabídce (seznam aktiv).</li>
        <li>Zobrazí se seznam aktiv se stavem, zda bylo aktivum nalezeno, nebo ne. Podle seznamu je možné vyhledat další objekty v místnosti, např.</li>
    </ol>

    <h2>Přidávání informací k naskenovaným aktivům</h2>
    <ol>
        <li>Naskenujte čárový kód objektu</li>
        <li>V hlavním okně aplikace se zobrazí informace o aktivu.</li>
        <li>V hlavním okně aplikace v hlavní nabídce stiskněte tlačítko <img alt="edit" src="barcode-reader/edit.png" width="16" height="12" />(upravit).</li>
        <li>Zobrazí se okno, ve kterém můžete změnit údaje o aktivu, např. přidat sériové číslo odstraněním jiného kódu z objektu v příslušném poli.</li>
        <li>Po úpravě stiskněte v hlavní nabídce okna tlačítko <img alt="save" src="barcode-reader/save.png" width="16" height="16" />(uložit).</li>
    </ol>

    <h2>Export aktiv do souboru</h2>
    <ol>
        <li>V hlavním okně použijte příkaz <b>Menu - Export</b> z hlavní nabídky.</li>
        <li>Vyberte umístění a zadejte název souboru.</li>
        <li>Exportovaný soubor IXM<a href="barcode-reader/copy-files">zkopírujte</a> zpět do počítače.</li>
        <li>V AM Console v okně <a href="../../list-of-windows/alvao-asset-management-console/tools/stocktaking">kontroly majetku</a> použijte příkaz <b>Soubor - Mobilní inventář ALVAO (zastaralý) - Importovat IXM</b>. načtěte soubor. Soubory by se měly vždy načíst do správných položek (soubory čtenářů) v dolní části okna.</li>
        <li>V AM Console <a href="stocktaking">zpracujte výsledky</a> kontroly majetku.</li>
    </ol>

</asp:Content>
