<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Dokumenty</h1>
    <p>V Alvao můžete evidovat následující typy dokumentů:</p>
    <ul>
        <li><em>Faktury</em> - mohou se týkat nákupu hmotného majetku, softwarových licencí, služeb atd.</li>
        <li><em>Předávací protokoly</em> - písemný záznam o předání konkrétních položek (majetku) mezi zaměstnanci v rámci organizace</li>
        <li><em>Certifikáty</em> - dokument potvrzující vlastnictví konkrétní softwarové licence</li>
        <li><em>Licenční smlouva</em> - definuje pravidla používání softwarové licence</li>
        <li><em>Smlouvy</em> - mohou se týkat hmotného majetku, softwarových licencí, smluv o poskytování služeb atd.</li>
        <li><em>Obecné dokumenty</em> - další nespecifikované typy dokumentů</li>
    </ul>
    <p>
        Chcete-li spravovat dokumenty, přejděte do <strong>WebApp -</strong> <a href="../list-of-windows/alvao-webapp/documents">Dokumenty</a> nebo <strong>AM Console -</strong> <strong>Nástroje - Seznamy -</strong> <a href="../list-of-windows/alvao-asset-management-console/tools/lists/documents">Dokumenty</a>   </p>
    <p>
        Dokumenty jsou uloženy ve <strong>složkách dokumentů</strong>. Složky můžete spravovat v nabídce <strong>WebApp - Administration (Správa) - Asset Management (Asset Management) -</strong> <a href="../list-of-windows/alvao-webapp/administration/asset-management/document-folders">Document folders (Složky dokumentů)</a>. Ve výchozím nastavení je k dispozici jedna složka <em>All Documents (Všechny dokumenty)</em>, ve které jsou uloženy všechny dokumenty. Přístup uživatelů k dokumentům můžete omezit nastavením přístupových práv k jednotlivým složkám    </p>
    <p>Složka dokumentů slouží především jako rejstřík běžných papírových dokumentů. V databázi můžete vyhledávat čísla dokumentů, které se vztahují k aktivu. Podle čísla by pak mělo být možné dohledat papírové dokumenty ve fyzickém nebo elektronickém archivu. Případně můžete nechat dokumenty převést do elektronické podoby (naskenovat) a uložit je do databáze Alvao.</p>
    <h2>Skenování dokumentů</h2>
    <p>Papírový dokument lze přímo naskenovat a připojit jako přílohu k dokumentu. Při vytváření nového dokumentu nad tabulkou příloh vyberte z místní nabídky možnost <strong>Skenovat</strong>. Tím se otevře okno s výběrem nalezených skenerů. Po výběru zařízení se zobrazí okno s nastavením skenování. Po potvrzení možností se spustí skenování. Výsledný obrázek se uloží do databáze jako příloha dokumentu. Soubory s naskenovanými dokumenty jsou pojmenovány Scan1.jpg, Scan2.jpg atd.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Vzhled a možnosti okna nastavení skenování závisí na použitém skeneru. U některých typů skenerů se může skenování spustit okamžitě bez zobrazení okna s nastavením skenování    </div>

</asp:Content>
