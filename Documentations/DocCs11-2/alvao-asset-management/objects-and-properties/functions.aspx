<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Funkce</h1>

    <h2>Celkem</h2>

    <p>Funkce Součet slouží k sečtení číselných hodnot vybrané vlastnosti pro sadu objektů. Množina obsahuje objekty z vybraného podstromu objektů.</p>
    <p>
       <strong>Průběh výpočtu:</strong><br />
        Funkce kontroluje objekty z nejnižší úrovně v každé větvi vybraného podstromu objektů. Když narazí na první objekt v dané větvi s hledanou vlastností, přičte hodnotu vlastnosti k celkovému výsledku. Nepočítá již všechny nadřazené objekty k tomuto objektu v dané větvi    </p>
    <p>
       <strong>Doporučený způsob uspořádání objektů:</strong><br />
        Všechny objekty, jejichž vlastnosti chcete přidat, umístěte ve stromu na stejnou úroveň pod nadřazený objekt    </p>
   <img src="tree_soucet2.png" alt="System Architecture" />
    <div class="caution">
        <div class="title">Příklad:</div>
    </div>
    <p>Součet cen všech komponent pod vybranou sestavou.</p>
   <img src="tree_soucet1.png" alt="System Architecture" />
    <p>V celkové ceně jsou zahrnuty následující položky:</p>
    <ul>
        <li>Pevný disk typ 110</li>
        <li>Základní deska 110</li>
        <li>Monitor 1000</li>
    </ul>
    <p>Výsledná hodnota bude 1220.</p>
    <p>
       <strong>Poznámka:</strong><br />
        Funkce vypočítá součet i pro nečíselné hodnoty nebo např. telefonní čísla, kde výsledek nemá smysl. Nečíselná hodnota se převede na 0, takže neovlivní součet ostatních hodnot, ale tím sčítání v této větvi podstromu končí. To znamená, že funkce může v tomto případě vrátit nežádoucí výsledek.<br />
        Formát čísla nepodporuje oddělovač tisíců. Jako oddělovač desetinných míst použijte čárku nebo tečku [,.] </p>


</asp:Content>
