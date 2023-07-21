<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový majetek</h1>
    <p>Tento formulář lze použít k vytvoření nové vlastnosti.</p>
 
    <p>Možnosti:</p>
    <ul>
        <li><strong>Název nemovitosti</strong> - zadejte jedinečný název nemovitosti (např. Velikost, Kapacita, Jméno, Příjmení atd.).</li>
        <li><strong>Typ dat</strong> - vyberte, zda bude vlastnost typu Text, Číslo nebo Datum. Pokud typ změníte dodatečně, hodnoty vlastnosti se automaticky převedou na nový typ. Při změně z typu Text na typ Datum nebo Číslo je dobré zkontrolovat, zda byly hodnoty převedeny správně, viz <a href="../../../../../alvao-asset-management/implementation/object-property-change-type">Změna vlastnosti typu Text na jiný typ</a>  <div class="caution">
               <div class="icon"></div>
                <div class="title">Upozornění:</div>
                Nelze měnit v režimu úprav systémových vlastností           </div>
        </li>
        <li><strong>Zdědit vlastnost</strong> - zapněte, pokud má být vlastnost děděna, tj. pokud má objekt tuto vlastnost, pak ji mají i všechny jeho podřazené objekty.</li>
        <li><strong>Globální ve všech objektech</strong> - zapněte, pokud se má vlastnost a hodnoty, které přebírá, považovat za globální ve všech typech objektů.<br />
            Typickým příkladem je <em>Inventární číslo</em>, které je jedinečné napříč všemi objekty.<br />
            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                <br />
                
                Tato možnost ovlivňuje:<br />
                <ul>
                    <li>Pokud ji nezapnete, mohou mít dva objekty různých typů stejnou hodnotu této vlastnosti.</li>
                    <li>Obsah automaticky generovaného seznamu hodnot vlastnosti - pokud tuto volbu vypnete, budou v seznamu hodnot v položce <a href="../../../../../list-of-windows/alvao-asset-management-console/tab-view/properties/property-edit">Vlastnost</a> uvedeny pouze hodnoty určené pro objekty stejného typu, např. ve vlastnosti Název budou uvedeny jiné hodnoty pro tiskárny a jiné hodnoty pro monitory.</li>
                </ul>
            </div>
        </li>
        <li><strong>Unikátní</strong> - zapněte, pokud mají být hodnoty této vlastnosti unikátní          <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Všechny vlastnosti, které mají být jedinečné, se kontrolují pomocí kontroly jedinečnosti. Podle hodnot těchto vlastností lze například rozlišit různé objekty nebo zařízení.<br />
                Typickým příkladem jedinečné vlastnosti je <em>Inventární číslo</em>.<br />
                Kontrola jedinečnosti se provádí pouze v aktivním inventáři, tj. mimo <em>koš, majetek, šablony objektů, pohledy objektů a kategorie majetku</em>. 
            </div>
        </li>
        <li><strong>Odstranit hodnotu při kopírování objektů</strong> - zapněte, pokud chcete, aby se hodnota vlastnosti vždy vyplnila vědomě (ne nevědomě při kopírování objektu). Příkladem je sériové číslo       <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Tato volba je automaticky zapnuta, pokud je nastaven parametr <strong>Jedinečný</strong>          </div>
            <div class="caution">
               <div class="icon"></div>
                <div class="title">Upozornění:</div>
                Nelze zrušit zaškrtnutí. 
            </div>
        </li>
        <li><strong>Pořadí v seznamu</strong> - v případě potřeby určete pořadí, v jakém se má upravovaná vlastnost zobrazit. Případně můžete seznam vlastností seřadit podle těchto hodnot - seřadit podle sloupce v poli <strong>Pořadí v seznamu</strong>.</li>
        <li><strong>Ikona</strong> - tlačítko pro výběr ikony upravované vlastnosti.</li>
    </ul>

</asp:Content>
