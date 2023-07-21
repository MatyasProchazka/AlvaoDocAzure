<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Šablony objektů</h1>

    <p>
        Šablony objektů jsou definice objektů, které se používají k vytváření objektů ve stromu aktiv (neboli <a href="object-models">šablony objektů</a>). Šablona určuje, jaké vlastnosti, ikonu atd. má objekt mít. Šablony můžete upravovat, přidávat a odebírat vlastnosti ze stávajících šablon, vytvářet nové šablony nebo odstraňovat stávající šablony    </p>


    <p>Chcete-li upravit Šablony objektů, musíte v hlavní nabídce vybrat <strong>Nástroje - Nastavení</strong> a na kartě <strong>Zobrazení</strong> zapnout možnost <strong>Zobrazit skryté objekty</strong>. V kořeni stromu se zobrazí objekt Šablony objektů, který obsahuje šablony pro vytváření organizační struktury a aktiv ve stromu.</p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Upozornění: V tomto okně se zobrazí šablony, které se mají používat při vytváření šablon:</div>
        <p>
            Nedoporučujeme provádět zásadní změny v šablonách, zejména v šabloně počítače a počítačové sestavě. Některé objekty a vlastnosti jsou úzce svázány s celým systémem, připravenými dotazy a tiskovými sestavami, takže by úpravy mohly vést k jejich nefunkčnosti. Vytváření nových objektů a přidávání vlastností ke stávajícím objektům lze považovat za bezpečné úpravy       </p>
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Upozornění:</div>
        <p>Je možné, že při budoucích upgradech systému budou do databází nahrány nové verze šablon. Z tohoto důvodu je dobré mít úpravy šablon pod kontrolou, abyste je mohli později zopakovat. Nové objekty je vhodné umístit do jedné společné složky nazvané například <em>Vlastní objekty</em>. Při aktualizaci pak můžete celou složku jednoduše přesunout do nových šablon.</p>
    </div>

    <h2>Úprava šablony objektu</h2>
    Vlastnosti objektů můžete přidávat a odebírat a upravovat jejich atributy pouze v šabloně daného typu objektu. Změny v šabloně se automaticky promítnou do všech objektů daného typu v celé evidenci. pokud máte v evidenci objekty typu, které nemají šablonu, je vhodné pro ně šablonu vytvořit:<ol>
        <li><a href="../objects-and-properties/copying-object">Zkopírujte</a> jeden z existujících objektů v inventáři do schránky<span class="key">(</span><span class="key">Ctrl+C</span>).</li>
        <li>Vložte objekt ze schránky do šablon objektů v příslušné podsložce<span class="key">(</span><span class="key">Ctrl+V</span>).</li>
        <li>Přidání/odstranění vlastností nebo nastavení atributů - viz následující kapitoly.</li>
    </ol>

    <h2>Přidávání a odebírání vlastností</h2>
    <p>
        Chcete-li do seznamu přidat novou vlastnost, klepněte pravým tlačítkem myši kdekoli v seznamu a z nabídky vyberte příkaz <strong>Nová vlastnost</strong>. Na obrazovce se otevře <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/properties-definition">nabídka Vlastnosti</a>, ve které vyhledejte vlastnost, kterou chcete k objektu přidat, a dvakrát na ni klepněte. Poté zadejte hodnotu vlastnosti    </p>
    <p>
        Vlastnosti se opět odstraní obvyklým způsobem. Klepněte pravým tlačítkem myši na vlastnost, kterou chcete odebrat, a vyberte možnost <strong>Odstranit</strong>   </p>
    <div class="caution">
       <div class="icon"></div>
        <div class="title">Upozornění:</div>
        Operace přidání vlastnosti se na rozdíl od operací odebrání a úprav nezaznamenává do historie objektu    </div>

    <h2>Změna atributů vlastnosti</h2>
    <ol>
        <li>Vyberte vlastnost a klepněte na ni pravým tlačítkem myši.</li>
        <li>Z nabídky vyberte možnost <strong>Upravit</strong>. Otevře se okno<a href="../../list-of-windows/alvao-asset-management-console/tab-view/properties/property-edit">Vlastnost</a> s podrobnostmi o vybrané vlastnosti.<div class="note">
   <div class="icon"></div>
    <div class="title">Poznámka:</div>
    Okno můžete zobrazit také pomocí kláves <span class="key">Alt+Enter</span>        </div>
        </li>
        <li>Podle potřeby upravte atributy (vlastnost určuje název objektu, dědí vlastnost) a změnu potvrďte tlačítkem <strong>OK</strong><div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Atributy může měnit pouze uživatel s rolí <i>správce správy aktiv</i>    </div>
        </li>
    </ol>

    <h2>Povinné funkce</h2>
    Pokud chcete, aby některé vlastnosti byly povinné (tj. musí mít vyplněnou hodnotu), povolte povinné vlastnosti v <strong>AM Console - Nástroje - Seznamy - Definice vlastností - Upravit -</strong> <a href="../../list-of-windows/alvao-webapp/administration/asset-management/property-definitions/detail/value-check">Kontrola hodnot</a></asp:Content>
