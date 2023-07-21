<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Změna vlastnosti typu Text na jiný typ</h1>

    <h2>Změna vlastnosti typu Text na typ Date</h2>

    <p>Chcete-li změnit typ vlastnosti, proveďte následující kroky:</p>
    <ol>
        <li>Otevřete <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail">Definice vlastností</a>, vyberte konkrétní vlastnost a změňte její datový typ. Hodnoty vlastností, které jsou zadány v některém z podporovaných formátů, se automaticky převedou na typ datum. Protože systém nezaručuje automatický převod všech hodnot vlastností v celém záznamu, automaticky se vytvoří záloha (kopie) původní vlastnosti s názvem "&lt;název vlastnosti&gt; (starý)" (např. "Datum výroby (starý)"), která zachová původní hodnoty.</li>
        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Podporovaný formát pro automatický převod je "dd.mm.rrrr" (např. 15.10.2015, 3.1.2015). Pokud máte většinu hodnot vlastností zadanou v jiném formátu, doporučujeme postupovat až do kroku 5 této příručky. 
        </div>
        <li>Tímto postupem zkontrolujte, zda systém dokázal převést všechny hodnoty       <ol type="a">
                <li>Ve stromu objektů vyberte celou organizaci.</li>
                <li>Na kartě Podřazené objekty zobrazte sloupec <strong>"&lt;název vlastnosti&gt;"</strong> (typ vlastnosti Datum) a <strong>"&lt;název vlastnosti&gt; (starý)</strong>". V místní nabídce použijte příkaz "Zobrazit v seznamech objektů".</li>
                <li>Jakmile se zobrazí okno "Seznamy objektů", potvrďte název zobrazení klávesou "Enter" a nastavte filtry ve sloupcích následujícím způsobem:</li>
                <ol type="i">
                    <li>"&lt;název vlastnosti&gt;"=""</li>
                    <li>"&lt;název vlastnosti&gt; (starý)"=ne ""</li>
                    <li>"Cesta ve stromu" - odstraňte filtr (pak se zobrazí objekty z celé evidence)</li>
                </ol>
            </ol>

        </li>


        <li>Pokud se po nastavení filtru nezobrazí žádný řádek, byly všechny hodnoty převedeny správně, takže pokračujte krokem 7.</li>


        <li>Pokud se systému nepodařilo převést malý počet hodnot, přidejte hodnoty ručně. Doporučujeme seřadit hodnoty na kartě Podřazené objekty podle sloupce <strong>"&lt;název vlastnosti&gt; (starý)"</strong> a pomocí příkazu "Upravit" z místní nabídky nastavit hodnoty vlastností objektu ve sloupci <strong>"&lt;název vlastnosti&gt;</strong> ". Tímto způsobem můžete nastavit stejnou hodnotu vlastnosti pro více objektů najednou.</li>


        <li>Pokud se systému nepodařilo převést velký počet hodnot, postupujte podle následujících pokynů pro hromadný převod       <ol type="a">
                <li>V tabulce v okně Seznamy objektů zobrazte pouze sloupce "NodeId", "Typ" a "&lt;název vlastnosti&gt; (starý)".</li>
                <li>V místní nabídce zvolte Tabulka -&gt; Uložit jako a uložte tabulku jako soubor "*.CSV".</li>
                <li>Otevřete soubor v aplikaci Microsoft Excel a v případě potřeby upravte původní hodnoty vlastností (tj. hodnoty ve sloupci "... (starý)", např. "Datum výroby (starý)") tak, aby byly všechny v jednotném formátu podporovaném nástrojem ImportUtil , viz parametr <strong>-datetimeformat</strong> nástroje <a href="../import-export-data/import-util">ImportUtil</a>. Poté přejmenujte sloupec s původními hodnotami na název cílové vlastnosti (tj. odstraňte příponu "(old)").</li>
                <li>Pomocí <a href="../import-export-data/import-util">nástroje ImportUtil</a>a parametrů <strong>-datetimeformat</strong> a <strong>-keyfields &quot;NodeId&quot;</strong>. aktualizujte hodnoty vlastnosti v registru. Pokud se import dat u některých objektů nezdaří, upravte formát dat pro objekty v souboru CSV ručně.</li>
            </ol>


        </li>

        <li>Pokračujte znovu krokem 2.</li>

        <li>Po dokončení převodu hodnot vlastností odstraňte u všech šablon vlastnost "&lt;název vlastnosti&gt; (starý)" a proveďte sjednocení podle šablon  <ol type="a">
      <li>Otevřete okno <strong>Nástroje - Databáze - SQL dotaz</strong>.</li>
      <li>Vytvořte nový dotaz<strong>(Soubor - Nový</strong>).</li>
      <li>Zadejte následující SQL dotaz <pre translate="no">
SELECT DISTINCT
    n.intNodeId,
    n.txtClass [Object Type],
    n.txtPath+N&#39;/&#39;+n.txtName [Path and name of the object in the tree]
FROM vNodeClass n
    JOIN tblNodeParent np on np.lintNodeId=n.intNodeId 
    JOIN tblNode t on t.intNodeId=np.lintParentNodeId and t.lintClassId=3
    JOIN vPropertyKind pk ON n.intNodeId=pk.lintNodeId AND pk.txtKind=N&#39;&lt;propertyName&gt; (old)&#39;</pre></li>
      <li>V dotazu nahraďte řetězec "&lt;název vlastnosti&gt; (starý)" názvem staré vlastnosti.</li>
      <li>Podle cesty ve stromu vyhledejte všechny nalezené šablony objektů a odstraňte z nich starou vlastnost.</li>
      <li>Vytvořte objekty sjednocené podle upravovaných šablon.</li>
      <li>K odstranění definice vlastnosti použijte "Seznamy - Definice vlastností".</li>
      <li>Pokud ani poté nelze definici vlastnosti odstranit, je pravděpodobně použita na objekty, které nemají šablonu. Ty zjistíte pomocí dotazu:<pre translate="no">
SELECT
    n.intNodeId,
    n.txtClass [Object Type],
    n.txtPath+N&#39;/&#39;+n.txtName [Path and name of the object in the tree]
FROM vNodeClass n
    JOIN vPropertyKind pk ON pk.lintNodeId=n.intNodeId and pk.txtKind=N&#39;&lt;propertyName&gt; (old)&#39;</pre>. Dotaz můžete znovu spustit z okna Nástroje - Databáze - SQL dotaz. Nezapomeňte v dotazu změnit název vlastnosti. Všechny takto nalezené vlastnosti smažte a definici vlastnosti opět odstraňte      </li>

  </ol>

        </li>
    </ol>


    <h2>Změna vlastnosti typu Text na typ Číslo</h2>


    <p>Chcete-li změnit typ vlastnosti, postupujte následovně:</p>
    <ol>
        <li>Změňte datový typ vlastnosti Text na typ Číslo. Podporovaným formátem pro převod je desetinné číslo s čárkou nebo tečkou jako desetinným oddělovačem. Jako oddělovač řádků lze použít znak mezery. Převádět lze také záporná čísla nebo čísla ve zkráceném formátu. Například: &quot;12 543,50&quot;, &quot;980,56&quot;, &quot;-1530&quot;, &quot;1,3e-2&quot;. </li>

        <li>Po převodu zkontrolujte a importujte všechny nepřevedené vlastnosti, jak bylo popsáno při změně typu Text na typ Datum. 
            <div class="note" style="line-height: 100%">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Při použití nástroje ImportUtil není třeba používat přepínač <strong>-datetimeformat</strong>           </div>
        </li>
    </ol>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Upozornění: Vlastnosti datového typu Date nelze změnit na Number (nebo naopak). Datové typy nelze měnit ani u systémových položek. </div>
    </div>


</asp:Content>
