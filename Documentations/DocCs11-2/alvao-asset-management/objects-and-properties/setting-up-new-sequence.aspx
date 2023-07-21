<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nastavení nové číselné řady pro generování hodnoty vlastnosti</h1>
    <ol>
        <li>V hlavní nabídce použijte <strong>Nástroje - Seznamy - Číselné řady</strong>, čímž otevřete <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences">číselné řady</a>.</li>
        <li>Stiskněte tlačítko <strong>Nová</strong>.</li>
        <li>Na obrazovce se otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences/numeric-sequence">Nová číselná řada</a> s nastavením číselné řady.</li>
        <li>Zadejte název nové sekvence (např. &quot;Názvy počítačů&quot;), předčíslí, číslo a příponu sekvence (např. PC, 1, ALVAO).</li>
        <li>Vyberte vlastnost, jejíž hodnotu má řada generovat (např. &quot;Název v síti&quot;)            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Vlastnosti, které mají povolenou možnost &quot;pouze výběr&quot;, se v nabídce nezobrazují - nelze pro ně definovat automatický číselník           </div>
        </li>
        <li>Vyberte typ objektu, (např. &quot;Počítač&quot;) a stiskněte tlačítko <strong>&lt;&lt;Přidat</strong> vedle seznamu. Typ objektu bude přidán do seznamu.<div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Pokud je seznam typů objektů prázdný, vygeneruje se hodnota vlastnosti pro všechny typy objektů        </div>
        </li>
        <li>Změny potvrďte tlačítkem <strong>OK</strong>. Pokud je nastavení řádku v konfliktu s jiným řádkem, zobrazí se varovná zpráva a řádek nelze uložit.<div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Řádek definovaný pro konkrétní typy objektů má přednost před řádkem definovaným pro všechny typy objektů. Tyto dvě řady nejsou v kolizi. Toto pravidlo platí také pro typ počítače           </div>
        </li>
    </ol>
    <p>
        Číselné řady generují hodnoty vybraných vlastností objektu okamžitě při vytvoření nového objektu ve stromu (příkaz Nový objekt, Kopírovat objekt). Vygenerovanou hodnotu vlastnosti lze později ručně změnit. V definici vlastnosti může, ale nemusí být povolena jedinečnost    </p>

</asp:Content>
