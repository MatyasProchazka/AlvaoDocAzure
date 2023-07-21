<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nové znalosti</h1>
    <p>Pomocí tohoto formuláře můžete vytvořit novou <a href="../../../../alvao-service-desk/knowledge-base">znalost</a>.</p>
    <p>Možnosti:</p>
    <ul>
        <li>Příkazový panel<ul>
            <li><strong>OK</strong> - odeslání formuláře</li>
            <li><strong>Příloha</strong> - připojení přílohy ke znalosti. Tento příkaz má stejnou funkci jako tlačítko <em>Přidat přílohu</em>. ve formuláři.</li>
            <li><strong>Přiřadit ke službám</strong> - přiřadí znalost ke službám. Tento příkaz má stejnou funkci jako tlačítko <em>Znalost přiřazena službám - upravit</em>. ve formuláři.</li>
        </ul>
        </li>
        <li><strong>Název</strong> - zadejte krátký název znalosti, který se bude zobrazovat jako nadpis.</li>
        <li><strong>Anotace</strong> - stručně shrňte obsah znalosti. Tento text se zobrazí pod názvem.</li>
        <li><strong>Text</strong> - popište postup nebo vytvořte potřebný článek.</li>
        <li><strong>Přílohy</strong> - seznam příloh ke znalosti<ul>
            <li><strong>Přidat přílohu</strong> - vyberte soubor, který chcete přidat jako přílohu. Soubory můžete připojit také přetažením do formuláře.</li>
        </ul>
        </li>
        <li><strong>Znalost přiřazena ke službám</strong> - zkrácený seznam služeb, ke kterým je znalost přiřazena.<ul>
            <li><strong>Upravit</strong> - v tabulce služeb vyberte služby, ke kterým chcete znalost přiřadit.</li>
        </ul>
        </li>
        <li><strong>Zobrazit žadatelům</strong> - zapněte, pokud chcete, aby byly znalosti viditelné pro žadatele příslušných služeb. Pokud je vypnuto, zobrazení znalostí se řídí <a href="../../../../alvao-service-desk/knowledge-base">oprávněními ke znalostem</a>.</li>
        <li><strong>Pořadí zobrazení</strong> - zadejte číselnou hodnotu, která určuje pořadí, v jakém se znalosti zobrazují v seznamech. Znalosti se zobrazují ve vzestupném pořadí podle hodnoty v této položce. 
            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                Použijte jednotnou stupnici hodnot pro všechny služby, např. 5 = často používané znalosti (FAQ), 10 = běžné znalosti, 15 = málo používané znalosti. Tím zajistíte správné pořadí zobrazení znalostí z různých služeb       </div>
            <div class="tip">
               <div class="icon"></div>
                <div class="title">Tip:</div>
                V názvu, anotaci a textu znalosti používejte slova, podle kterých vaši uživatelé znalosti skutečně vyhledávají. Statistiky vyhledávání naleznete v <a href="../../../../alvao-service-desk/evaluation-of-system-operation/data-analysis">analýze dat</a> na listu <em>Vyhledávání</em>           </div>

        </li>
    </ul>

</asp:Content>
